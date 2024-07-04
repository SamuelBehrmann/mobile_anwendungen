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
      authorId: json['authorId'] as String,
      replies: (json['replies'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            FirestoreBackendServiceMessageRaw.fromJson(
                e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$FirestoreBackendServicePostImplToJson(
        _$FirestoreBackendServicePostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'authorId': instance.authorId,
      'replies': instance.replies.map((k, e) => MapEntry(k, e.toJson())),
    };

_$FirestoreBackendServiceUserImpl _$$FirestoreBackendServiceUserImplFromJson(
        Map<String, dynamic> json) =>
    _$FirestoreBackendServiceUserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: Uri.parse(json['imageUrl'] as String),
      titles:
          (json['titles'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FirestoreBackendServiceUserImplToJson(
        _$FirestoreBackendServiceUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl.toString(),
      'titles': instance.titles,
    };

_$FirestoreBackendServiceMessageWithAuthorImpl
    _$$FirestoreBackendServiceMessageWithAuthorImplFromJson(
            Map<String, dynamic> json) =>
        _$FirestoreBackendServiceMessageWithAuthorImpl(
          id: json['id'] as String,
          content: json['content'] as String,
          author: FirestoreBackendServiceUser.fromJson(
              json['author'] as Map<String, dynamic>),
          replies: (json['replies'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                k,
                FirestoreBackendServiceMessageWithAuthor.fromJson(
                    e as Map<String, dynamic>)),
          ),
        );

Map<String, dynamic> _$$FirestoreBackendServiceMessageWithAuthorImplToJson(
        _$FirestoreBackendServiceMessageWithAuthorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'author': instance.author.toJson(),
      'replies': instance.replies.map((k, e) => MapEntry(k, e.toJson())),
    };

_$FirestoreBackendServiceMessageRawImpl
    _$$FirestoreBackendServiceMessageRawImplFromJson(
            Map<String, dynamic> json) =>
        _$FirestoreBackendServiceMessageRawImpl(
          id: json['id'] as String,
          content: json['content'] as String,
          authorId: json['authorId'] as String,
          replies: (json['replies'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                k,
                FirestoreBackendServiceMessageRaw.fromJson(
                    e as Map<String, dynamic>)),
          ),
        );

Map<String, dynamic> _$$FirestoreBackendServiceMessageRawImplToJson(
        _$FirestoreBackendServiceMessageRawImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'authorId': instance.authorId,
      'replies': instance.replies.map((k, e) => MapEntry(k, e.toJson())),
    };
