// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'app/cubit/node_cubit.dart' as _i14;
import 'endpoints/hornet/hornet_node_dio_rest_client.dart' as _i7;
import 'endpoints/hornet/hornet_node_rest_client.dart' as _i6;
import 'models/database/hornet_node.dart' as _i4;
import 'pages/add_node/cubit/add_node_cubit.dart' as _i9;
import 'pages/explorer/cubit/milestones_cubit.dart' as _i13;
import 'pages/home/cubit/health_cubit.dart' as _i11;
import 'pages/home/cubit/info_cubit.dart' as _i12;
import 'pages/nodes/edit_node/cubit/edit_node_cubit.dart' as _i10;
import 'register_module.dart' as _i15;
import 'repository/node_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveModule = _$HiveModule();
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Box<List<dynamic>>>(() => hiveModule.nodesBox,
      instanceName: 'nodes');
  gh.lazySingleton<_i3.Box<_i4.HornetNode>>(() => hiveModule.selectedNodeBox,
      instanceName: 'selectedNode');
  gh.lazySingleton<_i3.Box<dynamic>>(() => hiveModule.darkModeBox,
      instanceName: 'darkMode');
  gh.lazySingleton<_i5.Dio>(() => registerModule.dio());
  gh.lazySingleton<_i6.HornetNodeRestClient>(
      () => _i7.HornetNodeDioRestClientImpl(get<_i5.Dio>()));
  gh.factory<_i8.NodeRepository>(() => _i8.NodeRepositoryHiveImpl(
      get<_i3.Box<List<dynamic>>>(instanceName: 'nodes'),
      get<_i3.Box<_i4.HornetNode>>(instanceName: 'selectedNode')));
  gh.factory<_i9.AddNoteCubit>(
      () => _i9.AddNoteCubit(get<_i8.NodeRepository>()));
  gh.factory<_i10.EditNodeCubit>(
      () => _i10.EditNodeCubit(get<_i8.NodeRepository>()));
  gh.factory<_i11.HealthCubit>(() => _i11.HealthCubit(
      get<_i6.HornetNodeRestClient>(), get<_i8.NodeRepository>()));
  gh.factory<_i12.InfoCubit>(() => _i12.InfoCubit(
      get<_i6.HornetNodeRestClient>(), get<_i8.NodeRepository>()));
  gh.factory<_i13.MilestonesCubit>(() => _i13.MilestonesCubit(
      get<_i6.HornetNodeRestClient>(), get<_i8.NodeRepository>()));
  gh.factory<_i14.NodeCubit>(() => _i14.NodeCubit(get<_i8.NodeRepository>()));
  return get;
}

class _$HiveModule extends _i15.HiveModule {}

class _$RegisterModule extends _i15.RegisterModule {}
