import { Column, Model, PrimaryKey, Table } from 'sequelize-typescript';

@Table({
  timestamps: true,
  freezeTableName: true,
  tableName: 'user',
  paranoid: true, // deletedAt not null
  underscored: true, //先将firstName 转成first_name再去数据库进行映射(数据库也要first_name)
})
export class User extends Model<User> {
  @PrimaryKey
  @Column
  id: number;
  @Column
  username: string;
  @Column
  password: string;
  @Column
  avatar: string;
}
