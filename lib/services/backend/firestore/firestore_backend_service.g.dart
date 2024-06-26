// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_backend_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreBackendServicePostImpl _$$FirestoreBackendServicePostImplFromJson(
        Map<String, dynamic> json) =>
    _$FirestoreBackendServicePostImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      author: FirestoreBackendServiceUser.fromJson(
          json['author'] as Map<String, dynamic>),
      replies: (json['replies'] as List<dynamic>)
          .map((e) => FirestoreBackendServiceMessage.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FirestoreBackendServicePostImplToJson(
        _$FirestoreBackendServicePostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'author': instance.author.toJson(),
      'replies': instance.replies.map((e) => e.toJson()).toList(),
    };

_$FirestoreBackendServiceUserImpl _$$FirestoreBackendServiceUserImplFromJson(
        Map<String, dynamic> json) =>
    _$FirestoreBackendServiceUserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      avatar: Uri.parse(json['avatar'] as String),
      titles:
          (json['titles'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FirestoreBackendServiceUserImplToJson(
        _$FirestoreBackendServiceUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar.toString(),
      'titles': instance.titles,
    };

_$FirestoreBackendServiceMessageImpl
    _$$FirestoreBackendServiceMessageImplFromJson(Map<String, dynamic> json) =>
        _$FirestoreBackendServiceMessageImpl(
          id: json['id'] as String,
          message: json['message'] as String,
          author: FirestoreBackendServiceUser.fromJson(
              json['author'] as Map<String, dynamic>),
          replies: (json['replies'] as List<dynamic>)
              .map((e) => FirestoreBackendServiceMessage.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FirestoreBackendServiceMessageImplToJson(
        _$FirestoreBackendServiceMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'author': instance.author.toJson(),
      'replies': instance.replies.map((e) => e.toJson()).toList(),
    };
