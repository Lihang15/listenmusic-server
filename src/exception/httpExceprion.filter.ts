import {
  ExceptionFilter,
  Catch,
  ArgumentsHost,
  HttpException,
  HttpStatus,
} from '@nestjs/common';

//拦截所有异常 处理
@Catch()
export class AllExceptionsFilter implements ExceptionFilter {
  catch(exception: unknown, host: ArgumentsHost) {
    const ctx = host.switchToHttp();
    const response = ctx.getResponse();
    console.log(exception);
    if (exception instanceof HttpException) {
      const status =
        exception instanceof HttpException
          ? exception.getStatus()
          : HttpStatus.INTERNAL_SERVER_ERROR;
      if (status === 400) {
        response.status(status).json({
          code: 400,
          message: exception.getResponse()['message']
            ? exception.getResponse()['message']
            : '',
        });
      } else {
        const exceptionMessage =
          exception instanceof HttpException ? exception.getResponse() : {};
        response.status(status).json(exceptionMessage);
      }
    } else {
      console.log(exception);
      response.status(500).json({ code: 500, message: 'server error' });
    }
  }
}
