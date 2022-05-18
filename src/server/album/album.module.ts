import { Module } from '@nestjs/common';
import { AlbumService } from './album.service';
import { AlbumController } from './album.controller';
import { SequelizeModule } from '@nestjs/sequelize';
import { Album } from '@/entitys/album.entity';
import { Music } from '@/entitys/music.entity';

@Module({
  controllers: [AlbumController],
  providers: [AlbumService],
  imports: [SequelizeModule.forFeature([Album, Music])],
})
export class AlbumModule {}
