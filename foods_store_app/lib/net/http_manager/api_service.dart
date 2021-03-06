import 'package:foods_store_app/net/http_manager/net_contants.dart';



final String baseUrl = "https://m.you.163.com/";

final String LOGIN_PAGE_URL = "${baseUrl}login";

///检查登录GET
final String CHECK_LOGIN = "${baseUrl}xhr/common/checklogin.json";

///首页
final String URL_HOME_NEW = "${baseUrl}xhr/index.json";

///分类
final String URL_SORT_NEW = "${baseUrl}item/cateList.json";

///kingkong
final String URL_SORT_LIST_NEW = "${baseUrl}item/list.json";

///kingkong
final String URL_KING_KONG = "${baseUrl}item/list.json";

///kingkong
final String URL_KING_KONG_NO_ID = "${baseUrl}xhr/item/getPreNewItem.json";

///我的信息
final String USER_INFO_ITEMS = "${baseUrl}xhr/user/myFund.json";

///用户信息
final String USER_INFO = "${baseUrl}xhr/user/checkConfig.json";

///订单列表
final String ORDER_LIST = "${baseUrl}xhr/order/getList.json";

///新品
final String ORDER_NEW_ITEM = "${baseUrl}item/newItem.json";

///用户账号相关
final String USER_ALIASINFO = "${baseUrl}xhr/user/aliasInfo.json";

///周六一起拼
final String PIN_GROUP = "${baseUrl}pin/group/item/index";

///周六一起拼数据列表
final String PIN_GROUP_LIST = "${baseUrl}pin/group/item/list";

///地址列表
final String LOCATION_LIST = "${baseUrl}xhr/address/list.json";

///删除地址
final String DELETE_ASSRESS = "${baseUrl}xhr/address/deleteAddress.json";

///省份列表
final String PROVINCE_LIST = "${baseUrl}xhr/address/getProvince.json";

///市列表
final String CITY_LIST = "${baseUrl}xhr/address/getCity.json";

///区列表
final String DIS_LIST = "${baseUrl}xhr/address/getDistrict.json";

///县列表
final String TOWN_LIST = "${baseUrl}xhr/address/getTown.json";

///添加地址
final String ADD_ADDRESS = "${baseUrl}xhr/address/upsertAddress.json";

///二维码
final String QR_CODE = "${baseUrl}xhr/user/qrCode.json";

///个人信息二维码生成（邀请）
final String GET_USER_SPMCINFO = "${baseUrl}xhr/supermc/getUserSpmcInfo.json";

///热销好物
final String REWARD_RCMD = "${baseUrl}xhr/bonus/rcmd.json";

///红包
final String RED_PACKET = "${baseUrl}xhr/redpacket/list.json";

///优惠券
final String COUPON_LIST = "${baseUrl}xhr/coupon/list.json";

///商品详情
final String GOOD_DETAIL = "${baseUrl}item/detail.json";

///购物车
final String SHOPPING_CART = "${baseUrl}xhr/cart/getCarts.json";

///购物车 全选/不选
final String SHOPPING_CART_CHECK = "${baseUrl}xhr/cart/selectAll.json";

///购物车 选/不选
final String SHOPPING_CART_CHECK_ONE = "${baseUrl}xhr/cart/updateCheck.json";

///购物车 选购数量
final String SHOPPING_CART_CHECK_NUM = "${baseUrl}xhr/cart/updateByNum.json";

///热销榜/标题
final String HOT_LIST_CAT = "${baseUrl}item/saleRank.json";

///热销榜/条目
final String HOT_LIST_LIST = "${baseUrl}xhr/item/saleRankItems.json";

///删除订单
final String DELETE_ORDER = "${baseUrl}xhr/order/delete.json";

///购物车 删除商品
final String DELETE_CART = "${baseUrl}xhr/cart/delete.json";

///值得买
final String TOPPIC = "${baseUrl}topic/index.json";

///评论
final String COMMENT_LIST = "${baseUrl}xhr/comment/listByItemByTag.json";

///积分中心
final String POINT_CENTER = "${baseUrl}xhr/points/index.json";

///会员俱乐部
final String VIP_CENTER = "${baseUrl}xhr/membership/indexPrivilege.json";

///加入购物车
final String ADD_CART = "${baseUrl}xhr/cart/add.json";

// ///订单确认界面
// final String ORDER_INIT =
//     "${baseUrl}xhr/order/init.json?csrf_token=$csrf_token";
//
// ///获取用户手机号
// final String USER_MOBILE =
//     "${baseUrl}xhr/feedback/getUserMobile.json?csrf_token=$csrf_token";

///反馈类型
final String FEEDBACK_TYPE = "${baseUrl}xhr/feedback/typeList.json";

// ///反馈提交
// final String FEEDBACK_SUBMIT =
//     "${baseUrl}xhr/feedback/submit.json?csrf_token=$csrf_token";

///模糊搜索
final String SEARCH_TIPS = "${baseUrl}xhr/search/searchAutoComplete.json";

///搜索关键字
final String SEARCH_SEARCH = "${baseUrl}xhr/search/search.json.json";

///搜索初始化
final String SEARCH_INIT = "${baseUrl}xhr/search/init.json";

///值得买列表
final String FIND_REC_AUTO = "${baseUrl}topic/v1/find/recAuto.json";

///值得买头部nav
final String KNOW_NAVWAP = "${baseUrl}topic/v1/know/navWap.json";

///好评率
final String COMMENT_PRAISE = '${baseUrl}xhr/comment/itemGoodRates.json';

///评价tags
final String COMMENT_TAGS = '${baseUrl}xhr/comment/tags.json';

///商品详情下半部分
final String GOOD_DETAIL_DOWN = '${baseUrl}xhr/item/detail.json';

///商品详情推荐
final String WAPITEM_RCMD = '${baseUrl}xhr/wapitem/rcmd.json';

///配送信息
final String WAPITEM_DELIVERY = '${baseUrl}xhr/wapitem/delivery.json';

///购物车换购列表
final String GET_CARTS = '${baseUrl}xhr/cart/getCarts.json';

///购物车换购提交
final String GET_CARTS_SUBMIT = '${baseUrl}xhr/cart/selectAddBuy.json';

///购物车换购提交
final String CLEAR_INVALID_ITEMS = '${baseUrl}xhr/cart/clearInvalidItem.json';

///check-cart
final String CHECK_BEFORE_INIT = '${baseUrl}xhr/order/checkBeforeInit.json';

///手机号状态
final String PHONE_STATUS = '${baseUrl}xhr/userMobile/getStatus.json';

///检查更新
final String CHECK_VERSION = 'https://www.pgyer.com/apiv2/app/check';

///首页弹窗
final String NEW_USER_GIFT = '${baseUrl}xhr/gift/newUserGift/show.json';

///用户信息
final String UCENTER_INFO = '${baseUrl}ucenter/info.json';

///感兴趣分类
final String INTEREST_CATEGORY = '${baseUrl}interestCategory/list.json';

///提交感兴趣分类
final String INTEREST_CATEGORY_UPSERT =
    '${baseUrl}xhr/interestCategory/upsert.json';

///保存个人信息
final String SAVE_USER_INFO = '${baseUrl}xhr/user/saveDetail.json';

///我的尺寸
final String MINE_SIZE = '${baseUrl}xhr/size/list.json';

///添加尺寸
final String ADD_SIZE = '${baseUrl}xhr/size/upsert.json';

///查询尺寸
final String QUERY_SIZE_ID = '${baseUrl}xhr/size/getById.json';

///配送信息
///https://m.you.163.com/xhr/wapitem/delivery.json?csrf_token=2e0f34896f4b94471965dcfb84ecf43a

// https://m.you.163.com/item/newItem.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&__timestamp=1603704250732&

///分类数据
// https://m.you.163.com/item/cateList.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&__timestamp=1603173469343&categoryId=

///kingkong
// https://m.you.163.com/item/list.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&__timestamp=1603334436519&style=pd&categoryId=1005002

// https://m.you.163.com/xhr/user/myFund.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8

///订单列表
// https://m.you.163.com/xhr/order/getList.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&size=10&lastOrderId=0&status=0

///福利社
// https://m.you.163.com/xhr/saleCenter/index.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8

// https://m.you.163.com/xhr/user/aliasInfo.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8

///周六一起拼
// https://m.you.163.com/pin/group/item/index?csrf_token=61f57b79a343933be0cb10aa37a51cc8

///周六一起拼数据列表
// https://m.you.163.com/pin/group/item/list?csrf_token=61f57b79a343933be0cb10aa37a51cc8&tabId=0&page=1&pageSize=10

// https://m.you.163.com/pin/group/item/list?csrf_token=61f57b79a343933be0cb10aa37a51cc8&categoryId=1005000&page=1&pageSize=10

///删除地址
//https://m.you.163.com/xhr/address/deleteAddress.json?csrf_token=f3c512bd7f5e552a9cd72ddacde4ef83&id=85723006
///地址
// https://m.you.163.com/xhr/address/list.json?csrf_token=f3c512bd7f5e552a9cd72ddacde4ef83
///省
// https://m.you.163.com/xhr/address/getProvince.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&withOverseasCountry=true
///市
//https://m.you.163.com/xhr/address/getCity.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&parentId=130000
///区县
//https://m.you.163.com/xhr/address/getDistrict.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&grandParentId=130000&parentId=130100
///街道
//https://m.you.163.com/xhr/address/getTown.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&parentId=130104
///添加地址
//https://m.you.163.com/xhr/address/upsertAddress.json?csrf_token=e0c09646e43d88a4315216febe03ede5
///qrCode
// https://m.you.163.com/xhr/user/qrCode.json?csrf_token=6f1045179c0bd2422d7afc03edac1668

///
//https://m.you.163.com/xhr/supermc/getUserSpmcInfo.json?csrf_token=6f1045179c0bd2422d7afc03edac1668
///热销好物推荐
// https://m.you.163.com/xhr/bonus/rcmd.json?csrf_token=6f1045179c0bd2422d7afc03edac1668
///红包
//https://m.you.163.com/xhr/redpacket/list.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8
///优惠券
//https://m.you.163.com/xhr/coupon/list.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&searchType=3&page=1
///商品详情
//https://m.you.163.com/item/detail.json?id=3986088
///购物车
//https://m.you.163.com/xhr/cart/getCarts.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8
///购物车全选/不选
//https://m.you.163.com/xhr/cart/selectAll.json?csrf_token=36afe4bc43f0ab111759b0ebcbf5a684
///购物车选/不选
//https://m.you.163.com/xhr/cart/updateCheck.json?
///购物车选购数量
//https://m.you.163.com/xhr/cart/updateByNum.json

///热销榜标题
//https://m.you.163.com/item/saleRank.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&__timestamp=1605864254678&categoryId=0&subCategoryId=0
///热销榜条目
//https://m.you.163.com/xhr/item/saleRankItems.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8
///删除订单
//https://m.you.163.com/xhr/order/delete.json?csrf_token=fc5917b2e05041552a566a1f31fab98a&orderId=200124805

///购物车删除商品
//https://m.you.163.com/xhr/cart/delete.json?csrf_token=28f3b8193ba520fc96697b3a214c01bf

///积分中心
//https://m.you.163.com/xhr/points/index.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8

///会员俱乐部
//https://m.you.163.com/xhr/membership/indexPrivilege.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8

///加入购物车
//https://m.you.163.com/xhr/cart/add.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&cnt=1&skuId=3628032

///确认订单
//https://m.you.163.com/xhr/order/init.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8

///检查登录GET
//https://m.you.163.com/xhr/common/checklogin.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8&__timestamp=1610603146879&

///获取手机号
//https://m.you.163.com/xhr/feedback/getUserMobile.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8

///反馈类型
//https://m.you.163.com/xhr/feedback/typeList.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8

///反馈提交
//https://m.you.163.com/xhr/feedback/submit.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8

///获取手机号
// https://m.you.163.com/xhr/userMobile/getStatus.json?csrf_token=61f57b79a343933be0cb10aa37a51cc8

///值得买
//https://m.you.163.com/topic/v1/find/recAuto.json?page=1&size=2&exceptIds=

///值得买头部nav
//https://m.you.163.com/topic/v1/know/navWap.json

//https://m.you.163.com/xhr/address/list.json?csrf_token=2e0f34896f4b94471965dcfb84ecf43a&from=1

///推荐POST
//xhr/wapitem/relatedRcmd.json

///购物车换购列表
//https://m.you.163.com/xhr/cart/getCarts.json?csrf_token=2e0f34896f4b94471965dcfb84ecf43a

///购物车换购提交
//https://m.you.163.com/xhr/cart/selectAddBuy.json?csrf_token=2e0f34896f4b94471965dcfb84ecf43a

///清除无效商品
//https://m.you.163.com/xhr/cart/clearInvalidItem.json?csrf_token=ec9c9ea231479dab33995f908b6f5b50

///check-cart
//https://m.you.163.com/xhr/order/checkBeforeInit.json?csrf_token=ec9c9ea231479dab33995f908b6f5b50

///下单
//https://m.you.163.com/xhr/order/init.json?csrf_token=ec9c9ea231479dab33995f908b6f5b50

///首页弹窗
///https://m.you.163.com/xhr/gift/newUserGift/show.json?csrf_token=7704c0162dd9505942bea22270eefcf8

///搜索init
// https://m.you.163.com/xhr/search/init.json?csrf_token=7704c0162dd9505942bea22270eefcf8

///用户信息 https://m.you.163.com/ucenter/info.json?csrf_token=096738ca74726948ec3693a3034c5c85
//https://m.you.163.com/ucenter/info.json

///感兴趣分类
//https://m.you.163.com/interestCategory/list.json

///提交感兴趣分类
//https://m.you.163.com/xhr/interestCategory/upsert.json?csrf_token=7704c0162dd9505942bea22270eefcf8

///保存个人信息
//https://m.you.163.com/xhr/user/saveDetail.json?csrf_token=7704c0162dd9505942bea22270eefcf8

///我的尺寸
//https://m.you.163.com/xhr/size/list.json?csrf_token=7704c0162dd9505942bea22270eefcf8

///添加尺寸
//https://m.you.163.com/xhr/size/upsert.json?csrf_token=7704c0162dd9505942bea22270eefcf8

///查询尺寸
//https://m.you.163.com/xhr/size/getById.json?csrf_token=7704c0162dd9505942bea22270eefcf8
