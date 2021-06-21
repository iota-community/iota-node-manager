import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hornet_node/app/app_wrapper_page.dart';
import 'package:hornet_node/features/node_overview/node_overview.dart';
import 'package:hornet_node/features/node_overview/pages/edit_node/edit_node.dart';
import 'package:hornet_node/features/node_wrapper/pages/explorer/explorer.dart';
import 'package:hornet_node/features/node_wrapper/pages/explorer/pages/message/message_page.dart';
import 'package:hornet_node/features/node_wrapper/pages/home/home.dart';
import 'package:hornet_node/features/node_wrapper/pages/peers/peers.dart';

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
        // AutoRoute(
        //   path: 'analytics',
        //   name: 'AnalyticsRouter',
        //   page: EmptyRouterPage,
        //   children: [
        //     AutoRoute(
        //       path: '',
        //       page: AnalyticsPage,
        //     ),
        //     RedirectRoute(path: '*', redirectTo: ''),
        //   ],
        // ),

        AutoRoute(
          path: 'explorer',
          name: 'ExplorerRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: ExplorerPage,
            ),
            AutoRoute(path: 'milestone/:messageId', page: MessagePage),
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
        RedirectRoute(path: '*', redirectTo: '/'),
      ],
    ),
    AutoRoute(path: '/edit/:uuid', page: EditNodePage, name: 'EditNodeRoute'),
    AutoRoute(path: '/add', page: EditNodePage, name: 'AddNodeRoute'),
    AutoRoute(
      path: '/list',
      page: NodeOverviewPage,
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
