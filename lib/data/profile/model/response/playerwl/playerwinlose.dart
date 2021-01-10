

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
@JsonSerializable(nullable: false, explicitToJson: true)
@JsonSerializable(nullable: false)
part 'playerwinlose.g.dart';
class PlayerWinLose extends Equatable
{
  @JsonKey(name:'win')
  double win;
  @JsonKey(name:'lose')
  double lose;

  PlayerWinLose({this.win, this.lose});
  factory PlayerWinLose.fromJson(Map<String,dynamic> json) => _$PlayerWinLoseFromJson(json);
  Map<String,dynamic>  toJson() => _$PlayerWinLoseToJson(this);
  @override
  List<Object> get props {
   return [win,lose];
  }

}