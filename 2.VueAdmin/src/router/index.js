	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import qishou from '@/views/qishou/list'
	import shangpinxinxi from '@/views/shangpinxinxi/list'
	import peisongjiedan from '@/views/peisongjiedan/list'
	import peisongdingdan from '@/views/peisongdingdan/list'
	import storeup from '@/views/storeup/list'
	import shangjia from '@/views/shangjia/list'
	import cart from '@/views/cart/list'
	import peisongwancheng from '@/views/peisongwancheng/list'
	import yonghu from '@/views/yonghu/list'
	import shangpinfenlei from '@/views/shangpinfenlei/list'
	import discussshangpinxinxi from '@/views/discussshangpinxinxi/list'
	import orders from '@/views/orders/list'
	import config from '@/views/config/list'
	import shangjiaRegister from '@/views/shangjia/register'
	import shangjiaCenter from '@/views/shangjia/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/shangjiaCenter',
			name: '商家个人中心',
			component: shangjiaCenter
		}
		,{
			path: '/news',
			name: '商品资讯',
			component: news
		}
		,{
			path: '/qishou',
			name: '骑手',
			component: qishou
		}
		,{
			path: '/shangpinxinxi',
			name: '商品信息',
			component: shangpinxinxi
		}
		,{
			path: '/peisongjiedan',
			name: '配送接单',
			component: peisongjiedan
		}
		,{
			path: '/peisongdingdan',
			name: '配送订单',
			component: peisongdingdan
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/shangjia',
			name: '商家',
			component: shangjia
		}
		,{
			path: '/cart',
			name: '购物车',
			component: cart
		}
		,{
			path: '/peisongwancheng',
			name: '配送完成',
			component: peisongwancheng
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/shangpinfenlei',
			name: '商品分类',
			component: shangpinfenlei
		}
		,{
			path: '/discussshangpinxinxi',
			name: '商品信息评论',
			component: discussshangpinxinxi
		}
		,{
			path: '/orders',
			name: '订单管理',
			component: orders
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		]
	},
	{
		path: '/shangjiaRegister',
		name: '商家注册',
		component: shangjiaRegister
	},
	{
		path: '/forget',
		name: 'forget',
		component: () => import('../views/forget.vue')
	}
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
