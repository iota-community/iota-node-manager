import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hornet_node/app/app_wrapper_page.dart';
import 'package:hornet_node/app/node_wrapper/node_wrapper_page.dart';
import 'package:hornet_node/pages/add_node/add_node.dart';
import 'package:hornet_node/pages/explorer/explorer.dart';
import 'package:hornet_node/pages/explorer/view/milestone_detail_page.dart';
import 'package:hornet_node/pages/home/home.dart';
import 'package:hornet_node/pages/landing_page/landing_page.dart';
import 'package:hornet_node/pages/nodes/add_node/add_node_scaffold.dart';
import 'package:hornet_node/pages/nodes/edit_node/edit_node.dart';
import 'package:hornet_node/pages/nodes/nodes.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: AppWrapperPage, children: []),
    AutoRoute(path: '/add', page: LandingPage),
    AutoRoute(
      path: '/node',
      page: NodeWrapperPage,
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
            AutoRoute(
              path: 'list',
              page: NodesPage,
            ),
            AutoRoute(path: 'add', page: AddNodeScaffoldPage),
            AutoRoute(path: 'edit/:uuid', page: EditNodePage),
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
        // AutoRoute(
        //   path: 'peers',
        //   name: 'PeersRouter',
        //   page: EmptyRouterPage,
        //   children: [
        //     AutoRoute(
        //       path: '',
        //       page: PeersPage,
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
            AutoRoute(path: 'milestone/:messageId', page: MileStoneDetailPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
