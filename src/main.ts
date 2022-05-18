import { HttpAdapterHost, NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { AllExceptionsFilter } from './exception/httpExceprion.filter';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  //异常过滤器 捕获异常并处理
  app.useGlobalFilters(new AllExceptionsFilter());
  await app.listen(8888);
}
bootstrap();
