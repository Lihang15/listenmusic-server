import { Classify } from '@/entitys/class.entity';
import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/sequelize';
import { Success } from 'exception/exception';
import { CreateClassifyDto } from './dto/create-classify.dto';
import { UpdateClassifyDto } from './dto/update-classify.dto';

@Injectable()
export class ClassifyService {
  constructor(
    @InjectModel(Classify)
    private classifyModel: typeof Classify,
  ) {}
  create(createClassifyDto: CreateClassifyDto) {
    return 'This action adds a new classify';
  }

  async findAll() {
    const data = await this.classifyModel.findAll({ raw: true });
    return Success(data);
  }

  findOne(id: number) {
    return `This action returns a #${id} classify`;
  }

  update(id: number, updateClassifyDto: UpdateClassifyDto) {
    return `This action updates a #${id} classify`;
  }

  remove(id: number) {
    return `This action removes a #${id} classify`;
  }
}
