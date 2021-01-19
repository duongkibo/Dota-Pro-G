import 'package:flutter_architecture/config/configuration.dart';
import 'package:flutter_architecture/data/dota/repositories/match_repo.dart';
import 'package:flutter_architecture/data/dota/source/remote/dota_api.dart';
import 'package:flutter_architecture/di/injection/injection.dart';

class MatchRepoModule extends DIModule
{
  @override
  provides() async{
    getIt.registerFactory<MatchRepo>(() => MatchRepo(dotaApi: getIt.get<DotaApi>()));
  }

}