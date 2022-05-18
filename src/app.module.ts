import { Module } from '@nestjs/common';
import { SequelizeModule } from '@nestjs/sequelize';
import EnvConfig from '../config/config';
import { User } from './entitys/user.entity';
import { AlbumModule } from './server/album/album.module';
import { Album } from './entitys/album.entity';
import { ClassifyModule } from './server/classify/classify.module';
import { Classify } from './entitys/class.entity';
import { VideoModule } from './server/video/video.module';
import { Video } from './entitys/video.entity';
import { Music } from './entitys/music.entity';
import { UserModule } from './server/user/user.module';

@Module({
  imports: [
    SequelizeModule.forRoot({
      dialect: 'mysql',
      host: EnvConfig.sequelize_datasource_host,
      port: parseInt(EnvConfig.sequelize_datasource_port),
      username: EnvConfig.sequelize_datasource_username,
      password: EnvConfig.sequelize_datasource_password,
      database: EnvConfig.sequelize_datasource_database,
      synchronize:
        EnvConfig.sequelize_datasource_synchronize === 'true' ? true : false,
      models: [User, Album, Classify, Video, Music],
    }),
    AlbumModule,
    ClassifyModule,
    VideoModule,
    UserModule,
  ],
})
export class AppModule {}
