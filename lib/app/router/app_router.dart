import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hornet_node/app/app_wrapper_page.dart';
import 'package:hornet_node/features/node_overview/node_overview.dart';
import 'package:hornet_node/features/node_overview/pages/edit_node/edit_node.dart';
import 'package:hornet_node/features/node_wrapper/pages/explorer/explorer.dart';
import 'package:hornet_node/features/node_wrapper/pages/explorer/pages/message/message_page.dart';
import 'package:hornet_node/features/node_wrapper/pages/home/home.dart';
import 'package:hornet_node/features/node_wrapper/pages/peers/pages/detail_peer/view/detail_peer_page.dart';
import 'package:hornet_node/features/node_wrapper/pages/peers/pages/edit_peer/edit_peer.dart';
import 'package:hornet_node/features/node_wrapper/pages/peers/peers.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<CupertinoRoute>(
      path: '/',
      page: AppWrapperPage,
      children: [
        AutoRoute<CupertinoRoute>(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<CupertinoRoute>(
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

        AutoRoute<CupertinoRoute>(
          path: 'explorer',
          name: 'ExplorerRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<CupertinoRoute>(
              path: '',
              page: ExplorerPage,
            ),
            AutoRoute<CupertinoRoute>(path: 'milestone/:messageId', page: MessagePage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute<CupertinoRoute>(
          path: 'peers',
          name: 'PeersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<CupertinoRoute>(
              path: '',
              page: PeersPage,
            ),
            AutoRoute<CupertinoRoute>(
              path: 'edit/:peerId',
              page: EditPeerPage,
            ),
            AutoRoute<CupertinoRoute>(
              path: 'detail/:peerId',
              page: PeerDetailPage,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: '/'),
      ],
    ),
    AutoRoute<CupertinoRoute>(path: '/edit/:uuid', page: EditNodePage, name: 'EditNodeRoute'),
    AutoRoute<CupertinoRoute>(path: '/add', page: EditNodePage, name: 'AddNodeRoute'),
    AutoRoute<CupertinoRoute>(
      path: '/list',
      page: NodeOverviewPage,
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
