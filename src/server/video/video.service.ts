import { Video } from '@/entitys/video.entity';
import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/sequelize';
import {
  BusinessProcessingFailedException,
  Success,
} from 'exception/exception';
import { CreateVideoDto } from './dto/create-video.dto';
import { UpdateVideoDto } from './dto/update-video.dto';
import { mv_exclusive_rcmd, mv_url } from 'NeteaseCloudMusicApi';

@Injectable()
export class VideoService {
  constructor(
    @InjectModel(Video)
    private videoModel: typeof Video,
  ) {}
  create(createVideoDto: CreateVideoDto) {
    return 'This action adds a new video';
  }

  async findAll() {
    // const data = await this.videoModel.findAll({ raw: true });
    // return Success({ list: data });
    const results = [];
    const data = await mv_exclusive_rcmd({ limit: 5 });
    if (data.status === 200) {
      const mvs: any = data.body.data;
      for (const mv of mvs) {
        const mvUrl: any = await mv_url({ id: mv.id });
        const url = mvUrl.body.data;
        const result = {};
        result['id'] = url.id;
        result['title'] = mv.name;
        result['videoUrl'] = url.url.replace('http', 'https');
        results.push(result);
      }
    } else {
      throw new BusinessProcessingFailedException('获取数据失败');
    }
    return Success({ list: results });
  }

  findOne(id: number) {
    return `This action returns a #${id} video`;
  }

  update(id: number, updateVideoDto: UpdateVideoDto) {
    return `This action updates a #${id} video`;
  }

  remove(id: number) {
    return `This action removes a #${id} video`;
  }
}
