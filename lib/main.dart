import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './ui/shared/app_theme.dart';
import './ui/shared/size_fit.dart';
import './core/route/router.dart';
import 'core/viewmodel/favor_view_model.dart';
import 'core/viewmodel/filter_view_model.dart';
import 'core/viewmodel/meal_view_model.dart';

void main() {
  // Provider -> ViewModel/Provider/Consumer(Selector)
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx) => HYFilterViewModel()),
      ChangeNotifierProxyProvider<HYFilterViewModel, HYMealViewModel>(
        create: (ctx) => HYMealViewModel(),
        update: (ctx, filterVM, mealVM) {
          mealVM.updateFilters(filterVM);
          return mealVM;
        },
      ),
      ChangeNotifierProxyProvider<HYFilterViewModel, HYFavorViewModel>(
        create: (ctx) => HYFavorViewModel(),
        update: (ctx, filterVM, favorVM) {
          favorVM.updateFilters(filterVM);
          return favorVM;
        },
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 对HYSizeFit进行初始化
    HYSizeFit.initialize();

    return MaterialApp(
      title: '美食廣場',
      // 主题
      theme: HYAppTheme.norTheme,
      // 路由
      initialRoute: HYRouter.initialRoute,
      routes: HYRouter.routes,
      onGenerateRoute: HYRouter.generateRoute,
      onUnknownRoute: HYRouter.unknownRoute,
    );
  }
}
