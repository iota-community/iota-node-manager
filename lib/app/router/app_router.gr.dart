// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../pages/explorer/explorer.dart' as _i10;
import '../../pages/explorer/view/milestone_detail_page.dart' as _i11;
import '../../pages/home/home.dart' as _i6;
import '../../pages/landing_page/landing_page.dart' as _i4;
import '../../pages/nodes/add_node/add_node_scaffold.dart' as _i8;
import '../../pages/nodes/edit_node/edit_node.dart' as _i9;
import '../../pages/nodes/nodes.dart' as _i7;
import '../app_wrapper_page.dart' as _i3;
import '../node_wrapper/node_wrapper_page.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AppWrapperRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.AppWrapperPage();
        }),
    LandingRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.LandingPage();
        }),
    NodeWrapperRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.NodeWrapperPage();
        }),
    HomeRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    ExplorerRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.HomePage();
        }),
    NodesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.NodesPage();
        }),
    AddNodeScaffoldRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.AddNodeScaffoldPage();
        }),
    EditNodeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<EditNodeRouteArgs>(
              orElse: () =>
                  EditNodeRouteArgs(uuid: pathParams.getString('uuid')));
          return _i9.EditNodePage(key: args.key, uuid: args.uuid);
        }),
    ExplorerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.ExplorerPage();
        }),
    MileStoneDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<MileStoneDetailRouteArgs>(
              orElse: () => MileStoneDetailRouteArgs(
                  messageId: pathParams.getString('messageId')));
          return _i11.MileStoneDetailPage(
              key: args.key, messageId: args.messageId);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AppWrapperRoute.name, path: '/'),
        _i1.RouteConfig(LandingRoute.name, path: '/add'),
        _i1.RouteConfig(NodeWrapperRoute.name, path: '/node', children: [
          _i1.RouteConfig(HomeRouter.name, path: 'home', children: [
            _i1.RouteConfig(HomeRoute.name, path: ''),
            _i1.RouteConfig(NodesRoute.name, path: 'list'),
            _i1.RouteConfig(AddNodeScaffoldRoute.name, path: 'add'),
            _i1.RouteConfig(EditNodeRoute.name, path: 'edit/:uuid'),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i1.RouteConfig(ExplorerRouter.name, path: 'explorer', children: [
            _i1.RouteConfig(ExplorerRoute.name, path: ''),
            _i1.RouteConfig(MileStoneDetailRoute.name,
                path: 'milestone/:messageId'),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ])
        ]),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class AppWrapperRoute extends _i1.PageRouteInfo {
  const AppWrapperRoute() : super(name, path: '/');

  static const String name = 'AppWrapperRoute';
}

class LandingRoute extends _i1.PageRouteInfo {
  const LandingRoute() : super(name, path: '/add');

  static const String name = 'LandingRoute';
}

class NodeWrapperRoute extends _i1.PageRouteInfo {
  const NodeWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/node', initialChildren: children);

  static const String name = 'NodeWrapperRoute';
}

class HomeRouter extends _i1.PageRouteInfo {
  const HomeRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

class ExplorerRouter extends _i1.PageRouteInfo {
  const ExplorerRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'explorer', initialChildren: children);

  static const String name = 'ExplorerRouter';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

class NodesRoute extends _i1.PageRouteInfo {
  const NodesRoute() : super(name, path: 'list');

  static const String name = 'NodesRoute';
}

class AddNodeScaffoldRoute extends _i1.PageRouteInfo {
  const AddNodeScaffoldRoute() : super(name, path: 'add');

  static const String name = 'AddNodeScaffoldRoute';
}

class EditNodeRoute extends _i1.PageRouteInfo<EditNodeRouteArgs> {
  EditNodeRoute({_i2.Key? key, required String uuid})
      : super(name,
            path: 'edit/:uuid',
            args: EditNodeRouteArgs(key: key, uuid: uuid),
            rawPathParams: {'uuid': uuid});

  static const String name = 'EditNodeRoute';
}

class EditNodeRouteArgs {
  const EditNodeRouteArgs({this.key, required this.uuid});

  final _i2.Key? key;

  final String uuid;
}

class ExplorerRoute extends _i1.PageRouteInfo {
  const ExplorerRoute() : super(name, path: '');

  static const String name = 'ExplorerRoute';
}

class MileStoneDetailRoute extends _i1.PageRouteInfo<MileStoneDetailRouteArgs> {
  MileStoneDetailRoute({_i2.Key? key, required String messageId})
      : super(name,
            path: 'milestone/:messageId',
            args: MileStoneDetailRouteArgs(key: key, messageId: messageId),
            rawPathParams: {'messageId': messageId});

  static const String name = 'MileStoneDetailRoute';
}

class MileStoneDetailRouteArgs {
  const MileStoneDetailRouteArgs({this.key, required this.messageId});

  final _i2.Key? key;

  final String messageId;
}
