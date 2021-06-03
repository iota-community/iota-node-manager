// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../pages/add_node/add_node.dart' as _i4;
import '../../pages/explorer/explorer.dart' as _i7;
import '../../pages/explorer/view/milestone_detail_page.dart' as _i8;
import '../../pages/home/home.dart' as _i6;
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
    AddNodeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.AddNodePage();
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
    ExplorerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.ExplorerPage();
        }),
    MileStoneDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<MileStoneDetailRouteArgs>(
              orElse: () => MileStoneDetailRouteArgs(
                  messageId: pathParams.getString('messageId')));
          return _i8.MileStoneDetailPage(
              key: args.key, messageId: args.messageId);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AppWrapperRoute.name, path: '/'),
        _i1.RouteConfig(AddNodeRoute.name, path: '/add'),
        _i1.RouteConfig(NodeWrapperRoute.name, path: '/node', children: [
          _i1.RouteConfig(HomeRouter.name, path: 'home', children: [
            _i1.RouteConfig(HomeRoute.name, path: ''),
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

class AddNodeRoute extends _i1.PageRouteInfo {
  const AddNodeRoute() : super(name, path: '/add');

  static const String name = 'AddNodeRoute';
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
