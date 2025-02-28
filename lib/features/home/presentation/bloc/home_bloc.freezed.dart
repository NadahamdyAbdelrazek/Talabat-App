// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String productId) addToCart,
    required TResult Function(int index) changeBottomNavBar,
    required TResult Function() getProducts,
    required TResult Function() getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String productId)? addToCart,
    TResult? Function(int index)? changeBottomNavBar,
    TResult? Function()? getProducts,
    TResult? Function()? getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String productId)? addToCart,
    TResult Function(int index)? changeBottomNavBar,
    TResult Function()? getProducts,
    TResult Function()? getCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(changeNavBar value) changeBottomNavBar,
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(GetCartEvent value) getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(changeNavBar value)? changeBottomNavBar,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(GetCartEvent value)? getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(changeNavBar value)? changeBottomNavBar,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(GetCartEvent value)? getCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String productId) addToCart,
    required TResult Function(int index) changeBottomNavBar,
    required TResult Function() getProducts,
    required TResult Function() getCart,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String productId)? addToCart,
    TResult? Function(int index)? changeBottomNavBar,
    TResult? Function()? getProducts,
    TResult? Function()? getCart,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String productId)? addToCart,
    TResult Function(int index)? changeBottomNavBar,
    TResult Function()? getProducts,
    TResult Function()? getCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(changeNavBar value) changeBottomNavBar,
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(GetCartEvent value) getCart,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(changeNavBar value)? changeBottomNavBar,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(GetCartEvent value)? getCart,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(changeNavBar value)? changeBottomNavBar,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(GetCartEvent value)? getCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetBrandsEventImplCopyWith<$Res> {
  factory _$$GetBrandsEventImplCopyWith(_$GetBrandsEventImpl value,
          $Res Function(_$GetBrandsEventImpl) then) =
      __$$GetBrandsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBrandsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetBrandsEventImpl>
    implements _$$GetBrandsEventImplCopyWith<$Res> {
  __$$GetBrandsEventImplCopyWithImpl(
      _$GetBrandsEventImpl _value, $Res Function(_$GetBrandsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBrandsEventImpl implements GetBrandsEvent {
  const _$GetBrandsEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getBrands()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBrandsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String productId) addToCart,
    required TResult Function(int index) changeBottomNavBar,
    required TResult Function() getProducts,
    required TResult Function() getCart,
  }) {
    return getBrands();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String productId)? addToCart,
    TResult? Function(int index)? changeBottomNavBar,
    TResult? Function()? getProducts,
    TResult? Function()? getCart,
  }) {
    return getBrands?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String productId)? addToCart,
    TResult Function(int index)? changeBottomNavBar,
    TResult Function()? getProducts,
    TResult Function()? getCart,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(changeNavBar value) changeBottomNavBar,
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(GetCartEvent value) getCart,
  }) {
    return getBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(changeNavBar value)? changeBottomNavBar,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(GetCartEvent value)? getCart,
  }) {
    return getBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(changeNavBar value)? changeBottomNavBar,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(GetCartEvent value)? getCart,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands(this);
    }
    return orElse();
  }
}

abstract class GetBrandsEvent implements HomeEvent {
  const factory GetBrandsEvent() = _$GetBrandsEventImpl;
}

/// @nodoc
abstract class _$$GetCategoriesEventImplCopyWith<$Res> {
  factory _$$GetCategoriesEventImplCopyWith(_$GetCategoriesEventImpl value,
          $Res Function(_$GetCategoriesEventImpl) then) =
      __$$GetCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCategoriesEventImpl>
    implements _$$GetCategoriesEventImplCopyWith<$Res> {
  __$$GetCategoriesEventImplCopyWithImpl(_$GetCategoriesEventImpl _value,
      $Res Function(_$GetCategoriesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoriesEventImpl implements GetCategoriesEvent {
  const _$GetCategoriesEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String productId) addToCart,
    required TResult Function(int index) changeBottomNavBar,
    required TResult Function() getProducts,
    required TResult Function() getCart,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String productId)? addToCart,
    TResult? Function(int index)? changeBottomNavBar,
    TResult? Function()? getProducts,
    TResult? Function()? getCart,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String productId)? addToCart,
    TResult Function(int index)? changeBottomNavBar,
    TResult Function()? getProducts,
    TResult Function()? getCart,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(changeNavBar value) changeBottomNavBar,
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(GetCartEvent value) getCart,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(changeNavBar value)? changeBottomNavBar,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(GetCartEvent value)? getCart,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(changeNavBar value)? changeBottomNavBar,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(GetCartEvent value)? getCart,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesEvent implements HomeEvent {
  const factory GetCategoriesEvent() = _$GetCategoriesEventImpl;
}

/// @nodoc
abstract class _$$AddToCartEventImplCopyWith<$Res> {
  factory _$$AddToCartEventImplCopyWith(_$AddToCartEventImpl value,
          $Res Function(_$AddToCartEventImpl) then) =
      __$$AddToCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$AddToCartEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddToCartEventImpl>
    implements _$$AddToCartEventImplCopyWith<$Res> {
  __$$AddToCartEventImplCopyWithImpl(
      _$AddToCartEventImpl _value, $Res Function(_$AddToCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$AddToCartEventImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToCartEventImpl implements AddToCartEvent {
  const _$AddToCartEventImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'HomeEvent.addToCart(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartEventImplCopyWith<_$AddToCartEventImpl> get copyWith =>
      __$$AddToCartEventImplCopyWithImpl<_$AddToCartEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String productId) addToCart,
    required TResult Function(int index) changeBottomNavBar,
    required TResult Function() getProducts,
    required TResult Function() getCart,
  }) {
    return addToCart(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String productId)? addToCart,
    TResult? Function(int index)? changeBottomNavBar,
    TResult? Function()? getProducts,
    TResult? Function()? getCart,
  }) {
    return addToCart?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String productId)? addToCart,
    TResult Function(int index)? changeBottomNavBar,
    TResult Function()? getProducts,
    TResult Function()? getCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(changeNavBar value) changeBottomNavBar,
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(GetCartEvent value) getCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(changeNavBar value)? changeBottomNavBar,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(GetCartEvent value)? getCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(changeNavBar value)? changeBottomNavBar,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(GetCartEvent value)? getCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCartEvent implements HomeEvent {
  const factory AddToCartEvent(final String productId) = _$AddToCartEventImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$AddToCartEventImplCopyWith<_$AddToCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$changeNavBarImplCopyWith<$Res> {
  factory _$$changeNavBarImplCopyWith(
          _$changeNavBarImpl value, $Res Function(_$changeNavBarImpl) then) =
      __$$changeNavBarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$changeNavBarImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$changeNavBarImpl>
    implements _$$changeNavBarImplCopyWith<$Res> {
  __$$changeNavBarImplCopyWithImpl(
      _$changeNavBarImpl _value, $Res Function(_$changeNavBarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$changeNavBarImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$changeNavBarImpl implements changeNavBar {
  const _$changeNavBarImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.changeBottomNavBar(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeNavBarImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeNavBarImplCopyWith<_$changeNavBarImpl> get copyWith =>
      __$$changeNavBarImplCopyWithImpl<_$changeNavBarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String productId) addToCart,
    required TResult Function(int index) changeBottomNavBar,
    required TResult Function() getProducts,
    required TResult Function() getCart,
  }) {
    return changeBottomNavBar(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String productId)? addToCart,
    TResult? Function(int index)? changeBottomNavBar,
    TResult? Function()? getProducts,
    TResult? Function()? getCart,
  }) {
    return changeBottomNavBar?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String productId)? addToCart,
    TResult Function(int index)? changeBottomNavBar,
    TResult Function()? getProducts,
    TResult Function()? getCart,
    required TResult orElse(),
  }) {
    if (changeBottomNavBar != null) {
      return changeBottomNavBar(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(changeNavBar value) changeBottomNavBar,
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(GetCartEvent value) getCart,
  }) {
    return changeBottomNavBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(changeNavBar value)? changeBottomNavBar,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(GetCartEvent value)? getCart,
  }) {
    return changeBottomNavBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(changeNavBar value)? changeBottomNavBar,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(GetCartEvent value)? getCart,
    required TResult orElse(),
  }) {
    if (changeBottomNavBar != null) {
      return changeBottomNavBar(this);
    }
    return orElse();
  }
}

abstract class changeNavBar implements HomeEvent {
  const factory changeNavBar(final int index) = _$changeNavBarImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$changeNavBarImplCopyWith<_$changeNavBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsEventImplCopyWith<$Res> {
  factory _$$GetProductsEventImplCopyWith(_$GetProductsEventImpl value,
          $Res Function(_$GetProductsEventImpl) then) =
      __$$GetProductsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetProductsEventImpl>
    implements _$$GetProductsEventImplCopyWith<$Res> {
  __$$GetProductsEventImplCopyWithImpl(_$GetProductsEventImpl _value,
      $Res Function(_$GetProductsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductsEventImpl implements GetProductsEvent {
  const _$GetProductsEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String productId) addToCart,
    required TResult Function(int index) changeBottomNavBar,
    required TResult Function() getProducts,
    required TResult Function() getCart,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String productId)? addToCart,
    TResult? Function(int index)? changeBottomNavBar,
    TResult? Function()? getProducts,
    TResult? Function()? getCart,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String productId)? addToCart,
    TResult Function(int index)? changeBottomNavBar,
    TResult Function()? getProducts,
    TResult Function()? getCart,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(changeNavBar value) changeBottomNavBar,
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(GetCartEvent value) getCart,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(changeNavBar value)? changeBottomNavBar,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(GetCartEvent value)? getCart,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(changeNavBar value)? changeBottomNavBar,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(GetCartEvent value)? getCart,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class GetProductsEvent implements HomeEvent {
  const factory GetProductsEvent() = _$GetProductsEventImpl;
}

/// @nodoc
abstract class _$$GetCartEventImplCopyWith<$Res> {
  factory _$$GetCartEventImplCopyWith(
          _$GetCartEventImpl value, $Res Function(_$GetCartEventImpl) then) =
      __$$GetCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCartEventImpl>
    implements _$$GetCartEventImplCopyWith<$Res> {
  __$$GetCartEventImplCopyWithImpl(
      _$GetCartEventImpl _value, $Res Function(_$GetCartEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCartEventImpl implements GetCartEvent {
  const _$GetCartEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String productId) addToCart,
    required TResult Function(int index) changeBottomNavBar,
    required TResult Function() getProducts,
    required TResult Function() getCart,
  }) {
    return getCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String productId)? addToCart,
    TResult? Function(int index)? changeBottomNavBar,
    TResult? Function()? getProducts,
    TResult? Function()? getCart,
  }) {
    return getCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String productId)? addToCart,
    TResult Function(int index)? changeBottomNavBar,
    TResult Function()? getProducts,
    TResult Function()? getCart,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(changeNavBar value) changeBottomNavBar,
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(GetCartEvent value) getCart,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(changeNavBar value)? changeBottomNavBar,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(GetCartEvent value)? getCart,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(changeNavBar value)? changeBottomNavBar,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(GetCartEvent value)? getCart,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class GetCartEvent implements HomeEvent {
  const factory GetCartEvent() = _$GetCartEventImpl;
}

/// @nodoc
mixin _$HomeState {
  RequestStatus get getBrandsStatus => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  int get cartItem => throw _privateConstructorUsedError;
  RequestStatus get getProductsStatus => throw _privateConstructorUsedError;
  RequestStatus get getCategoriesStatus => throw _privateConstructorUsedError;
  RequestStatus get addToCart => throw _privateConstructorUsedError;
  RequestStatus get getCartItemStatus => throw _privateConstructorUsedError;
  BrandModel? get brandModel => throw _privateConstructorUsedError;
  CategoreyModel? get categoreyModel => throw _privateConstructorUsedError;
  ProductModel? get productModel => throw _privateConstructorUsedError;
  Failures? get brandFailure => throw _privateConstructorUsedError;
  Failures? get categoryFailure => throw _privateConstructorUsedError;
  Failures? get productFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {RequestStatus getBrandsStatus,
      int currentIndex,
      int cartItem,
      RequestStatus getProductsStatus,
      RequestStatus getCategoriesStatus,
      RequestStatus addToCart,
      RequestStatus getCartItemStatus,
      BrandModel? brandModel,
      CategoreyModel? categoreyModel,
      ProductModel? productModel,
      Failures? brandFailure,
      Failures? categoryFailure,
      Failures? productFailure});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getBrandsStatus = null,
    Object? currentIndex = null,
    Object? cartItem = null,
    Object? getProductsStatus = null,
    Object? getCategoriesStatus = null,
    Object? addToCart = null,
    Object? getCartItemStatus = null,
    Object? brandModel = freezed,
    Object? categoreyModel = freezed,
    Object? productModel = freezed,
    Object? brandFailure = freezed,
    Object? categoryFailure = freezed,
    Object? productFailure = freezed,
  }) {
    return _then(_value.copyWith(
      getBrandsStatus: null == getBrandsStatus
          ? _value.getBrandsStatus
          : getBrandsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cartItem: null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as int,
      getProductsStatus: null == getProductsStatus
          ? _value.getProductsStatus
          : getProductsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getCategoriesStatus: null == getCategoriesStatus
          ? _value.getCategoriesStatus
          : getCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      addToCart: null == addToCart
          ? _value.addToCart
          : addToCart // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getCartItemStatus: null == getCartItemStatus
          ? _value.getCartItemStatus
          : getCartItemStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      brandModel: freezed == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      categoreyModel: freezed == categoreyModel
          ? _value.categoreyModel
          : categoreyModel // ignore: cast_nullable_to_non_nullable
              as CategoreyModel?,
      productModel: freezed == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      brandFailure: freezed == brandFailure
          ? _value.brandFailure
          : brandFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      categoryFailure: freezed == categoryFailure
          ? _value.categoryFailure
          : categoryFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      productFailure: freezed == productFailure
          ? _value.productFailure
          : productFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus getBrandsStatus,
      int currentIndex,
      int cartItem,
      RequestStatus getProductsStatus,
      RequestStatus getCategoriesStatus,
      RequestStatus addToCart,
      RequestStatus getCartItemStatus,
      BrandModel? brandModel,
      CategoreyModel? categoreyModel,
      ProductModel? productModel,
      Failures? brandFailure,
      Failures? categoryFailure,
      Failures? productFailure});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getBrandsStatus = null,
    Object? currentIndex = null,
    Object? cartItem = null,
    Object? getProductsStatus = null,
    Object? getCategoriesStatus = null,
    Object? addToCart = null,
    Object? getCartItemStatus = null,
    Object? brandModel = freezed,
    Object? categoreyModel = freezed,
    Object? productModel = freezed,
    Object? brandFailure = freezed,
    Object? categoryFailure = freezed,
    Object? productFailure = freezed,
  }) {
    return _then(_$HomeStateImpl(
      getBrandsStatus: null == getBrandsStatus
          ? _value.getBrandsStatus
          : getBrandsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cartItem: null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as int,
      getProductsStatus: null == getProductsStatus
          ? _value.getProductsStatus
          : getProductsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getCategoriesStatus: null == getCategoriesStatus
          ? _value.getCategoriesStatus
          : getCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      addToCart: null == addToCart
          ? _value.addToCart
          : addToCart // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getCartItemStatus: null == getCartItemStatus
          ? _value.getCartItemStatus
          : getCartItemStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      brandModel: freezed == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      categoreyModel: freezed == categoreyModel
          ? _value.categoreyModel
          : categoreyModel // ignore: cast_nullable_to_non_nullable
              as CategoreyModel?,
      productModel: freezed == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      brandFailure: freezed == brandFailure
          ? _value.brandFailure
          : brandFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      categoryFailure: freezed == categoryFailure
          ? _value.categoryFailure
          : categoryFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      productFailure: freezed == productFailure
          ? _value.productFailure
          : productFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.getBrandsStatus = RequestStatus.init,
      this.currentIndex = 0,
      this.cartItem = 0,
      this.getProductsStatus = RequestStatus.init,
      this.getCategoriesStatus = RequestStatus.init,
      this.addToCart = RequestStatus.init,
      this.getCartItemStatus = RequestStatus.init,
      this.brandModel,
      this.categoreyModel,
      this.productModel,
      this.brandFailure,
      this.categoryFailure,
      this.productFailure});

  @override
  @JsonKey()
  final RequestStatus getBrandsStatus;
  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final int cartItem;
  @override
  @JsonKey()
  final RequestStatus getProductsStatus;
  @override
  @JsonKey()
  final RequestStatus getCategoriesStatus;
  @override
  @JsonKey()
  final RequestStatus addToCart;
  @override
  @JsonKey()
  final RequestStatus getCartItemStatus;
  @override
  final BrandModel? brandModel;
  @override
  final CategoreyModel? categoreyModel;
  @override
  final ProductModel? productModel;
  @override
  final Failures? brandFailure;
  @override
  final Failures? categoryFailure;
  @override
  final Failures? productFailure;

  @override
  String toString() {
    return 'HomeState(getBrandsStatus: $getBrandsStatus, currentIndex: $currentIndex, cartItem: $cartItem, getProductsStatus: $getProductsStatus, getCategoriesStatus: $getCategoriesStatus, addToCart: $addToCart, getCartItemStatus: $getCartItemStatus, brandModel: $brandModel, categoreyModel: $categoreyModel, productModel: $productModel, brandFailure: $brandFailure, categoryFailure: $categoryFailure, productFailure: $productFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.getBrandsStatus, getBrandsStatus) ||
                other.getBrandsStatus == getBrandsStatus) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem) &&
            (identical(other.getProductsStatus, getProductsStatus) ||
                other.getProductsStatus == getProductsStatus) &&
            (identical(other.getCategoriesStatus, getCategoriesStatus) ||
                other.getCategoriesStatus == getCategoriesStatus) &&
            (identical(other.addToCart, addToCart) ||
                other.addToCart == addToCart) &&
            (identical(other.getCartItemStatus, getCartItemStatus) ||
                other.getCartItemStatus == getCartItemStatus) &&
            (identical(other.brandModel, brandModel) ||
                other.brandModel == brandModel) &&
            (identical(other.categoreyModel, categoreyModel) ||
                other.categoreyModel == categoreyModel) &&
            (identical(other.productModel, productModel) ||
                other.productModel == productModel) &&
            (identical(other.brandFailure, brandFailure) ||
                other.brandFailure == brandFailure) &&
            (identical(other.categoryFailure, categoryFailure) ||
                other.categoryFailure == categoryFailure) &&
            (identical(other.productFailure, productFailure) ||
                other.productFailure == productFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getBrandsStatus,
      currentIndex,
      cartItem,
      getProductsStatus,
      getCategoriesStatus,
      addToCart,
      getCartItemStatus,
      brandModel,
      categoreyModel,
      productModel,
      brandFailure,
      categoryFailure,
      productFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final RequestStatus getBrandsStatus,
      final int currentIndex,
      final int cartItem,
      final RequestStatus getProductsStatus,
      final RequestStatus getCategoriesStatus,
      final RequestStatus addToCart,
      final RequestStatus getCartItemStatus,
      final BrandModel? brandModel,
      final CategoreyModel? categoreyModel,
      final ProductModel? productModel,
      final Failures? brandFailure,
      final Failures? categoryFailure,
      final Failures? productFailure}) = _$HomeStateImpl;

  @override
  RequestStatus get getBrandsStatus;
  @override
  int get currentIndex;
  @override
  int get cartItem;
  @override
  RequestStatus get getProductsStatus;
  @override
  RequestStatus get getCategoriesStatus;
  @override
  RequestStatus get addToCart;
  @override
  RequestStatus get getCartItemStatus;
  @override
  BrandModel? get brandModel;
  @override
  CategoreyModel? get categoreyModel;
  @override
  ProductModel? get productModel;
  @override
  Failures? get brandFailure;
  @override
  Failures? get categoryFailure;
  @override
  Failures? get productFailure;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
