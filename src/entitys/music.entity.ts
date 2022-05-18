import {
  Column,
  ForeignKey,
  Model,
  PrimaryKey,
  Table,
} from 'sequelize-typescript';
import { Album } from './album.entity';

@Table({
  timestamps: true,
  freezeTableName: true,
  tableName: 'music',
  paranoid: true, // deletedAt not null
  underscored: true, //先将firstName 转成first_name再去数据库进行映射(数据库也要first_name)
})
export class Music extends Model<Music> {
  @PrimaryKey
  @Column
  id: number;
  @Column
  playVolume: string;
  @Column
  title: string;
  @Column
  duration: number;
  @ForeignKey(() => Album)
  @Column
  albumId: number;
  @Column
  soundUrl: string;
}
