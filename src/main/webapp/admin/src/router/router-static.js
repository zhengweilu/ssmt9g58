import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import xuantixinxi from '@/views/modules/xuantixinxi/list'
    import news from '@/views/modules/news/list'
    import ketixinxi from '@/views/modules/ketixinxi/list'
    import dabiantongzhi from '@/views/modules/dabiantongzhi/list'
    import chengjipingding from '@/views/modules/chengjipingding/list'
    import lunwenpingfen from '@/views/modules/lunwenpingfen/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import lunwenxinxi from '@/views/modules/lunwenxinxi/list'
    import jiaoshi from '@/views/modules/jiaoshi/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/xuantixinxi',
        name: '选题信息',
        component: xuantixinxi
      }
          ,{
	path: '/news',
        name: '校园公告',
        component: news
      }
          ,{
	path: '/ketixinxi',
        name: '课题信息',
        component: ketixinxi
      }
          ,{
	path: '/dabiantongzhi',
        name: '答辩通知',
        component: dabiantongzhi
      }
          ,{
	path: '/chengjipingding',
        name: '成绩评定',
        component: chengjipingding
      }
          ,{
	path: '/lunwenpingfen',
        name: '论文评分',
        component: lunwenpingfen
      }
          ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
          ,{
	path: '/lunwenxinxi',
        name: '论文信息',
        component: lunwenxinxi
      }
          ,{
	path: '/jiaoshi',
        name: '教师',
        component: jiaoshi
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
