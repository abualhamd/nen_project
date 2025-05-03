import 'package:get_it/get_it.dart' show GetIt;

import 'domain/domain.dart' show AuthRepo;
import 'infrastructure/infrastructure.dart'
    show AuthDatasource, AuthDatasourceImpl, AuthRepoImpl;
import 'presentation/presentation.dart' show AuthBloc;

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  await InjectionHelper.injectExternal();
  InjectionHelper.injectCore();
  InjectionHelper.injectDatasources();
  InjectionHelper.injectRepos();
  InjectionHelper.injectBlocs();
}

abstract class InjectionHelper {
  static Future<void> injectExternal() async {
    // Add your external dependencies here
  }

  static void injectCore() {
    // Add your core dependencies here
  }

  static void injectDatasources() {
    getIt.registerLazySingleton<AuthDatasource>(() => AuthDatasourceImpl());
  }

  static void injectRepos() {
    getIt.registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(datasource: getIt()),
    );
  }

  static void injectBlocs() {
    getIt.registerFactory(() => AuthBloc(repo: getIt()));
  }
}
