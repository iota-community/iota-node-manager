// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rx_shared_preferences/rx_shared_preferences.dart' as _i8;

import 'app/cubits/node_cubit/node_cubit.dart' as _i15;
import 'endpoints/hornet/hornet_node_dio_rest_client.dart' as _i7;
import 'endpoints/hornet/hornet_node_rest_client.dart' as _i6;
import 'features/initial_node/cubit/initial_node_cubit.dart' as _i13;
import 'features/node_overview/pages/edit_node/cubit/edit_node_cubit.dart'
    as _i10;
import 'features/node_wrapper/cubits/health_cubit/health_cubit.dart' as _i11;
import 'features/node_wrapper/cubits/info_cubit/info_cubit.dart' as _i12;
import 'features/node_wrapper/cubits/milestones_cubit/milestones_cubit.dart'
    as _i14;
import 'register_module.dart' as _i16;
import 'repository/moor/database.dart' as _i5;
import 'repository/node_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveModule = _$HiveModule();
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Box<dynamic>>(() => hiveModule.darkModeBox,
      instanceName: 'darkMode');
  gh.lazySingleton<_i4.Dio>(() => registerModule.dio());
  gh.lazySingleton<_i5.HornetNodeDB>(() => registerModule.database);
  gh.lazySingleton<_i6.HornetNodeRestClient>(
      () => _i7.HornetNodeDioRestClientImpl(get<_i4.Dio>()));
  gh.lazySingleton<_i8.RxSharedPreferences>(() => registerModule.prefs);
  gh.factory<_i9.NodeRepository>(() => _i9.NodeRepositoryMoorImpl(
      get<_i5.HornetNodeDB>(), get<_i8.RxSharedPreferences>()));
  gh.factory<_i10.EditNodeCubit>(
      () => _i10.EditNodeCubit(get<_i9.NodeRepository>()));
  gh.factory<_i11.HealthCubit>(() => _i11.HealthCubit(
      get<_i6.HornetNodeRestClient>(), get<_i9.NodeRepository>()));
  gh.factory<_i12.InfoCubit>(() => _i12.InfoCubit(
      get<_i6.HornetNodeRestClient>(), get<_i9.NodeRepository>()));
  gh.factory<_i13.InitialNodeCubit>(
      () => _i13.InitialNodeCubit(get<_i9.NodeRepository>()));
  gh.factory<_i14.MilestonesCubit>(() => _i14.MilestonesCubit(
      get<_i6.HornetNodeRestClient>(), get<_i9.NodeRepository>()));
  gh.factory<_i15.NodeCubit>(() => _i15.NodeCubit(get<_i9.NodeRepository>()));
  return get;
}

class _$HiveModule extends _i16.HiveModule {}

class _$RegisterModule extends _i16.RegisterModule {}
