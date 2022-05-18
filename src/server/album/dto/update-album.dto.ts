import { PartialType } from '@nestjs/mapped-types';
import { CreateGuessDto } from './create-album.dto';

export class UpdateGuessDto extends PartialType(CreateGuessDto) {}
