# listenmusic的后台，listenmusic在该项目同级仓库
1. 服务基于nest.js 版本8.x + mysql + 部分网易云api(地址: https://github.com/Binaryify/NeteaseCloudMusicApi)
2. 项目启动: 进入项目根目录
3. 同步db目录sql脚本到你的mysql数据库(部分功能已经改用网易云api)
4. yarn 安装依赖
5. export NODE_ENV=dev 配置环境
6. yarn start:dev 启动
   