// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Post',
      json,
      ($checkedConvert) {
        final val = Post(
          id: $checkedConvert('id', (v) => v as int),
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
          textBody: $checkedConvert('body', (v) => v as String),
          imageBody: $checkedConvert('image', (v) => v as String),
          uploadedOn: $checkedConvert(
              'uploaded_on', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'textBody': 'body',
        'imageBody': 'image',
        'uploadedOn': 'uploaded_on'
      },
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'body': instance.textBody,
      'image': instance.imageBody,
      'uploaded_on': instance.uploadedOn.toIso8601String(),
    };
