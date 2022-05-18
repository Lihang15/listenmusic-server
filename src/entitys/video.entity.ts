import { Column, Model, PrimaryKey, Table } from 'sequelize-typescript';

@Table({
  timestamps: true,
  freezeTableName: true,
  tableName: 'video',
  paranoid: true, // deletedAt not null
  underscored: true, //先将firstName 转成first_name再去数据库进行映射(数据库也要first_name)
})
export class Video extends Model<Video> {
  @PrimaryKey
  @Column
  id: number;
  @Column
  title: string;
  @Column
  videoUrl: string;
}
