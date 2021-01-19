import 'package:flutter_architecture/data/dota/model/profile/hero/hero.dart';
import 'package:flutter_architecture/data/dota/repositories/competitive_repo.dart';
import 'package:flutter_architecture/di/module/api_module.dart';
import 'package:flutter_architecture/di/module/bloc_module.dart';
import 'package:flutter_architecture/di/module/competitive_repo_module.dart';
import 'package:flutter_architecture/di/module/components_module.dart';
import 'package:flutter_architecture/di/module/hero_repo_module.dart';
import 'package:flutter_architecture/di/module/match_repo_module.dart';
import 'package:flutter_architecture/di/module/matches_by_heroes_repo_module.dart';
import 'package:flutter_architecture/di/module/matches_repo_module.dart';
import 'package:flutter_architecture/di/module/peer_repo_module.dart';
import 'package:flutter_architecture/di/module/player_profile_repo_module.dart';
import 'package:flutter_architecture/di/module/player_win_lose_repo_module.dart';
import 'package:flutter_architecture/di/module/repo_module.dart';
import 'package:flutter_architecture/di/module/search_player_repo_module.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class Injection {
  static Future inject() async {
    await ComponentsModule().provides();
    await ApiModule().provides();
    await RepoModule().provides();
    await BlocModule().provides();
    await CompetitiveRepoModule().provides();
    await HeroRepoModule().provides();
    await MatchRepoModule().provides();
    await MatchesByHeroesRepoModule().provides();
    await MatchesRepoModule().provides();
    await PeerRepoModule().provides();
    await PlayerProfileRepoModule().provides();
    await PlayerWinLoseRepoModule().provides();
    await SearchPlayerRepoModule().provides();
  }
}
