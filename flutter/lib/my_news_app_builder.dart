import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:my_news/features/authentication/authentication.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_news/features/home/data/repo/home_repository.dart';
import 'package:my_news/features/home/presentation/pages/home_page.dart';
import 'package:my_news/features/search/blocs/search_cubit.dart';
import 'package:my_news/features/search/data/repo/search_repo.dart';
import 'package:my_news/features/settings/blocs/setting_cubit.dart';

import 'configurations/configurations.dart';
import 'features/app/presentation/builders/app_responsive_layout_builder.dart';
import 'features/authentication/data/repo/auth_repo.dart';
import 'features/favorites/cubit/favorite_cubit.dart';
import 'features/favorites/data/repo/favorite_repo.dart';
import 'features/home/blocs/home_cubit.dart';
import 'features/news/cuibt/news_cubit.dart';
import 'features/news/data/repo/news_repo.dart';
import 'features/settings/data/repos/settings_repo.dart';

class NBSAppBuilder extends AppBuilder {
  NBSAppBuilder({
    super.key,
    super.onDispose,
    required AppRouter appRouter,
    required AppLinksRepository appLinksRepository,
    final String? initialDeepLink,
  }) : super(
          onInitState: (context) {},
          repositoryProviders: [
            RepositoryProvider<AppLinksRepository>.value(
              value: appLinksRepository,
            ),
            RepositoryProvider<SettingsRepo>.value(value: SettingsRepo()),
            RepositoryProvider<AuthRepo>.value(value: AuthRepo()),
            RepositoryProvider<HomeRepository>.value(
              value: HomeRepository(),
            ),
            RepositoryProvider<SearchRepo>.value(value: SearchRepo()),
            RepositoryProvider<FavoriteRepo>.value(value: FavoriteRepo()),
            RepositoryProvider<NewsRepository>.value(value: NewsRepository()),
          ],
          providers: [
            BlocProvider<AppCubit>(
              create: (context) => AppCubit.instance,
            ),
            BlocProvider<SettingCubit>(
              create: (context) => SettingCubit.instance,
            ),
            BlocProvider<AuthCubit>(
              create: (context) => AuthCubit.instance,
              lazy: false,
            ),
            BlocProvider<AppLinksCubit>(
              create: (context) => AppLinksCubit(
                null,
                context.read<AppLinksRepository>(),
              ),
              lazy: false,
            ),
            BlocProvider<NewsCubit>(
              create: (context) => NewsCubit(
                context.read<NewsRepository>(),
              ),
            ),
            BlocProvider<HomeCubit>(
                create: (context) =>
                    HomeCubit(context.read<HomeRepository>())..getNews()),
            BlocProvider<SearchCubit>(
                create: (context) => SearchCubit(context.read<SearchRepo>())),
            BlocProvider<FavoriteCubit>(create: (context) => FavoriteCubit(context.read<FavoriteRepo>())..getFavorites()),
          ],
          builder: (context) => LoginListenerWrapper(
            initialUser: context.read<AuthCubit>().state.user,
            onLogin: (context, user) {
              ///For performing tasks after login
            },
            onLogout: (context) {
              ///For performing tasks after logout
            },
            child: AppCubitConsumer(
              listenWhen: (previous, current) =>
                  previous.environment != current.environment,
              listener: (context, state) async {},
              builder: (context, appState) {
                return MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  scaffoldMessengerKey:
                      DjangoflowAppSnackbar.scaffoldMessengerKey,
                  title: appTitle,
                  routeInformationParser: RouteParser(
                    appRouter.matcher,
                    includePrefixMatches: true,
                  ),
                  theme: AppTheme.light,
                  darkTheme: AppTheme.dark,
                  themeMode: appState.themeMode,
                  locale: Locale(appState.locale, ''),
                  supportedLocales: const [
                    Locale('en', ''),
                  ],
                  localizationsDelegates: const [
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  routerDelegate: appRouter.delegate(
                    deepLinkBuilder: (_) {
                      return initialDeepLink != null
                          ? DeepLink.path(initialDeepLink)
                          : const DeepLink([HomeRoute()]);
                    },
                    // List of global navigation obsersers here
                    // SentryNavigationObserver
                    // navigatorObservers: () => {RouteObserver()},
                  ),
                  builder: (context, child) {
                    return AppResponsiveLayoutBuilder(
                      child: SandboxBanner(
                        isSandbox:
                            appState.environment == AppEnvironment.sandbox,
                        child: child != null
                            ? kIsWeb
                                ? child
                                : AppLinksCubitListener(
                                    listenWhen: (previous, current) =>
                                        current != null,
                                    listener: (context, appLink) {
                                      final path = appLink?.path;
                                      if (path != null) {
                                        appRouter.navigateNamed(
                                          path,
                                          onFailure: (failure) {
                                            appRouter.navigate(
                                              const HomeRoute(),
                                            );
                                          },
                                        );
                                      }
                                    },
                                    child: child,
                                  )
                            : Container(
                                width: double.infinity,
                                height: double.infinity,
                                color: Colors.red,
                              ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
}
