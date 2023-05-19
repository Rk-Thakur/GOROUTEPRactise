import 'package:application/domain/meme_controller.dart';
import 'package:application/repository/meme_repo.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setUp() {
  locator.registerLazySingleton<MemeRepo>(() => MemeRepo());
  locator
      .registerLazySingleton<MemeDomainControler>(() => MemeDomainControler());
}
