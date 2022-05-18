import { Module } from '@nestjs/common';
import { VideoService } from './video.service';
import { VideoController } from './video.controller';
import { SequelizeModule } from '@nestjs/sequelize';
import { Video } from '@/entitys/video.entity';

@Module({
  controllers: [VideoController],
  providers: [VideoService],
  imports: [SequelizeModule.forFeature([Video])],
})
export class VideoModule {}
