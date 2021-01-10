import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'player.g.dart';
@JsonSerializable(nullable: false, explicitToJson: true)
@JsonSerializable(nullable: false)
class Player extends Equatable
{
  @JsonKey(name: 'account_id')
  double id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'personaname')
  String personaname;
  @JsonKey(name: 'avatarfull')
  String avatarUrl;

  Player({this.id, this.name, this.personaname, this.avatarUrl});
  factory Player.fromJson(Map<String,dynamic> json) => _$PlayerFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerToJson(this);


  @override
  List<Object> get props {
  return [id, name, avatarUrl];
  }
}