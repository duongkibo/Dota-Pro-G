import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match.g.dart';

@JsonSerializable()
class Match extends Equatable
{
  @JsonKey(name: 'match_id')
  int matchId;
  @JsonKey(name: 'hero_id')
  int herId;
  @JsonKey(name: 'player_slot')
  int playerSlot;
  @JsonKey(name: 'skill')
  int skill;
  @JsonKey(name: 'duration')
  int duration;
  @JsonKey(name: 'game_mode')
  int gameMode;
  @JsonKey(name: 'lobby_type')
  int lobbyType;
  @JsonKey(name: 'radiant_win')
  bool isRadiantWin;
  @JsonKey(name: 'start_time')
  int startTime;

  Match(
      {this.matchId,
      this.herId,
      this.playerSlot,
      this.skill,
      this.duration,
      this.gameMode,
      this.lobbyType,
      this.isRadiantWin,
      this.startTime});
  factory Match.fromJson(Map<String,dynamic> json) => _$MatchFromJson(json);
  Map<String,dynamic> toJson() => _$MatchToJson(this);


  @override
  List<Object> get props {
    return [matchId,herId,playerSlot,skill,duration,gameMode,lobbyType,isRadiantWin,startTime];

  }


}