// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VerifyAccountModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of VerifyAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyAccountModelCopyWith<VerifyAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyAccountModelCopyWith<$Res> {
  factory $VerifyAccountModelCopyWith(
    VerifyAccountModel value,
    $Res Function(VerifyAccountModel) then,
  ) = _$VerifyAccountModelCopyWithImpl<$Res, VerifyAccountModel>;
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class _$VerifyAccountModelCopyWithImpl<$Res, $Val extends VerifyAccountModel>
    implements $VerifyAccountModelCopyWith<$Res> {
  _$VerifyAccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? message = null}) {
    return _then(
      _value.copyWith(
            success:
                null == success
                    ? _value.success
                    : success // ignore: cast_nullable_to_non_nullable
                        as bool,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyAccountModelImplCopyWith<$Res>
    implements $VerifyAccountModelCopyWith<$Res> {
  factory _$$VerifyAccountModelImplCopyWith(
    _$VerifyAccountModelImpl value,
    $Res Function(_$VerifyAccountModelImpl) then,
  ) = __$$VerifyAccountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class __$$VerifyAccountModelImplCopyWithImpl<$Res>
    extends _$VerifyAccountModelCopyWithImpl<$Res, _$VerifyAccountModelImpl>
    implements _$$VerifyAccountModelImplCopyWith<$Res> {
  __$$VerifyAccountModelImplCopyWithImpl(
    _$VerifyAccountModelImpl _value,
    $Res Function(_$VerifyAccountModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? message = null}) {
    return _then(
      _$VerifyAccountModelImpl(
        success:
            null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                    as bool,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$VerifyAccountModelImpl implements _VerifyAccountModel {
  _$VerifyAccountModelImpl({required this.success, required this.message});

  @override
  final bool success;
  @override
  final String message;

  @override
  String toString() {
    return 'VerifyAccountModel(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of VerifyAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyAccountModelImplCopyWith<_$VerifyAccountModelImpl> get copyWith =>
      __$$VerifyAccountModelImplCopyWithImpl<_$VerifyAccountModelImpl>(
        this,
        _$identity,
      );
}

abstract class _VerifyAccountModel implements VerifyAccountModel {
  factory _VerifyAccountModel({
    required final bool success,
    required final String message,
  }) = _$VerifyAccountModelImpl;

  @override
  bool get success;
  @override
  String get message;

  /// Create a copy of VerifyAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyAccountModelImplCopyWith<_$VerifyAccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
