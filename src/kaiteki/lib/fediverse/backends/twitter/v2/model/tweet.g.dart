// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TweetCWProxy {
  Tweet id(String id);

  Tweet text(String text);

  Tweet authorId(String? authorId);

  Tweet conversationId(String? conversationId);

  Tweet createdAt(DateTime? createdAt);

  Tweet inReplyToUserId(String? inReplyToUserId);

  Tweet lang(String? lang);

  Tweet replySettings(TweetReplySettings? replySettings);

  Tweet attachments(TweetAttachments? attachments);

  Tweet referencedTweets(List<ReferencedTweet>? referencedTweets);

  Tweet publicMetrics(PublicMetrics? publicMetrics);

  Tweet entities(TweetEntities? entities);

  Tweet source(String? source);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Tweet(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Tweet(...).copyWith(id: 12, name: "My name")
  /// ````
  Tweet call({
    String? id,
    String? text,
    String? authorId,
    String? conversationId,
    DateTime? createdAt,
    String? inReplyToUserId,
    String? lang,
    TweetReplySettings? replySettings,
    TweetAttachments? attachments,
    List<ReferencedTweet>? referencedTweets,
    PublicMetrics? publicMetrics,
    TweetEntities? entities,
    String? source,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTweet.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTweet.copyWith.fieldName(...)`
class _$TweetCWProxyImpl implements _$TweetCWProxy {
  const _$TweetCWProxyImpl(this._value);

  final Tweet _value;

  @override
  Tweet id(String id) => this(id: id);

  @override
  Tweet text(String text) => this(text: text);

  @override
  Tweet authorId(String? authorId) => this(authorId: authorId);

  @override
  Tweet conversationId(String? conversationId) =>
      this(conversationId: conversationId);

  @override
  Tweet createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  Tweet inReplyToUserId(String? inReplyToUserId) =>
      this(inReplyToUserId: inReplyToUserId);

  @override
  Tweet lang(String? lang) => this(lang: lang);

  @override
  Tweet replySettings(TweetReplySettings? replySettings) =>
      this(replySettings: replySettings);

  @override
  Tweet attachments(TweetAttachments? attachments) =>
      this(attachments: attachments);

  @override
  Tweet referencedTweets(List<ReferencedTweet>? referencedTweets) =>
      this(referencedTweets: referencedTweets);

  @override
  Tweet publicMetrics(PublicMetrics? publicMetrics) =>
      this(publicMetrics: publicMetrics);

  @override
  Tweet entities(TweetEntities? entities) => this(entities: entities);

  @override
  Tweet source(String? source) => this(source: source);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Tweet(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Tweet(...).copyWith(id: 12, name: "My name")
  /// ````
  Tweet call({
    Object? id = const $CopyWithPlaceholder(),
    Object? text = const $CopyWithPlaceholder(),
    Object? authorId = const $CopyWithPlaceholder(),
    Object? conversationId = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? inReplyToUserId = const $CopyWithPlaceholder(),
    Object? lang = const $CopyWithPlaceholder(),
    Object? replySettings = const $CopyWithPlaceholder(),
    Object? attachments = const $CopyWithPlaceholder(),
    Object? referencedTweets = const $CopyWithPlaceholder(),
    Object? publicMetrics = const $CopyWithPlaceholder(),
    Object? entities = const $CopyWithPlaceholder(),
    Object? source = const $CopyWithPlaceholder(),
  }) {
    return Tweet(
      id: id == const $CopyWithPlaceholder() || id == null
          // ignore: unnecessary_non_null_assertion
          ? _value.id!
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      text: text == const $CopyWithPlaceholder() || text == null
          // ignore: unnecessary_non_null_assertion
          ? _value.text!
          // ignore: cast_nullable_to_non_nullable
          : text as String,
      authorId: authorId == const $CopyWithPlaceholder()
          ? _value.authorId
          // ignore: cast_nullable_to_non_nullable
          : authorId as String?,
      conversationId: conversationId == const $CopyWithPlaceholder()
          ? _value.conversationId
          // ignore: cast_nullable_to_non_nullable
          : conversationId as String?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      inReplyToUserId: inReplyToUserId == const $CopyWithPlaceholder()
          ? _value.inReplyToUserId
          // ignore: cast_nullable_to_non_nullable
          : inReplyToUserId as String?,
      lang: lang == const $CopyWithPlaceholder()
          ? _value.lang
          // ignore: cast_nullable_to_non_nullable
          : lang as String?,
      replySettings: replySettings == const $CopyWithPlaceholder()
          ? _value.replySettings
          // ignore: cast_nullable_to_non_nullable
          : replySettings as TweetReplySettings?,
      attachments: attachments == const $CopyWithPlaceholder()
          ? _value.attachments
          // ignore: cast_nullable_to_non_nullable
          : attachments as TweetAttachments?,
      referencedTweets: referencedTweets == const $CopyWithPlaceholder()
          ? _value.referencedTweets
          // ignore: cast_nullable_to_non_nullable
          : referencedTweets as List<ReferencedTweet>?,
      publicMetrics: publicMetrics == const $CopyWithPlaceholder()
          ? _value.publicMetrics
          // ignore: cast_nullable_to_non_nullable
          : publicMetrics as PublicMetrics?,
      entities: entities == const $CopyWithPlaceholder()
          ? _value.entities
          // ignore: cast_nullable_to_non_nullable
          : entities as TweetEntities?,
      source: source == const $CopyWithPlaceholder()
          ? _value.source
          // ignore: cast_nullable_to_non_nullable
          : source as String?,
    );
  }
}

extension $TweetCopyWith on Tweet {
  /// Returns a callable class that can be used as follows: `instanceOfTweet.copyWith(...)` or like so:`instanceOfTweet.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TweetCWProxy get copyWith => _$TweetCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tweet _$TweetFromJson(Map<String, dynamic> json) => Tweet(
      id: json['id'] as String,
      text: json['text'] as String,
      authorId: json['author_id'] as String?,
      conversationId: json['conversation_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      inReplyToUserId: json['in_reply_to_user_id'] as String?,
      lang: json['lang'] as String?,
      replySettings: $enumDecodeNullable(
          _$TweetReplySettingsEnumMap, json['reply_settings']),
      attachments: json['attachments'] == null
          ? null
          : TweetAttachments.fromJson(
              json['attachments'] as Map<String, dynamic>),
      referencedTweets: (json['referenced_tweets'] as List<dynamic>?)
          ?.map((e) => ReferencedTweet.fromJson(e as Map<String, dynamic>))
          .toList(),
      publicMetrics: json['public_metrics'] == null
          ? null
          : PublicMetrics.fromJson(
              json['public_metrics'] as Map<String, dynamic>),
      entities: json['entities'] == null
          ? null
          : TweetEntities.fromJson(json['entities'] as Map<String, dynamic>),
      source: json['source'] as String?,
    );

Map<String, dynamic> _$TweetToJson(Tweet instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'author_id': instance.authorId,
      'attachments': instance.attachments?.toJson(),
      'conversation_id': instance.conversationId,
      'created_at': instance.createdAt?.toIso8601String(),
      'in_reply_to_user_id': instance.inReplyToUserId,
      'lang': instance.lang,
      'reply_settings': _$TweetReplySettingsEnumMap[instance.replySettings],
      'referenced_tweets':
          instance.referencedTweets?.map((e) => e.toJson()).toList(),
      'public_metrics': instance.publicMetrics?.toJson(),
      'entities': instance.entities?.toJson(),
      'source': instance.source,
    };

const _$TweetReplySettingsEnumMap = {
  TweetReplySettings.everyone: 'everyone',
  TweetReplySettings.mentionedUsers: 'mentioned_users',
  TweetReplySettings.followers: 'followers',
};

TweetAttachments _$TweetAttachmentsFromJson(Map<String, dynamic> json) =>
    TweetAttachments(
      pollIds: (json['poll_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mediaKeys: (json['media_keys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TweetAttachmentsToJson(TweetAttachments instance) =>
    <String, dynamic>{
      'poll_ids': instance.pollIds,
      'media_keys': instance.mediaKeys,
    };

ReferencedTweet _$ReferencedTweetFromJson(Map<String, dynamic> json) =>
    ReferencedTweet(
      $enumDecode(_$ReferencedTweetTypeEnumMap, json['type']),
      json['id'] as String,
    );

Map<String, dynamic> _$ReferencedTweetToJson(ReferencedTweet instance) =>
    <String, dynamic>{
      'type': _$ReferencedTweetTypeEnumMap[instance.type]!,
      'id': instance.id,
    };

const _$ReferencedTweetTypeEnumMap = {
  ReferencedTweetType.repliedTo: 'replied_to',
  ReferencedTweetType.quoted: 'quoted',
  ReferencedTweetType.retweeted: 'retweeted',
};

PublicMetrics _$PublicMetricsFromJson(Map<String, dynamic> json) =>
    PublicMetrics(
      retweetCount: json['retweet_count'] as int,
      replyCount: json['reply_count'] as int,
      likeCount: json['like_count'] as int,
      quoteCount: json['quote_count'] as int,
    );

Map<String, dynamic> _$PublicMetricsToJson(PublicMetrics instance) =>
    <String, dynamic>{
      'retweet_count': instance.retweetCount,
      'reply_count': instance.replyCount,
      'like_count': instance.likeCount,
      'quote_count': instance.quoteCount,
    };

TweetEntities _$TweetEntitiesFromJson(Map<String, dynamic> json) =>
    TweetEntities(
      annotations: (json['annotations'] as List<dynamic>?)
          ?.map((e) => TweetAnnotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      hashtags: (json['hashtags'] as List<dynamic>?)
          ?.map((e) => TweetTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      cashtags: (json['cashtags'] as List<dynamic>?)
          ?.map((e) => TweetTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => TweetUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TweetEntitiesToJson(TweetEntities instance) =>
    <String, dynamic>{
      'annotations': instance.annotations,
      'hashtags': instance.hashtags,
      'cashtags': instance.cashtags,
      'urls': instance.urls,
    };

TweetEntity _$TweetEntityFromJson(Map<String, dynamic> json) => TweetEntity(
      start: json['start'] as int,
      end: json['end'] as int,
    );

Map<String, dynamic> _$TweetEntityToJson(TweetEntity instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

TweetAnnotation _$TweetAnnotationFromJson(Map<String, dynamic> json) =>
    TweetAnnotation(
      start: json['start'] as int,
      end: json['end'] as int,
      probability: (json['probability'] as num).toDouble(),
      type: json['type'] as String,
      normalizedText: json['normalized_text'] as String,
    );

Map<String, dynamic> _$TweetAnnotationToJson(TweetAnnotation instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'probability': instance.probability,
      'type': instance.type,
      'normalized_text': instance.normalizedText,
    };

TweetTag _$TweetTagFromJson(Map<String, dynamic> json) => TweetTag(
      start: json['start'] as int,
      end: json['end'] as int,
      tag: json['tag'] as String,
    );

Map<String, dynamic> _$TweetTagToJson(TweetTag instance) => <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'tag': instance.tag,
    };

TweetUrl _$TweetUrlFromJson(Map<String, dynamic> json) => TweetUrl(
      start: json['start'] as int,
      end: json['end'] as int,
      url: json['url'] as String,
      expandedUrl: json['expanded_url'] as String,
      displayUrl: json['display_url'] as String,
      unwoundUrl: json['unwound_url'] as String?,
      status: json['status'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$TweetUrlToJson(TweetUrl instance) => <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'url': instance.url,
      'expanded_url': instance.expandedUrl,
      'display_url': instance.displayUrl,
      'unwound_url': instance.unwoundUrl,
      'status': instance.status,
      'title': instance.title,
      'description': instance.description,
    };
