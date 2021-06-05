// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import 'app/cubit/node_cubit.dart' as _i16;
import 'app/initial_node/cubit/initial_node_cubit.dart' as _i14;
import 'endpoints/hornet/hornet_node_dio_rest_client.dart' as _i8;
import 'endpoints/hornet/hornet_node_rest_client.dart' as _i7;
import 'models/database/hornet_node.dart' as _i4;
import 'pages/explorer/cubit/milestones_cubit.dart' as _i15;
import 'pages/home/cubit/health_cubit.dart' as _i12;
import 'pages/home/cubit/info_cubit.dart' as _i13;
import 'pages/nodes/edit_node/cubit/edit_node_cubit.dart' as _i11;
import 'register_module.dart' as _i17;
import 'repository/moor/database.dart' as _i6;
import 'repository/node_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
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
  gh.lazySingleton<_i6.HornetNodeDB>(() => registerModule.database);
  gh.lazySingleton<_i7.HornetNodeRestClient>(
      () => _i8.HornetNodeDioRestClientImpl(get<_i5.Dio>()));
  gh.factory<_i9.NodeRepository>(
      () => _i9.NodeRepositoryMoorImpl(get<_i6.HornetNodeDB>()));
  await gh.factoryAsync<_i10.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i11.EditNodeCubit>(
      () => _i11.EditNodeCubit(get<_i9.NodeRepository>()));
  gh.factory<_i12.HealthCubit>(() => _i12.HealthCubit(
      get<_i7.HornetNodeRestClient>(), get<_i9.NodeRepository>()));
  gh.factory<_i13.InfoCubit>(() => _i13.InfoCubit(
      get<_i7.HornetNodeRestClient>(), get<_i9.NodeRepository>()));
  gh.factory<_i14.InitialNodeCubit>(
      () => _i14.InitialNodeCubit(get<_i9.NodeRepository>()));
  gh.factory<_i15.MilestonesCubit>(() => _i15.MilestonesCubit(
      get<_i7.HornetNodeRestClient>(), get<_i9.NodeRepository>()));
  gh.factory<_i16.NodeCubit>(() => _i16.NodeCubit(get<_i9.NodeRepository>()));
  return get;
}

class _$HiveModule extends _i17.HiveModule {}

class _$RegisterModule extends _i17.RegisterModule {}
