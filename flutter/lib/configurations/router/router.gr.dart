// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:my_news/features/app/data/enums/sortby.dart' as _i15;
import 'package:my_news/features/app/data/models/filter_model.dart' as _i14;
import 'package:my_news/features/app/data/models/news_model.dart' as _i16;
import 'package:my_news/features/app/presentation/pages/app_home_page.dart'
    deferred as _i1;
import 'package:my_news/features/app/presentation/pages/filter_bottom_sheet.dart'
    deferred as _i2;
import 'package:my_news/features/app/presentation/pages/unknown_page.dart'
    deferred as _i11;
import 'package:my_news/features/app/presentation/widgets/filter_sort_by.dart'
    deferred as _i4;
import 'package:my_news/features/authentication/presentation/pages/login_page.dart'
    deferred as _i6;
import 'package:my_news/features/authentication/presentation/pages/login_router_page.dart'
    deferred as _i7;
import 'package:my_news/features/favorites/presentation/pages/favorite_page.dart'
    deferred as _i3;
import 'package:my_news/features/home/presentation/pages/home_page.dart'
    deferred as _i5;
import 'package:my_news/features/news/presentation/pages/news_detail_page.dart'
    deferred as _i8;
import 'package:my_news/features/search/presentation/pages/scrolling_page.dart'
    deferred as _i9;
import 'package:my_news/features/settings/presentation/pages/settings_page.dart'
    deferred as _i10;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AppHomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i1.loadLibrary,
          () => _i12.WrappedRoute(child: _i1.AppHomePage()),
        ),
      );
    },
    CasesFilterDialogRoute.name: (routeData) {
      final args = routeData.argsAs<CasesFilterDialogRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.CasesFilterDialogPage(
            key: args.key,
            filterModel: args.filterModel,
            onApplyFilter: args.onApplyFilter,
          ),
        ),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.FavoritePage(),
        ),
      );
    },
    FilterSortByRoute.name: (routeData) {
      final args = routeData.argsAs<FilterSortByRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.FilterSortByPage(
            key: args.key,
            onChange: args.onChange,
            initialSortBy: args.initialSortBy,
            initialSortByType: args.initialSortByType,
          ),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.HomePage(),
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.LoginPage(),
        ),
      );
    },
    LoginRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i7.loadLibrary,
          () => _i7.LoginRouterPage(),
        ),
      );
    },
    NewsDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailsRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i8.loadLibrary,
          () => _i8.NewsDetailsPage(
            key: args.key,
            news: args.news,
          ),
        ),
      );
    },
    ScrollingRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.ScrollingPage(),
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i10.loadLibrary,
          () => _i10.SettingsPage(),
        ),
      );
    },
    UnknownRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i11.loadLibrary,
          () => _i11.UnknownPage(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AppHomePage]
class AppHomeRoute extends _i12.PageRouteInfo<void> {
  const AppHomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AppHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppHomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CasesFilterDialogPage]
class CasesFilterDialogRoute
    extends _i12.PageRouteInfo<CasesFilterDialogRouteArgs> {
  CasesFilterDialogRoute({
    _i13.Key? key,
    required _i14.FilterModel filterModel,
    required void Function(_i14.FilterModel) onApplyFilter,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CasesFilterDialogRoute.name,
          args: CasesFilterDialogRouteArgs(
            key: key,
            filterModel: filterModel,
            onApplyFilter: onApplyFilter,
          ),
          initialChildren: children,
        );

  static const String name = 'CasesFilterDialogRoute';

  static const _i12.PageInfo<CasesFilterDialogRouteArgs> page =
      _i12.PageInfo<CasesFilterDialogRouteArgs>(name);
}

class CasesFilterDialogRouteArgs {
  const CasesFilterDialogRouteArgs({
    this.key,
    required this.filterModel,
    required this.onApplyFilter,
  });

  final _i13.Key? key;

  final _i14.FilterModel filterModel;

  final void Function(_i14.FilterModel) onApplyFilter;

  @override
  String toString() {
    return 'CasesFilterDialogRouteArgs{key: $key, filterModel: $filterModel, onApplyFilter: $onApplyFilter}';
  }
}

/// generated route for
/// [_i3.FavoritePage]
class FavoriteRoute extends _i12.PageRouteInfo<void> {
  const FavoriteRoute({List<_i12.PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FilterSortByPage]
class FilterSortByRoute extends _i12.PageRouteInfo<FilterSortByRouteArgs> {
  FilterSortByRoute({
    _i13.Key? key,
    required void Function(
      _i15.SortBy,
      _i15.SortByType,
    ) onChange,
    _i15.SortBy? initialSortBy,
    _i15.SortByType? initialSortByType,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          FilterSortByRoute.name,
          args: FilterSortByRouteArgs(
            key: key,
            onChange: onChange,
            initialSortBy: initialSortBy,
            initialSortByType: initialSortByType,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterSortByRoute';

  static const _i12.PageInfo<FilterSortByRouteArgs> page =
      _i12.PageInfo<FilterSortByRouteArgs>(name);
}

class FilterSortByRouteArgs {
  const FilterSortByRouteArgs({
    this.key,
    required this.onChange,
    this.initialSortBy,
    this.initialSortByType,
  });

  final _i13.Key? key;

  final void Function(
    _i15.SortBy,
    _i15.SortByType,
  ) onChange;

  final _i15.SortBy? initialSortBy;

  final _i15.SortByType? initialSortByType;

  @override
  String toString() {
    return 'FilterSortByRouteArgs{key: $key, onChange: $onChange, initialSortBy: $initialSortBy, initialSortByType: $initialSortByType}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginRouterPage]
class LoginRouter extends _i12.PageRouteInfo<void> {
  const LoginRouter({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NewsDetailsPage]
class NewsDetailsRoute extends _i12.PageRouteInfo<NewsDetailsRouteArgs> {
  NewsDetailsRoute({
    _i13.Key? key,
    required _i16.NewsModel news,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          NewsDetailsRoute.name,
          args: NewsDetailsRouteArgs(
            key: key,
            news: news,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsDetailsRoute';

  static const _i12.PageInfo<NewsDetailsRouteArgs> page =
      _i12.PageInfo<NewsDetailsRouteArgs>(name);
}

class NewsDetailsRouteArgs {
  const NewsDetailsRouteArgs({
    this.key,
    required this.news,
  });

  final _i13.Key? key;

  final _i16.NewsModel news;

  @override
  String toString() {
    return 'NewsDetailsRouteArgs{key: $key, news: $news}';
  }
}

/// generated route for
/// [_i9.ScrollingPage]
class ScrollingRoute extends _i12.PageRouteInfo<void> {
  const ScrollingRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ScrollingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScrollingRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SettingsPage]
class SettingsRoute extends _i12.PageRouteInfo<void> {
  const SettingsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.UnknownPage]
class UnknownRoute extends _i12.PageRouteInfo<void> {
  const UnknownRoute({List<_i12.PageRouteInfo>? children})
      : super(
          UnknownRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnknownRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
