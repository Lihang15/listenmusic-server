import { Controller, Get, Param, Query } from '@nestjs/common';
import { AlbumService } from './album.service';
import { DataNotFoundException } from 'exception/exception';

@Controller('api/album')
export class AlbumController {
  constructor(private readonly albumService: AlbumService) {}
  @Get('carousel')
  //获取每日推荐
  getCarousel() {
    return this.albumService.getCarousel();
  }
  @Get('recommend')
  //获取每日推荐
  findRecommend() {
    return this.albumService.findRecommend();
  }
  @Get('guess')
  //获取猜你喜欢列表
  findGuess() {
    return this.albumService.findGuess();
  }

  @Get('channel')
  //获取首页歌单列表
  findChannel(@Query('pageNo') pageNo, @Query('pageSize') pageSize) {
    return this.albumService.findChannl(
      pageNo ? pageNo : 1,
      pageSize ? pageSize : 10,
    );
  }

  @Get('channel/:id')
  // 获取歌单的全部歌曲
  findOne(@Param('id') id: string) {
    return this.albumService.findAllMusic(+id);
  }
  @Get('channel/music/:id')
  // 获取指定歌曲的url
  findOneMusic(@Param('id') id: string) {
    return this.albumService.findOneMusic(+id);
  }
  @Get('wyy')
  // 获取网易云api数据
  async findWyy() {
    //网友精选歌单 支持分页
    // return await top_playlist({ limit: 10 });
    throw new DataNotFoundException('123');
  }
}
