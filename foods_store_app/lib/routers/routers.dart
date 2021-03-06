
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:foods_store_app/home/home_tab_page.dart';
import 'package:foods_store_app/home/webview_page.dart';
import 'package:foods_store_app/routers/i_router.dart';
import 'package:foods_store_app/routers/not_found_page.dart';


class Routes {
  static String home = '/home';
  static String webViewPage = '/webView';

  static final List<IRouterProvider> _listRouter = [];

  static final FluroRouter router = FluroRouter();

  static void initRoutes() {
    /// 指定路由跳转错误返回页
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      debugPrint('未找到目标页');
      return const NotFoundPage();
    });

    router.define(home,
        handler: Handler(
            handlerFunc:
                (BuildContext? context, Map<String, List<String>> params) =>
                     HomePage()));

    router.define(webViewPage, handler: Handler(handlerFunc: (_, params) {
      final String title = params['title']?.first ?? '';
      final String url = params['url']?.first ?? '';
      return WebViewPage(title: title, url: url);
    }));

    _listRouter.clear();

    // /// 各自路由由各自模块管理，统一在此添加初始化
    // _listRouter.add(LoginRouter());
    // _listRouter.add(GuideRouter());
    // _listRouter.add(ProfileRouter());
    // _listRouter.add(SettingRouter());
    // _listRouter.add(SearchRouter());
    // _listRouter.add(FavouritesRouter());
    // _listRouter.add(CompanyRouder());

    /// 初始化路由
    _listRouter.forEach((routerProvider) {
      routerProvider.initRouter(router);
    });
  }
}
