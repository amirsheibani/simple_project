// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i8;

import '../../../features/myip/data/remote/data_sources/remote_data_sources.dart'
    as _i16;
import '../../../features/myip/data/remote/data_sources/remote_data_sources_impl.dart'
    as _i17;
import '../../../features/myip/data/remote/service/api_service.dart' as _i14;
import '../../../features/myip/data/repository/api_repository_impl.dart'
    as _i20;
import '../../../features/myip/domain/repository/my_ip_repository.dart' as _i19;
import '../../../features/myip/domain/usecase/my_ip_usecase.dart' as _i21;
import '../../../features/myip/presentation/manager/bloc/my_ip_bloc.dart'
    as _i22;
import '../../base/data/local/data_sources/token/token_local_data_source.dart'
    as _i10;
import '../../base/data/local/data_sources/token/token_local_data_source_impl.dart'
    as _i11;
import '../../base/data/repositories/token/token_repository_impl.dart' as _i13;
import '../../base/domain/repositories/token/token_repository.dart' as _i12;
import '../../base/domain/usecase/token/has_token_use_case.dart' as _i15;
import '../../base/domain/usecase/token/reset_token_use_case.dart' as _i18;
import '../../service/internet_connection_checker/internet_connection_checker_cubit.dart'
    as _i6;
import '../../service/language_theme/language_theme_cubit.dart' as _i9;
import '../../uikit/widget/map/manager/map_cubit.dart' as _i7;
import '../local/di/local_module.dart' as _i24;
import '../network/di/network_module.dart' as _i23;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final localModule = _$LocalModule();
  final networkModule = _$NetworkModule();
  gh.singletonAsync<_i3.Box<dynamic>>(() => localModule.box);
  gh.singleton<_i4.Dio>(networkModule.dio);
  gh.lazySingleton<_i5.InternetConnectionChecker>(
      () => networkModule.internetConnectionChecker);
  gh.factory<_i6.InternetConnectionCheckerCubit>(() =>
      _i6.InternetConnectionCheckerCubit(gh<_i5.InternetConnectionChecker>()));
  gh.factory<_i7.MapCubit>(() => _i7.MapCubit());
  gh.singleton<_i8.PrettyDioLogger>(networkModule.prettyDioLogger);
  gh.factory<_i9.ThemeAndLanguageCubit>(() => _i9.ThemeAndLanguageCubit());
  gh.lazySingleton<_i10.TokenLocalDataSource>(
      () => _i11.TokenLocalDataSourceImpl());
  gh.lazySingleton<_i12.TokenRepository>(
      () => _i13.TokenRepositoryImpl(gh<_i10.TokenLocalDataSource>()));
  gh.lazySingleton<_i14.ApiService>(() => _i14.ApiService(gh<_i4.Dio>()));
  gh.lazySingleton<_i15.HasTokenUseCase>(
      () => _i15.HasTokenUseCase(gh<_i12.TokenRepository>()));
  gh.lazySingleton<_i16.IpRemoteDataSource>(
      () => _i17.IpRemoteDataSourceImpl(gh<_i14.ApiService>()));
  gh.lazySingleton<_i18.ResetTokenUseCase>(
      () => _i18.ResetTokenUseCase(gh<_i12.TokenRepository>()));
  gh.lazySingleton<_i19.ApiRepository>(
      () => _i20.ApiRepositoryImpl(gh<_i16.IpRemoteDataSource>()));
  gh.singleton<_i21.MyIPUseCase>(_i21.MyIPUseCase(gh<_i19.ApiRepository>()));
  gh.factory<_i22.MyIpBloc>(() => _i22.MyIpBloc(gh<_i21.MyIPUseCase>()));
  return getIt;
}

class _$NetworkModule extends _i23.NetworkModule {}

class _$LocalModule extends _i24.LocalModule {}
