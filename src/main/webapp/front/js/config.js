
var projectName = '毕业论文答辩管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
]


var indexNav = [

{
	name: '课题信息',
	url: './pages/ketixinxi/list.html'
}, 
{
	name: '答辩通知',
	url: './pages/dabiantongzhi/list.html'
}, 

{
	name: '校园公告',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/ssmt9g58/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"教师","menuJump":"列表","tableName":"jiaoshi"}],"menu":"教师管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"课题信息","menuJump":"列表","tableName":"ketixinxi"}],"menu":"课题信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"选题信息","menuJump":"列表","tableName":"xuantixinxi"}],"menu":"选题信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"论文信息","menuJump":"列表","tableName":"lunwenxinxi"}],"menu":"论文信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"论文评分","menuJump":"列表","tableName":"lunwenpingfen"}],"menu":"论文评分管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"答辩通知","menuJump":"列表","tableName":"dabiantongzhi"}],"menu":"答辩通知管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"成绩评定","menuJump":"列表","tableName":"chengjipingding"}],"menu":"成绩评定管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"校园公告","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","选题"],"menu":"课题信息列表","menuJump":"列表","tableName":"ketixinxi"}],"menu":"课题信息模块"},{"child":[{"buttons":["查看"],"menu":"答辩通知列表","menuJump":"列表","tableName":"dabiantongzhi"}],"menu":"答辩通知模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","修改","删除","论文"],"menu":"选题信息","menuJump":"列表","tableName":"xuantixinxi"}],"menu":"选题信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"论文信息","menuJump":"列表","tableName":"lunwenxinxi"}],"menu":"论文信息管理"},{"child":[{"buttons":["查看"],"menu":"论文评分","menuJump":"列表","tableName":"lunwenpingfen"}],"menu":"论文评分管理"},{"child":[{"buttons":["查看"],"menu":"成绩评定","menuJump":"列表","tableName":"chengjipingding"}],"menu":"成绩评定管理"}],"frontMenu":[{"child":[{"buttons":["查看","选题"],"menu":"课题信息列表","menuJump":"列表","tableName":"ketixinxi"}],"menu":"课题信息模块"},{"child":[{"buttons":["查看"],"menu":"答辩通知列表","menuJump":"列表","tableName":"dabiantongzhi"}],"menu":"答辩通知模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"课题信息","menuJump":"列表","tableName":"ketixinxi"}],"menu":"课题信息管理"},{"child":[{"buttons":["查看","修改","删除","审核","成绩"],"menu":"选题信息","menuJump":"列表","tableName":"xuantixinxi"}],"menu":"选题信息管理"},{"child":[{"buttons":["查看","修改","删除","审核","评分"],"menu":"论文信息","menuJump":"列表","tableName":"lunwenxinxi"}],"menu":"论文信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"论文评分","menuJump":"列表","tableName":"lunwenpingfen"}],"menu":"论文评分管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"答辩通知","menuJump":"列表","tableName":"dabiantongzhi"}],"menu":"答辩通知管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"成绩评定","menuJump":"列表","tableName":"chengjipingding"}],"menu":"成绩评定管理"}],"frontMenu":[{"child":[{"buttons":["查看","选题"],"menu":"课题信息列表","menuJump":"列表","tableName":"ketixinxi"}],"menu":"课题信息模块"},{"child":[{"buttons":["查看"],"menu":"答辩通知列表","menuJump":"列表","tableName":"dabiantongzhi"}],"menu":"答辩通知模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"教师","tableName":"jiaoshi"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
