import { User } from '@/entitys/user.entity';
import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/sequelize';
import { DataNotFoundException, Success } from 'exception/exception';
import { CreateUserDto } from './dto/create-user.dto';
import { Op, fn, col } from 'sequelize';

@Injectable()
export class UserService {
  constructor(
    @InjectModel(User)
    private userModel: typeof User,
  ) {}
  async login(createUserDto: CreateUserDto) {
    const user = await this.userModel.findOne({
      where: {
        [Op.and]: [
          { username: createUserDto.account },
          { password: createUserDto.password },
        ],
      },
      raw: true,
    });
    if (user) {
      console.log(user);
      return Success({ name: user.username, avatar: user.avatar });
    } else {
      return {
        code: 2,
        message: '用户名或者密码错误',
        data: {},
      };
    }
  }
}
