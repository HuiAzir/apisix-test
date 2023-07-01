var Koa = require('koa');
var Router = require('koa-router');

var app = new Koa();
var router = new Router();

router.get('/', (ctx, next) => {
  // ctx.router available
  ctx.body = '首页';
});

router.get('/test', (ctx, next) => {
  // ctx.router available
  ctx.body = 'hello word';
});

app.use(router.routes()).use(router.allowedMethods());

app.listen(4122);
