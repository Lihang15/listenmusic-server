import { HttpException, HttpStatus } from '@nestjs/common';

export enum ErrorCode {
  ParamsExceptionCode = 1, // 参数异常
  DataNotFoundExceptionCode = 2, // 数据不存在
  NoPermissionExceptionCode = 3, // 没有操作权限
  BusinessProcessingFailedExceptionCode = 4, // 业务处理失败
  DataAlreadyExistsExceptionCode = 5, // 数据已存在
}
export class ParamsException extends HttpException {
  constructor(message: string) {
    super({ code: ErrorCode.ParamsExceptionCode, message }, HttpStatus.OK);
  }
}

export class DataNotFoundException extends HttpException {
  constructor(message: string) {
    super(
      { code: ErrorCode.DataNotFoundExceptionCode, message },
      HttpStatus.OK,
    );
  }
}

export class NoPermissionException extends HttpException {
  constructor(message: string) {
    super(
      { code: ErrorCode.NoPermissionExceptionCode, message },
      HttpStatus.OK,
    );
  }
}

export class BusinessProcessingFailedException extends HttpException {
  constructor(message: string) {
    super(
      { code: ErrorCode.BusinessProcessingFailedExceptionCode, message },
      HttpStatus.OK,
    );
  }
}

export class DataAlreadyExistsException extends HttpException {
  constructor(message: string) {
    super(
      { code: ErrorCode.DataAlreadyExistsExceptionCode, message },
      HttpStatus.OK,
    );
  }
}

export function Success(data?: any) {
  if (data) {
    return { message: 'success', code: 0, data };
  }
  return { message: 'success', code: 0 };
}
