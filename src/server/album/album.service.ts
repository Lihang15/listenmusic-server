import { Album } from '@/entitys/album.entity';
import { Music } from '@/entitys/music.entity';
import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/sequelize';
import {
  BusinessProcessingFailedException,
  Success,
} from 'exception/exception';
import { Sequelize } from 'sequelize-typescript';
import { UpdateGuessDto } from './dto/update-album.dto';
import {
  top_playlist,
  playlist_detail,
  playlist_track_all,
  song_url,
  personalized,
  banner,
} from 'NeteaseCloudMusicApi';

@Injectable()
//app首页 歌曲换成网易云音乐api
export class AlbumService {
  constructor(
    private sequelize: Sequelize,
    @InjectModel(Album)
    private albumModel: typeof Album,
    @InjectModel(Music)
    private musicModel: typeof Music,
  ) {}
  // 需要5条数据
  async getCarousel() {
    const data = await banner({ type: 2 });
    const results = [];
    if (data.status === 200) {
      const banners: any = data.body.banners;
      for (let i = 1; i < 6; i++) {
        const banner = banners[i];
        const result: any = {};
        result['image'] = banner.pic.replace('http', 'https');
        if (i == 1 || i == 4) {
          result['colors'] = ['pink', 'pink'];
        } else if (i == 2 || i == 5) {
          result['colors'] = ['pink', 'white'];
        } else {
          result['colors'] = ['white', 'pink'];
        }
        results.push(result);
      }
    } else {
      throw new BusinessProcessingFailedException('获取数据失败');
    }
    return Success(results);
  }
  async findRecommend() {
    // const data = await this.albumModel.findAll({
    //   raw: true,
    //   offset: 0,
    //   limit: 3,
    // });
    // return Success(data);
    const data = await personalized({ limit: 3 });
    const results = [];
    if (data.status === 200) {
      const albums: any = data.body.result;
      console.log(albums);
      if (albums) {
        for (const album of albums) {
          const result: any = {};
          result['id'] = album.id;
          result['image'] = album.picUrl;
          result['title'] = album.name;
          results.push(result);
        }
      }
    } else {
      throw new BusinessProcessingFailedException('获取数据失败');
    }
    return Success(results);
  }
  // 随机给8条数据
  async findGuess() {
    // const rows = await this.albumModel.findAll();
    // const count = rows.length ? rows.length : 0;
    // if (count < 8) {
    //   return Success(rows);
    // }
    // const range = Math.floor(count / 8);
    // let randomCount = Math.floor(Math.random() * (range + 1));
    // if (randomCount === 0) {
    //   randomCount = 1;
    // }
    // const offset = (randomCount - 1) * 8;
    // const data = await this.albumModel.findAll({ raw: true, offset, limit: 8 });
    // return Success(data);

    const data = await personalized({ limit: 100 });
    const results = [];
    if (data.status === 200) {
      const albums: any = data.body.result;
      const arrlength = albums.length;
      for (let i = 0; i < 8; i++) {
        const randomIndex = Math.floor(Math.random() * arrlength);
        const album = albums[randomIndex];
        const result: any = {};
        result['id'] = album.id;
        result['image'] = album.picUrl;
        result['title'] = album.name;
        results.push(result);
      }
    } else {
      throw new BusinessProcessingFailedException('获取数据失败');
    }
    return Success(results);
  }

  //  数据结构{results:[{id,image,title,remark,played,playing}],pagination:{pageNo, pageSize, count, hasMore}}
  async findChannl(pageNo: number, pageSize: number) {
    // const { count, rows } = await this.albumModel.findAndCountAll({
    //   distinct: true, // 去重操作 以主表为准 include的表不算在分页中
    //   offset: (pageNo - 1) * pageSize,
    //   limit: pageSize,
    //   raw: true,
    // });
    // let hasMore = true;
    // if (!rows.length) {
    //   hasMore = false;
    // }
    // return Success({
    //   results: rows,
    //   pagination: { pageNo, pageSize, count, hasMore },
    // });
    const results = [];
    const pagination = {};
    const data = await top_playlist({ offset: pageNo, limit: pageSize });
    if (data.status === 200) {
      const playlists: any = data.body.playlists;
      const map = new Map();
      if (playlists.length > 0) {
        for (const playlist of playlists) {
          const result = {};
          result['id'] = playlist.id;
          result['image'] = playlist.coverImgUrl.replace('http', 'https');
          result['title'] = playlist.name;
          result['remark'] = playlist.description;
          result['played'] = playlist.playCount;
          if (!map.has(playlist.id)) {
            results.push(result);
            map.set(playlist.id, null);
          }
        }
      }
      pagination['pageNo'] = pageNo;
      pagination['pageSize'] = pageSize;
      pagination['hasMore'] = true;
      if (playlists.length <= 0) {
        pagination['hasMore'] = false;
      }
    } else {
      throw new BusinessProcessingFailedException('获取数据失败');
    }
    return Success({
      results,
      pagination,
    });
  }
  // 数据结构 {id,title,summary,thumbnailUrl,instroduction,author:{name,avatar},list:{id,title,playVolume,duration,cteatedAt}[]}
  async findAllMusic(id: number) {
    // const data = await this.albumModel.findOne({
    //   where: {
    //     id,
    //   },
    //   include: [Music],
    // });
    // return Success(data);
    const list = [];
    let title = '';
    let summary = '';
    let thumbnailUrl = '';
    let author = {};
    const data = await playlist_detail({ id });
    if (data.status === 200) {
      const playlist: any = data.body.playlist;
      title = playlist.name;
      summary = playlist.description;
      thumbnailUrl = playlist.subscribers[0].avatarUrl.replace('http', 'https');
      author = {
        name: playlist.subscribers[0].nickname,
        avatar: playlist.subscribers[0].avatarUrl.replace('http', 'https'),
      };
    } else {
      throw new BusinessProcessingFailedException('获取数据失败');
    }
    const albumData = await playlist_track_all({ id });
    if (albumData.status === 200) {
      const musics: any = albumData.body.songs;
      if (musics.length) {
        for (const music of musics) {
          const l = {};
          l['id'] = music.id;
          l['title'] = music.name;
          list.push(l);
        }
      }
    } else {
      throw new BusinessProcessingFailedException('获取数据失败');
    }
    return Success({ title, summary, thumbnailUrl, author, list });
  }
  //  {id soundUrl}
  async findOneMusic(id: number) {
    // const data = await this.musicModel.findOne({
    //   where: {
    //     id,
    //   },
    // });
    // return Success({ id, soundUrl: data.soundUrl });
    const data = await song_url({ id });
    console.log(data);
    if (data.status === 200) {
      const music: any = data.body.data[0];
      return Success({
        id: music.id,
        soundUrl: music.url.replace('http', 'https'),
      });
    } else {
      throw new BusinessProcessingFailedException('获取数据失败');
    }
  }
}
