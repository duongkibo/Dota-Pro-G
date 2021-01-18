import 'package:flutter_architecture/data/dota/model/profile/matches/matchs.dart';
import 'package:flutter_architecture/data/dota/source/remote/dota_api.dart';
import 'package:flutter_architecture/domain/dota/repositories/matches_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/common/api_exception.dart';
class MatchesRepo implements MatchesRepository
{
  DotaApi dotaApi;
  MatchesRepo({this.dotaApi});

  @override
  Future<List<Matchs>> getMatches(int playerId, int limit, int offset) async{
        try{
             assert(playerId!=null && limit != null && offset!=null);
             return await dotaApi.getMatches(playerId, limit, offset);
        }
        on DioError catch (dioError) {
          throw ApiException(exception: dioError);
        } catch (e) {
          throw Exception('Unexpected Exception $e');
        }
  }


}