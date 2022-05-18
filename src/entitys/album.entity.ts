import {
  Column,
  DataType,
  HasMany,
  Model,
  PrimaryKey,
  Table,
} from 'sequelize-typescript';
import { Music } from './music.entity';

@Table({
  timestamps: true,
  freezeTableName: true,
  tableName: 'music_album',
  paranoid: true, // deletedAt not null
  underscored: true, //先将firstName 转成first_name再去数据库进行映射(数据库也要first_name)
})
export class Album extends Model<Album> {
  @PrimaryKey
  @Column
  id: number;
  @Column
  title: string;
  @Column
  image: string;
  @Column
  remark: string;
  @Column
  played: number;
  @Column
  playing: number;
  @Column
  summary: string;
  @Column
  thumbnailUrl: string;
  @Column({
    type: DataType.JSON,
  })
  author: string;
  @Column
  introduction: string;
  @HasMany(() => Music)
  list: Music[];
}
