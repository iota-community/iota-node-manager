// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i11;

import '../../features/node_overview/node_overview.dart' as _i3;
import '../../features/node_overview/pages/edit_node/edit_node.dart' as _i2;
import '../../features/node_wrapper/pages/explorer/explorer.dart' as _i6;
import '../../features/node_wrapper/pages/explorer/pages/message/message_page.dart'
    as _i7;
import '../../features/node_wrapper/pages/home/home.dart' as _i5;
import '../../features/node_wrapper/pages/peers/pages/detail_peer/view/detail_peer_page.dart'
    as _i10;
import '../../features/node_wrapper/pages/peers/pages/edit_peer/edit_peer.dart'
    as _i9;
import '../../features/node_wrapper/pages/peers/peers.dart' as _i8;
import '../app_wrapper_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AppWrapperRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AppWrapperPage());
    },
    EditNodeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditNodeRouteArgs>(
          orElse: () => EditNodeRouteArgs(id: pathParams.optInt('id')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.EditNodePage(key: args.key, id: args.id));
    },
    AddNodeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<AddNodeRouteArgs>(
          orElse: () => AddNodeRouteArgs(id: pathParams.optInt('id')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.EditNodePage(key: args.key, id: args.id));
    },
    NodeOverviewRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NodeOverviewPage());
    },
    HomeRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    ExplorerRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    PeersRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    ExplorerRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ExplorerPage());
    },
    MessageRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MessageRouteArgs>(
          orElse: () =>
              MessageRouteArgs(messageId: pathParams.getString('messageId')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.MessagePage(key: args.key, messageId: args.messageId));
    },
    PeersRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.PeersPage());
    },
    EditPeerRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditPeerRouteArgs>(
          orElse: () => EditPeerRouteArgs(id: pathParams.getString('id')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.EditPeerPage(key: args.key, id: args.id));
    },
    PeerDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PeerDetailRouteArgs>(
          orElse: () =>
              PeerDetailRouteArgs(peerId: pathParams.getString('peerId')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.PeerDetailPage(key: args.key, peerId: args.peerId));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(AppWrapperRoute.name, path: '/', children: [
          _i4.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: AppWrapperRoute.name,
              children: [
                _i4.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeRouter.name),
                _i4.RouteConfig('*#redirect',
                    path: '*',
                    parent: HomeRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i4.RouteConfig(ExplorerRouter.name,
              path: 'explorer',
              parent: AppWrapperRoute.name,
              children: [
                _i4.RouteConfig(ExplorerRoute.name,
                    path: '', parent: ExplorerRouter.name),
                _i4.RouteConfig(MessageRoute.name,
                    path: 'milestone/:messageId', parent: ExplorerRouter.name),
                _i4.RouteConfig('*#redirect',
                    path: '*',
                    parent: ExplorerRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i4.RouteConfig(PeersRouter.name,
              path: 'peers',
              parent: AppWrapperRoute.name,
              children: [
                _i4.RouteConfig(PeersRoute.name,
                    path: '', parent: PeersRouter.name),
                _i4.RouteConfig(EditPeerRoute.name,
                    path: 'edit/:peerId', parent: PeersRouter.name),
                _i4.RouteConfig(PeerDetailRoute.name,
                    path: 'detail/:peerId', parent: PeersRouter.name),
                _i4.RouteConfig('*#redirect',
                    path: '*',
                    parent: PeersRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i4.RouteConfig('*#redirect',
              path: '*',
              parent: AppWrapperRoute.name,
              redirectTo: '/',
              fullMatch: true)
        ]),
        _i4.RouteConfig(EditNodeRoute.name, path: '/edit/:uuid'),
        _i4.RouteConfig(AddNodeRoute.name, path: '/add'),
        _i4.RouteConfig(NodeOverviewRoute.name, path: '/list'),
        _i4.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for [_i1.AppWrapperPage]
class AppWrapperRoute extends _i4.PageRouteInfo<void> {
  const AppWrapperRoute({List<_i4.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'AppWrapperRoute';
}

/// generated route for [_i2.EditNodePage]
class EditNodeRoute extends _i4.PageRouteInfo<EditNodeRouteArgs> {
  EditNodeRoute({_i11.Key? key, int? id})
      : super(name,
            path: '/edit/:uuid',
            args: EditNodeRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'EditNodeRoute';
}

class EditNodeRouteArgs {
  const EditNodeRouteArgs({this.key, this.id});

  final _i11.Key? key;

  final int? id;

  @override
  String toString() {
    return 'EditNodeRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for [_i2.EditNodePage]
class AddNodeRoute extends _i4.PageRouteInfo<AddNodeRouteArgs> {
  AddNodeRoute({_i11.Key? key, int? id})
      : super(name,
            path: '/add',
            args: AddNodeRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'AddNodeRoute';
}

class AddNodeRouteArgs {
  const AddNodeRouteArgs({this.key, this.id});

  final _i11.Key? key;

  final int? id;

  @override
  String toString() {
    return 'AddNodeRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for [_i3.NodeOverviewPage]
class NodeOverviewRoute extends _i4.PageRouteInfo<void> {
  const NodeOverviewRoute() : super(name, path: '/list');

  static const String name = 'NodeOverviewRoute';
}

/// generated route for [_i4.EmptyRouterPage]
class HomeRouter extends _i4.PageRouteInfo<void> {
  const HomeRouter({List<_i4.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i4.EmptyRouterPage]
class ExplorerRouter extends _i4.PageRouteInfo<void> {
  const ExplorerRouter({List<_i4.PageRouteInfo>? children})
      : super(name, path: 'explorer', initialChildren: children);

  static const String name = 'ExplorerRouter';
}

/// generated route for [_i4.EmptyRouterPage]
class PeersRouter extends _i4.PageRouteInfo<void> {
  const PeersRouter({List<_i4.PageRouteInfo>? children})
      : super(name, path: 'peers', initialChildren: children);

  static const String name = 'PeersRouter';
}

/// generated route for [_i5.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for [_i6.ExplorerPage]
class ExplorerRoute extends _i4.PageRouteInfo<void> {
  const ExplorerRoute() : super(name, path: '');

  static const String name = 'ExplorerRoute';
}

/// generated route for [_i7.MessagePage]
class MessageRoute extends _i4.PageRouteInfo<MessageRouteArgs> {
  MessageRoute({_i11.Key? key, required String messageId})
      : super(name,
            path: 'milestone/:messageId',
            args: MessageRouteArgs(key: key, messageId: messageId),
            rawPathParams: {'messageId': messageId});

  static const String name = 'MessageRoute';
}

class MessageRouteArgs {
  const MessageRouteArgs({this.key, required this.messageId});

  final _i11.Key? key;

  final String messageId;

  @override
  String toString() {
    return 'MessageRouteArgs{key: $key, messageId: $messageId}';
  }
}

/// generated route for [_i8.PeersPage]
class PeersRoute extends _i4.PageRouteInfo<void> {
  const PeersRoute() : super(name, path: '');

  static const String name = 'PeersRoute';
}

/// generated route for [_i9.EditPeerPage]
class EditPeerRoute extends _i4.PageRouteInfo<EditPeerRouteArgs> {
  EditPeerRoute({_i11.Key? key, required String id})
      : super(name,
            path: 'edit/:peerId',
            args: EditPeerRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'EditPeerRoute';
}

class EditPeerRouteArgs {
  const EditPeerRouteArgs({this.key, required this.id});

  final _i11.Key? key;

  final String id;

  @override
  String toString() {
    return 'EditPeerRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for [_i10.PeerDetailPage]
class PeerDetailRoute extends _i4.PageRouteInfo<PeerDetailRouteArgs> {
  PeerDetailRoute({_i11.Key? key, required String peerId})
      : super(name,
            path: 'detail/:peerId',
            args: PeerDetailRouteArgs(key: key, peerId: peerId),
            rawPathParams: {'peerId': peerId});

  static const String name = 'PeerDetailRoute';
}

class PeerDetailRouteArgs {
  const PeerDetailRouteArgs({this.key, required this.peerId});

  final _i11.Key? key;

  final String peerId;

  @override
  String toString() {
    return 'PeerDetailRouteArgs{key: $key, peerId: $peerId}';
  }
}
