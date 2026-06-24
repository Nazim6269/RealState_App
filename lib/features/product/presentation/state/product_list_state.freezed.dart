// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductListState()';
}


}

/// @nodoc
class $ProductListStateCopyWith<$Res>  {
$ProductListStateCopyWith(ProductListState _, $Res Function(ProductListState) __);
}


/// Adds pattern-matching-related methods to [ProductListState].
extension ProductListStatePatterns on ProductListState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductListInitial value)?  initial,TResult Function( ProductListLoading value)?  loading,TResult Function( ProductListEmpty value)?  empty,TResult Function( ProductListError value)?  error,TResult Function( ProductListSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductListInitial() when initial != null:
return initial(_that);case ProductListLoading() when loading != null:
return loading(_that);case ProductListEmpty() when empty != null:
return empty(_that);case ProductListError() when error != null:
return error(_that);case ProductListSuccess() when success != null:
return success(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductListInitial value)  initial,required TResult Function( ProductListLoading value)  loading,required TResult Function( ProductListEmpty value)  empty,required TResult Function( ProductListError value)  error,required TResult Function( ProductListSuccess value)  success,}){
final _that = this;
switch (_that) {
case ProductListInitial():
return initial(_that);case ProductListLoading():
return loading(_that);case ProductListEmpty():
return empty(_that);case ProductListError():
return error(_that);case ProductListSuccess():
return success(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductListInitial value)?  initial,TResult? Function( ProductListLoading value)?  loading,TResult? Function( ProductListEmpty value)?  empty,TResult? Function( ProductListError value)?  error,TResult? Function( ProductListSuccess value)?  success,}){
final _that = this;
switch (_that) {
case ProductListInitial() when initial != null:
return initial(_that);case ProductListLoading() when loading != null:
return loading(_that);case ProductListEmpty() when empty != null:
return empty(_that);case ProductListError() when error != null:
return error(_that);case ProductListSuccess() when success != null:
return success(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  empty,TResult Function( Failure failure)?  error,TResult Function( List<ProductEntity> products)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductListInitial() when initial != null:
return initial();case ProductListLoading() when loading != null:
return loading();case ProductListEmpty() when empty != null:
return empty();case ProductListError() when error != null:
return error(_that.failure);case ProductListSuccess() when success != null:
return success(_that.products);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  empty,required TResult Function( Failure failure)  error,required TResult Function( List<ProductEntity> products)  success,}) {final _that = this;
switch (_that) {
case ProductListInitial():
return initial();case ProductListLoading():
return loading();case ProductListEmpty():
return empty();case ProductListError():
return error(_that.failure);case ProductListSuccess():
return success(_that.products);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  empty,TResult? Function( Failure failure)?  error,TResult? Function( List<ProductEntity> products)?  success,}) {final _that = this;
switch (_that) {
case ProductListInitial() when initial != null:
return initial();case ProductListLoading() when loading != null:
return loading();case ProductListEmpty() when empty != null:
return empty();case ProductListError() when error != null:
return error(_that.failure);case ProductListSuccess() when success != null:
return success(_that.products);case _:
  return null;

}
}

}

/// @nodoc


class ProductListInitial implements ProductListState {
  const ProductListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductListState.initial()';
}


}




/// @nodoc


class ProductListLoading implements ProductListState {
  const ProductListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductListState.loading()';
}


}




/// @nodoc


class ProductListEmpty implements ProductListState {
  const ProductListEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductListState.empty()';
}


}




/// @nodoc


class ProductListError implements ProductListState {
  const ProductListError(this.failure);
  

 final  Failure failure;

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListErrorCopyWith<ProductListError> get copyWith => _$ProductListErrorCopyWithImpl<ProductListError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'ProductListState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ProductListErrorCopyWith<$Res> implements $ProductListStateCopyWith<$Res> {
  factory $ProductListErrorCopyWith(ProductListError value, $Res Function(ProductListError) _then) = _$ProductListErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$ProductListErrorCopyWithImpl<$Res>
    implements $ProductListErrorCopyWith<$Res> {
  _$ProductListErrorCopyWithImpl(this._self, this._then);

  final ProductListError _self;
  final $Res Function(ProductListError) _then;

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(ProductListError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res> get failure {
  
  return $FailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

/// @nodoc


class ProductListSuccess implements ProductListState {
  const ProductListSuccess(final  List<ProductEntity> products): _products = products;
  

 final  List<ProductEntity> _products;
 List<ProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListSuccessCopyWith<ProductListSuccess> get copyWith => _$ProductListSuccessCopyWithImpl<ProductListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListSuccess&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductListState.success(products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductListSuccessCopyWith<$Res> implements $ProductListStateCopyWith<$Res> {
  factory $ProductListSuccessCopyWith(ProductListSuccess value, $Res Function(ProductListSuccess) _then) = _$ProductListSuccessCopyWithImpl;
@useResult
$Res call({
 List<ProductEntity> products
});




}
/// @nodoc
class _$ProductListSuccessCopyWithImpl<$Res>
    implements $ProductListSuccessCopyWith<$Res> {
  _$ProductListSuccessCopyWithImpl(this._self, this._then);

  final ProductListSuccess _self;
  final $Res Function(ProductListSuccess) _then;

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(ProductListSuccess(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,
  ));
}


}

// dart format on
