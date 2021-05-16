// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'endpoints/hornet_node_rest_client.dart' as _i4;
import 'pages/home/cubit/hornet_cubit.dart' as _i5;
import 'register_module.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio());
  gh.lazySingleton<_i4.HornetNodeRestClient>(
      () => _i4.HornetNodeRestClient(get<_i3.Dio>()));
  gh.factory<_i5.HornetCubit>(
      () => _i5.HornetCubit(get<_i4.HornetNodeRestClient>()));
  return get;
}

class _$RegisterModule extends _i6.RegisterModule {}
