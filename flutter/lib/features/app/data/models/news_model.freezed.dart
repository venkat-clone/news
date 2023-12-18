// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'article_id')
  String get articleId => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_id')
  String? get sourceId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
  @DateJsonKey()
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  @DateJsonKey()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateJsonKey()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'article_id') String articleId,
      String? category,
      @JsonKey(name: 'source_id') String? sourceId,
      String description,
      String content,
      String title,
      String? image,
      String? link,
      int? likes,
      bool saved,
      @DateJsonKey() DateTime? publishedAt,
      @DateJsonKey() DateTime? createdAt,
      @DateJsonKey() DateTime? updatedAt});
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? articleId = null,
    Object? category = freezed,
    Object? sourceId = freezed,
    Object? description = null,
    Object? content = null,
    Object? title = null,
    Object? image = freezed,
    Object? link = freezed,
    Object? likes = freezed,
    Object? saved = null,
    Object? publishedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsModelImplCopyWith<$Res>
    implements $NewsModelCopyWith<$Res> {
  factory _$$NewsModelImplCopyWith(
          _$NewsModelImpl value, $Res Function(_$NewsModelImpl) then) =
      __$$NewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'article_id') String articleId,
      String? category,
      @JsonKey(name: 'source_id') String? sourceId,
      String description,
      String content,
      String title,
      String? image,
      String? link,
      int? likes,
      bool saved,
      @DateJsonKey() DateTime? publishedAt,
      @DateJsonKey() DateTime? createdAt,
      @DateJsonKey() DateTime? updatedAt});
}

/// @nodoc
class __$$NewsModelImplCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$NewsModelImpl>
    implements _$$NewsModelImplCopyWith<$Res> {
  __$$NewsModelImplCopyWithImpl(
      _$NewsModelImpl _value, $Res Function(_$NewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? articleId = null,
    Object? category = freezed,
    Object? sourceId = freezed,
    Object? description = null,
    Object? content = null,
    Object? title = null,
    Object? image = freezed,
    Object? link = freezed,
    Object? likes = freezed,
    Object? saved = null,
    Object? publishedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$NewsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsModelImpl implements _NewsModel {
  const _$NewsModelImpl(
      {this.id,
      @JsonKey(name: 'article_id') required this.articleId,
      this.category,
      @JsonKey(name: 'source_id') this.sourceId,
      required this.description,
      required this.content,
      required this.title,
      this.image,
      this.link,
      this.likes,
      this.saved = false,
      @DateJsonKey() this.publishedAt,
      @DateJsonKey() this.createdAt,
      @DateJsonKey() this.updatedAt});

  factory _$NewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'article_id')
  final String articleId;
  @override
  final String? category;
  @override
  @JsonKey(name: 'source_id')
  final String? sourceId;
  @override
  final String description;
  @override
  final String content;
  @override
  final String title;
  @override
  final String? image;
  @override
  final String? link;
  @override
  final int? likes;
  @override
  @JsonKey()
  final bool saved;
  @override
  @DateJsonKey()
  final DateTime? publishedAt;
  @override
  @DateJsonKey()
  final DateTime? createdAt;
  @override
  @DateJsonKey()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'NewsModel(id: $id, articleId: $articleId, category: $category, sourceId: $sourceId, description: $description, content: $content, title: $title, image: $image, link: $link, likes: $likes, saved: $saved, publishedAt: $publishedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.saved, saved) || other.saved == saved) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      articleId,
      category,
      sourceId,
      description,
      content,
      title,
      image,
      link,
      likes,
      saved,
      publishedAt,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      __$$NewsModelImplCopyWithImpl<_$NewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsModelImplToJson(
      this,
    );
  }
}

abstract class _NewsModel implements NewsModel {
  const factory _NewsModel(
      {final int? id,
      @JsonKey(name: 'article_id') required final String articleId,
      final String? category,
      @JsonKey(name: 'source_id') final String? sourceId,
      required final String description,
      required final String content,
      required final String title,
      final String? image,
      final String? link,
      final int? likes,
      final bool saved,
      @DateJsonKey() final DateTime? publishedAt,
      @DateJsonKey() final DateTime? createdAt,
      @DateJsonKey() final DateTime? updatedAt}) = _$NewsModelImpl;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$NewsModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'article_id')
  String get articleId;
  @override
  String? get category;
  @override
  @JsonKey(name: 'source_id')
  String? get sourceId;
  @override
  String get description;
  @override
  String get content;
  @override
  String get title;
  @override
  String? get image;
  @override
  String? get link;
  @override
  int? get likes;
  @override
  bool get saved;
  @override
  @DateJsonKey()
  DateTime? get publishedAt;
  @override
  @DateJsonKey()
  DateTime? get createdAt;
  @override
  @DateJsonKey()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
