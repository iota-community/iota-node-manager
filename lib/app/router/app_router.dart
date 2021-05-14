import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hornet_node/app/app_wrapper_page.dart';
import 'package:hornet_node/pages/analytics/analytics.dart';
import 'package:hornet_node/pages/explorer/explorer.dart';
import 'package:hornet_node/pages/home/home.dart';
import 'package:hornet_node/pages/manage_node/manage_node.dart';
import 'package:hornet_node/pages/peers/peers.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: AppWrapperPage,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HomePage,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'analytics',
          name: 'AnalyticsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: AnalyticsPage,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'peers',
          name: 'PeersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: PeersPage,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'explorer',
          name: 'ExplorerRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: ExplorerPage,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
    AutoRoute(
      path: 'manage_node',
      name: 'ManageNodeRouter',
      page: ManageNodePage,
    )
  ],
)
class $AppRouter {}
