import { Module } from '@nestjs/common';
import { ClassifyService } from './classify.service';
import { ClassifyController } from './classify.controller';
import { Classify } from '@/entitys/class.entity';
import { SequelizeModule } from '@nestjs/sequelize';

@Module({
  controllers: [ClassifyController],
  providers: [ClassifyService],
  imports: [SequelizeModule.forFeature([Classify])],
})
export class ClassifyModule {}
