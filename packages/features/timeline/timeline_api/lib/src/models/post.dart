import 'package:json_annotation/json_annotation.dart';
import 'package:timeline_api/src/models/user.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  Post({
    required this.id,
    required this.user,
    required this.textBody,
    required this.imageBody,
    required this.uploadedOn,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  final int id;
  final User user;

  @JsonKey(name: 'body')
  final String textBody;

  @JsonKey(name: 'image')
  final String imageBody;

  final DateTime uploadedOn;

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
