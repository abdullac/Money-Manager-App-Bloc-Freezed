// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeBottomNavigationBarItem,
    required TResult Function(bool isViewGoBackButton) viewAppbarBackButton,
    required TResult Function(String appBarTitle) changeAppBarTitle,
    required TResult Function(AppbarActionButton appbarActionButton)
        changeActionButton,
    required TResult Function() gotoAddTransactionPage,
    required TResult Function(Widget gotoWidget) gotoPageWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeBottomNavigationBarItem,
    TResult? Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult? Function(String appBarTitle)? changeAppBarTitle,
    TResult? Function(AppbarActionButton appbarActionButton)?
        changeActionButton,
    TResult? Function()? gotoAddTransactionPage,
    TResult? Function(Widget gotoWidget)? gotoPageWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeBottomNavigationBarItem,
    TResult Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult Function(String appBarTitle)? changeAppBarTitle,
    TResult Function(AppbarActionButton appbarActionButton)? changeActionButton,
    TResult Function()? gotoAddTransactionPage,
    TResult Function(Widget gotoWidget)? gotoPageWidget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavigationBarItem value)
        changeBottomNavigationBarItem,
    required TResult Function(ViewAppbarBackButton value) viewAppbarBackButton,
    required TResult Function(ChangeAppBarTitle value) changeAppBarTitle,
    required TResult Function(ChangeActionButton value) changeActionButton,
    required TResult Function(GotoAddTransactionPage value)
        gotoAddTransactionPage,
    required TResult Function(GotoPageWidget value) gotoPageWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult? Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult? Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult? Function(ChangeActionButton value)? changeActionButton,
    TResult? Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult? Function(GotoPageWidget value)? gotoPageWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult Function(ChangeActionButton value)? changeActionButton,
    TResult Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult Function(GotoPageWidget value)? gotoPageWidget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageEventCopyWith<$Res> {
  factory $MainPageEventCopyWith(
          MainPageEvent value, $Res Function(MainPageEvent) then) =
      _$MainPageEventCopyWithImpl<$Res, MainPageEvent>;
}

/// @nodoc
class _$MainPageEventCopyWithImpl<$Res, $Val extends MainPageEvent>
    implements $MainPageEventCopyWith<$Res> {
  _$MainPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeBottomNavigationBarItemCopyWith<$Res> {
  factory _$$ChangeBottomNavigationBarItemCopyWith(
          _$ChangeBottomNavigationBarItem value,
          $Res Function(_$ChangeBottomNavigationBarItem) then) =
      __$$ChangeBottomNavigationBarItemCopyWithImpl<$Res>;
  @useResult
  $Res call({int position});
}

/// @nodoc
class __$$ChangeBottomNavigationBarItemCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res, _$ChangeBottomNavigationBarItem>
    implements _$$ChangeBottomNavigationBarItemCopyWith<$Res> {
  __$$ChangeBottomNavigationBarItemCopyWithImpl(
      _$ChangeBottomNavigationBarItem _value,
      $Res Function(_$ChangeBottomNavigationBarItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$ChangeBottomNavigationBarItem(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeBottomNavigationBarItem implements ChangeBottomNavigationBarItem {
  const _$ChangeBottomNavigationBarItem({required this.position});

  @override
  final int position;

  @override
  String toString() {
    return 'MainPageEvent.changeBottomNavigationBarItem(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBottomNavigationBarItem &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeBottomNavigationBarItemCopyWith<_$ChangeBottomNavigationBarItem>
      get copyWith => __$$ChangeBottomNavigationBarItemCopyWithImpl<
          _$ChangeBottomNavigationBarItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeBottomNavigationBarItem,
    required TResult Function(bool isViewGoBackButton) viewAppbarBackButton,
    required TResult Function(String appBarTitle) changeAppBarTitle,
    required TResult Function(AppbarActionButton appbarActionButton)
        changeActionButton,
    required TResult Function() gotoAddTransactionPage,
    required TResult Function(Widget gotoWidget) gotoPageWidget,
  }) {
    return changeBottomNavigationBarItem(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeBottomNavigationBarItem,
    TResult? Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult? Function(String appBarTitle)? changeAppBarTitle,
    TResult? Function(AppbarActionButton appbarActionButton)?
        changeActionButton,
    TResult? Function()? gotoAddTransactionPage,
    TResult? Function(Widget gotoWidget)? gotoPageWidget,
  }) {
    return changeBottomNavigationBarItem?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeBottomNavigationBarItem,
    TResult Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult Function(String appBarTitle)? changeAppBarTitle,
    TResult Function(AppbarActionButton appbarActionButton)? changeActionButton,
    TResult Function()? gotoAddTransactionPage,
    TResult Function(Widget gotoWidget)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (changeBottomNavigationBarItem != null) {
      return changeBottomNavigationBarItem(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavigationBarItem value)
        changeBottomNavigationBarItem,
    required TResult Function(ViewAppbarBackButton value) viewAppbarBackButton,
    required TResult Function(ChangeAppBarTitle value) changeAppBarTitle,
    required TResult Function(ChangeActionButton value) changeActionButton,
    required TResult Function(GotoAddTransactionPage value)
        gotoAddTransactionPage,
    required TResult Function(GotoPageWidget value) gotoPageWidget,
  }) {
    return changeBottomNavigationBarItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult? Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult? Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult? Function(ChangeActionButton value)? changeActionButton,
    TResult? Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult? Function(GotoPageWidget value)? gotoPageWidget,
  }) {
    return changeBottomNavigationBarItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult Function(ChangeActionButton value)? changeActionButton,
    TResult Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult Function(GotoPageWidget value)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (changeBottomNavigationBarItem != null) {
      return changeBottomNavigationBarItem(this);
    }
    return orElse();
  }
}

abstract class ChangeBottomNavigationBarItem implements MainPageEvent {
  const factory ChangeBottomNavigationBarItem({required final int position}) =
      _$ChangeBottomNavigationBarItem;

  int get position;
  @JsonKey(ignore: true)
  _$$ChangeBottomNavigationBarItemCopyWith<_$ChangeBottomNavigationBarItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewAppbarBackButtonCopyWith<$Res> {
  factory _$$ViewAppbarBackButtonCopyWith(_$ViewAppbarBackButton value,
          $Res Function(_$ViewAppbarBackButton) then) =
      __$$ViewAppbarBackButtonCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isViewGoBackButton});
}

/// @nodoc
class __$$ViewAppbarBackButtonCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res, _$ViewAppbarBackButton>
    implements _$$ViewAppbarBackButtonCopyWith<$Res> {
  __$$ViewAppbarBackButtonCopyWithImpl(_$ViewAppbarBackButton _value,
      $Res Function(_$ViewAppbarBackButton) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isViewGoBackButton = null,
  }) {
    return _then(_$ViewAppbarBackButton(
      isViewGoBackButton: null == isViewGoBackButton
          ? _value.isViewGoBackButton
          : isViewGoBackButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ViewAppbarBackButton implements ViewAppbarBackButton {
  const _$ViewAppbarBackButton({required this.isViewGoBackButton});

  @override
  final bool isViewGoBackButton;

  @override
  String toString() {
    return 'MainPageEvent.viewAppbarBackButton(isViewGoBackButton: $isViewGoBackButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewAppbarBackButton &&
            (identical(other.isViewGoBackButton, isViewGoBackButton) ||
                other.isViewGoBackButton == isViewGoBackButton));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isViewGoBackButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewAppbarBackButtonCopyWith<_$ViewAppbarBackButton> get copyWith =>
      __$$ViewAppbarBackButtonCopyWithImpl<_$ViewAppbarBackButton>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeBottomNavigationBarItem,
    required TResult Function(bool isViewGoBackButton) viewAppbarBackButton,
    required TResult Function(String appBarTitle) changeAppBarTitle,
    required TResult Function(AppbarActionButton appbarActionButton)
        changeActionButton,
    required TResult Function() gotoAddTransactionPage,
    required TResult Function(Widget gotoWidget) gotoPageWidget,
  }) {
    return viewAppbarBackButton(isViewGoBackButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeBottomNavigationBarItem,
    TResult? Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult? Function(String appBarTitle)? changeAppBarTitle,
    TResult? Function(AppbarActionButton appbarActionButton)?
        changeActionButton,
    TResult? Function()? gotoAddTransactionPage,
    TResult? Function(Widget gotoWidget)? gotoPageWidget,
  }) {
    return viewAppbarBackButton?.call(isViewGoBackButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeBottomNavigationBarItem,
    TResult Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult Function(String appBarTitle)? changeAppBarTitle,
    TResult Function(AppbarActionButton appbarActionButton)? changeActionButton,
    TResult Function()? gotoAddTransactionPage,
    TResult Function(Widget gotoWidget)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (viewAppbarBackButton != null) {
      return viewAppbarBackButton(isViewGoBackButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavigationBarItem value)
        changeBottomNavigationBarItem,
    required TResult Function(ViewAppbarBackButton value) viewAppbarBackButton,
    required TResult Function(ChangeAppBarTitle value) changeAppBarTitle,
    required TResult Function(ChangeActionButton value) changeActionButton,
    required TResult Function(GotoAddTransactionPage value)
        gotoAddTransactionPage,
    required TResult Function(GotoPageWidget value) gotoPageWidget,
  }) {
    return viewAppbarBackButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult? Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult? Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult? Function(ChangeActionButton value)? changeActionButton,
    TResult? Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult? Function(GotoPageWidget value)? gotoPageWidget,
  }) {
    return viewAppbarBackButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult Function(ChangeActionButton value)? changeActionButton,
    TResult Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult Function(GotoPageWidget value)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (viewAppbarBackButton != null) {
      return viewAppbarBackButton(this);
    }
    return orElse();
  }
}

abstract class ViewAppbarBackButton implements MainPageEvent {
  const factory ViewAppbarBackButton({required final bool isViewGoBackButton}) =
      _$ViewAppbarBackButton;

  bool get isViewGoBackButton;
  @JsonKey(ignore: true)
  _$$ViewAppbarBackButtonCopyWith<_$ViewAppbarBackButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAppBarTitleCopyWith<$Res> {
  factory _$$ChangeAppBarTitleCopyWith(
          _$ChangeAppBarTitle value, $Res Function(_$ChangeAppBarTitle) then) =
      __$$ChangeAppBarTitleCopyWithImpl<$Res>;
  @useResult
  $Res call({String appBarTitle});
}

/// @nodoc
class __$$ChangeAppBarTitleCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res, _$ChangeAppBarTitle>
    implements _$$ChangeAppBarTitleCopyWith<$Res> {
  __$$ChangeAppBarTitleCopyWithImpl(
      _$ChangeAppBarTitle _value, $Res Function(_$ChangeAppBarTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appBarTitle = null,
  }) {
    return _then(_$ChangeAppBarTitle(
      appBarTitle: null == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeAppBarTitle implements ChangeAppBarTitle {
  const _$ChangeAppBarTitle({required this.appBarTitle});

  @override
  final String appBarTitle;

  @override
  String toString() {
    return 'MainPageEvent.changeAppBarTitle(appBarTitle: $appBarTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAppBarTitle &&
            (identical(other.appBarTitle, appBarTitle) ||
                other.appBarTitle == appBarTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appBarTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAppBarTitleCopyWith<_$ChangeAppBarTitle> get copyWith =>
      __$$ChangeAppBarTitleCopyWithImpl<_$ChangeAppBarTitle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeBottomNavigationBarItem,
    required TResult Function(bool isViewGoBackButton) viewAppbarBackButton,
    required TResult Function(String appBarTitle) changeAppBarTitle,
    required TResult Function(AppbarActionButton appbarActionButton)
        changeActionButton,
    required TResult Function() gotoAddTransactionPage,
    required TResult Function(Widget gotoWidget) gotoPageWidget,
  }) {
    return changeAppBarTitle(appBarTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeBottomNavigationBarItem,
    TResult? Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult? Function(String appBarTitle)? changeAppBarTitle,
    TResult? Function(AppbarActionButton appbarActionButton)?
        changeActionButton,
    TResult? Function()? gotoAddTransactionPage,
    TResult? Function(Widget gotoWidget)? gotoPageWidget,
  }) {
    return changeAppBarTitle?.call(appBarTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeBottomNavigationBarItem,
    TResult Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult Function(String appBarTitle)? changeAppBarTitle,
    TResult Function(AppbarActionButton appbarActionButton)? changeActionButton,
    TResult Function()? gotoAddTransactionPage,
    TResult Function(Widget gotoWidget)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (changeAppBarTitle != null) {
      return changeAppBarTitle(appBarTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavigationBarItem value)
        changeBottomNavigationBarItem,
    required TResult Function(ViewAppbarBackButton value) viewAppbarBackButton,
    required TResult Function(ChangeAppBarTitle value) changeAppBarTitle,
    required TResult Function(ChangeActionButton value) changeActionButton,
    required TResult Function(GotoAddTransactionPage value)
        gotoAddTransactionPage,
    required TResult Function(GotoPageWidget value) gotoPageWidget,
  }) {
    return changeAppBarTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult? Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult? Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult? Function(ChangeActionButton value)? changeActionButton,
    TResult? Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult? Function(GotoPageWidget value)? gotoPageWidget,
  }) {
    return changeAppBarTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult Function(ChangeActionButton value)? changeActionButton,
    TResult Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult Function(GotoPageWidget value)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (changeAppBarTitle != null) {
      return changeAppBarTitle(this);
    }
    return orElse();
  }
}

abstract class ChangeAppBarTitle implements MainPageEvent {
  const factory ChangeAppBarTitle({required final String appBarTitle}) =
      _$ChangeAppBarTitle;

  String get appBarTitle;
  @JsonKey(ignore: true)
  _$$ChangeAppBarTitleCopyWith<_$ChangeAppBarTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeActionButtonCopyWith<$Res> {
  factory _$$ChangeActionButtonCopyWith(_$ChangeActionButton value,
          $Res Function(_$ChangeActionButton) then) =
      __$$ChangeActionButtonCopyWithImpl<$Res>;
  @useResult
  $Res call({AppbarActionButton appbarActionButton});
}

/// @nodoc
class __$$ChangeActionButtonCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res, _$ChangeActionButton>
    implements _$$ChangeActionButtonCopyWith<$Res> {
  __$$ChangeActionButtonCopyWithImpl(
      _$ChangeActionButton _value, $Res Function(_$ChangeActionButton) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appbarActionButton = null,
  }) {
    return _then(_$ChangeActionButton(
      appbarActionButton: null == appbarActionButton
          ? _value.appbarActionButton
          : appbarActionButton // ignore: cast_nullable_to_non_nullable
              as AppbarActionButton,
    ));
  }
}

/// @nodoc

class _$ChangeActionButton implements ChangeActionButton {
  const _$ChangeActionButton({required this.appbarActionButton});

  @override
  final AppbarActionButton appbarActionButton;

  @override
  String toString() {
    return 'MainPageEvent.changeActionButton(appbarActionButton: $appbarActionButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeActionButton &&
            (identical(other.appbarActionButton, appbarActionButton) ||
                other.appbarActionButton == appbarActionButton));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appbarActionButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeActionButtonCopyWith<_$ChangeActionButton> get copyWith =>
      __$$ChangeActionButtonCopyWithImpl<_$ChangeActionButton>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeBottomNavigationBarItem,
    required TResult Function(bool isViewGoBackButton) viewAppbarBackButton,
    required TResult Function(String appBarTitle) changeAppBarTitle,
    required TResult Function(AppbarActionButton appbarActionButton)
        changeActionButton,
    required TResult Function() gotoAddTransactionPage,
    required TResult Function(Widget gotoWidget) gotoPageWidget,
  }) {
    return changeActionButton(appbarActionButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeBottomNavigationBarItem,
    TResult? Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult? Function(String appBarTitle)? changeAppBarTitle,
    TResult? Function(AppbarActionButton appbarActionButton)?
        changeActionButton,
    TResult? Function()? gotoAddTransactionPage,
    TResult? Function(Widget gotoWidget)? gotoPageWidget,
  }) {
    return changeActionButton?.call(appbarActionButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeBottomNavigationBarItem,
    TResult Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult Function(String appBarTitle)? changeAppBarTitle,
    TResult Function(AppbarActionButton appbarActionButton)? changeActionButton,
    TResult Function()? gotoAddTransactionPage,
    TResult Function(Widget gotoWidget)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (changeActionButton != null) {
      return changeActionButton(appbarActionButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavigationBarItem value)
        changeBottomNavigationBarItem,
    required TResult Function(ViewAppbarBackButton value) viewAppbarBackButton,
    required TResult Function(ChangeAppBarTitle value) changeAppBarTitle,
    required TResult Function(ChangeActionButton value) changeActionButton,
    required TResult Function(GotoAddTransactionPage value)
        gotoAddTransactionPage,
    required TResult Function(GotoPageWidget value) gotoPageWidget,
  }) {
    return changeActionButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult? Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult? Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult? Function(ChangeActionButton value)? changeActionButton,
    TResult? Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult? Function(GotoPageWidget value)? gotoPageWidget,
  }) {
    return changeActionButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult Function(ChangeActionButton value)? changeActionButton,
    TResult Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult Function(GotoPageWidget value)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (changeActionButton != null) {
      return changeActionButton(this);
    }
    return orElse();
  }
}

abstract class ChangeActionButton implements MainPageEvent {
  const factory ChangeActionButton(
          {required final AppbarActionButton appbarActionButton}) =
      _$ChangeActionButton;

  AppbarActionButton get appbarActionButton;
  @JsonKey(ignore: true)
  _$$ChangeActionButtonCopyWith<_$ChangeActionButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GotoAddTransactionPageCopyWith<$Res> {
  factory _$$GotoAddTransactionPageCopyWith(_$GotoAddTransactionPage value,
          $Res Function(_$GotoAddTransactionPage) then) =
      __$$GotoAddTransactionPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GotoAddTransactionPageCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res, _$GotoAddTransactionPage>
    implements _$$GotoAddTransactionPageCopyWith<$Res> {
  __$$GotoAddTransactionPageCopyWithImpl(_$GotoAddTransactionPage _value,
      $Res Function(_$GotoAddTransactionPage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GotoAddTransactionPage implements GotoAddTransactionPage {
  const _$GotoAddTransactionPage();

  @override
  String toString() {
    return 'MainPageEvent.gotoAddTransactionPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GotoAddTransactionPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeBottomNavigationBarItem,
    required TResult Function(bool isViewGoBackButton) viewAppbarBackButton,
    required TResult Function(String appBarTitle) changeAppBarTitle,
    required TResult Function(AppbarActionButton appbarActionButton)
        changeActionButton,
    required TResult Function() gotoAddTransactionPage,
    required TResult Function(Widget gotoWidget) gotoPageWidget,
  }) {
    return gotoAddTransactionPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeBottomNavigationBarItem,
    TResult? Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult? Function(String appBarTitle)? changeAppBarTitle,
    TResult? Function(AppbarActionButton appbarActionButton)?
        changeActionButton,
    TResult? Function()? gotoAddTransactionPage,
    TResult? Function(Widget gotoWidget)? gotoPageWidget,
  }) {
    return gotoAddTransactionPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeBottomNavigationBarItem,
    TResult Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult Function(String appBarTitle)? changeAppBarTitle,
    TResult Function(AppbarActionButton appbarActionButton)? changeActionButton,
    TResult Function()? gotoAddTransactionPage,
    TResult Function(Widget gotoWidget)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (gotoAddTransactionPage != null) {
      return gotoAddTransactionPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavigationBarItem value)
        changeBottomNavigationBarItem,
    required TResult Function(ViewAppbarBackButton value) viewAppbarBackButton,
    required TResult Function(ChangeAppBarTitle value) changeAppBarTitle,
    required TResult Function(ChangeActionButton value) changeActionButton,
    required TResult Function(GotoAddTransactionPage value)
        gotoAddTransactionPage,
    required TResult Function(GotoPageWidget value) gotoPageWidget,
  }) {
    return gotoAddTransactionPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult? Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult? Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult? Function(ChangeActionButton value)? changeActionButton,
    TResult? Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult? Function(GotoPageWidget value)? gotoPageWidget,
  }) {
    return gotoAddTransactionPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult Function(ChangeActionButton value)? changeActionButton,
    TResult Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult Function(GotoPageWidget value)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (gotoAddTransactionPage != null) {
      return gotoAddTransactionPage(this);
    }
    return orElse();
  }
}

abstract class GotoAddTransactionPage implements MainPageEvent {
  const factory GotoAddTransactionPage() = _$GotoAddTransactionPage;
}

/// @nodoc
abstract class _$$GotoPageWidgetCopyWith<$Res> {
  factory _$$GotoPageWidgetCopyWith(
          _$GotoPageWidget value, $Res Function(_$GotoPageWidget) then) =
      __$$GotoPageWidgetCopyWithImpl<$Res>;
  @useResult
  $Res call({Widget gotoWidget});
}

/// @nodoc
class __$$GotoPageWidgetCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res, _$GotoPageWidget>
    implements _$$GotoPageWidgetCopyWith<$Res> {
  __$$GotoPageWidgetCopyWithImpl(
      _$GotoPageWidget _value, $Res Function(_$GotoPageWidget) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gotoWidget = null,
  }) {
    return _then(_$GotoPageWidget(
      gotoWidget: null == gotoWidget
          ? _value.gotoWidget
          : gotoWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$GotoPageWidget implements GotoPageWidget {
  const _$GotoPageWidget({required this.gotoWidget});

  @override
  final Widget gotoWidget;

  @override
  String toString() {
    return 'MainPageEvent.gotoPageWidget(gotoWidget: $gotoWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoPageWidget &&
            (identical(other.gotoWidget, gotoWidget) ||
                other.gotoWidget == gotoWidget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gotoWidget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotoPageWidgetCopyWith<_$GotoPageWidget> get copyWith =>
      __$$GotoPageWidgetCopyWithImpl<_$GotoPageWidget>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeBottomNavigationBarItem,
    required TResult Function(bool isViewGoBackButton) viewAppbarBackButton,
    required TResult Function(String appBarTitle) changeAppBarTitle,
    required TResult Function(AppbarActionButton appbarActionButton)
        changeActionButton,
    required TResult Function() gotoAddTransactionPage,
    required TResult Function(Widget gotoWidget) gotoPageWidget,
  }) {
    return gotoPageWidget(gotoWidget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeBottomNavigationBarItem,
    TResult? Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult? Function(String appBarTitle)? changeAppBarTitle,
    TResult? Function(AppbarActionButton appbarActionButton)?
        changeActionButton,
    TResult? Function()? gotoAddTransactionPage,
    TResult? Function(Widget gotoWidget)? gotoPageWidget,
  }) {
    return gotoPageWidget?.call(gotoWidget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeBottomNavigationBarItem,
    TResult Function(bool isViewGoBackButton)? viewAppbarBackButton,
    TResult Function(String appBarTitle)? changeAppBarTitle,
    TResult Function(AppbarActionButton appbarActionButton)? changeActionButton,
    TResult Function()? gotoAddTransactionPage,
    TResult Function(Widget gotoWidget)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (gotoPageWidget != null) {
      return gotoPageWidget(gotoWidget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavigationBarItem value)
        changeBottomNavigationBarItem,
    required TResult Function(ViewAppbarBackButton value) viewAppbarBackButton,
    required TResult Function(ChangeAppBarTitle value) changeAppBarTitle,
    required TResult Function(ChangeActionButton value) changeActionButton,
    required TResult Function(GotoAddTransactionPage value)
        gotoAddTransactionPage,
    required TResult Function(GotoPageWidget value) gotoPageWidget,
  }) {
    return gotoPageWidget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult? Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult? Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult? Function(ChangeActionButton value)? changeActionButton,
    TResult? Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult? Function(GotoPageWidget value)? gotoPageWidget,
  }) {
    return gotoPageWidget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBarItem value)?
        changeBottomNavigationBarItem,
    TResult Function(ViewAppbarBackButton value)? viewAppbarBackButton,
    TResult Function(ChangeAppBarTitle value)? changeAppBarTitle,
    TResult Function(ChangeActionButton value)? changeActionButton,
    TResult Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult Function(GotoPageWidget value)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (gotoPageWidget != null) {
      return gotoPageWidget(this);
    }
    return orElse();
  }
}

abstract class GotoPageWidget implements MainPageEvent {
  const factory GotoPageWidget({required final Widget gotoWidget}) =
      _$GotoPageWidget;

  Widget get gotoWidget;
  @JsonKey(ignore: true)
  _$$GotoPageWidgetCopyWith<_$GotoPageWidget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainPageState {
  int get position => throw _privateConstructorUsedError;
  Widget get goBackButton => throw _privateConstructorUsedError;
  String get appBarTitle => throw _privateConstructorUsedError;
  IconData? get icon =>
      throw _privateConstructorUsedError; // required Widget? addTransactionPage,
  Widget? get goToWidget => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageStateCopyWith<MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res, MainPageState>;
  @useResult
  $Res call(
      {int position,
      Widget goBackButton,
      String appBarTitle,
      IconData? icon,
      Widget? goToWidget});
}

/// @nodoc
class _$MainPageStateCopyWithImpl<$Res, $Val extends MainPageState>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? goBackButton = null,
    Object? appBarTitle = null,
    Object? icon = freezed,
    Object? goToWidget = freezed,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      goBackButton: null == goBackButton
          ? _value.goBackButton
          : goBackButton // ignore: cast_nullable_to_non_nullable
              as Widget,
      appBarTitle: null == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      goToWidget: freezed == goToWidget
          ? _value.goToWidget
          : goToWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainPageStateCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$$_MainPageStateCopyWith(
          _$_MainPageState value, $Res Function(_$_MainPageState) then) =
      __$$_MainPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int position,
      Widget goBackButton,
      String appBarTitle,
      IconData? icon,
      Widget? goToWidget});
}

/// @nodoc
class __$$_MainPageStateCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res, _$_MainPageState>
    implements _$$_MainPageStateCopyWith<$Res> {
  __$$_MainPageStateCopyWithImpl(
      _$_MainPageState _value, $Res Function(_$_MainPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? goBackButton = null,
    Object? appBarTitle = null,
    Object? icon = freezed,
    Object? goToWidget = freezed,
  }) {
    return _then(_$_MainPageState(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      goBackButton: null == goBackButton
          ? _value.goBackButton
          : goBackButton // ignore: cast_nullable_to_non_nullable
              as Widget,
      appBarTitle: null == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      goToWidget: freezed == goToWidget
          ? _value.goToWidget
          : goToWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$_MainPageState implements _MainPageState {
  const _$_MainPageState(
      {required this.position,
      required this.goBackButton,
      required this.appBarTitle,
      required this.icon,
      required this.goToWidget});

  @override
  final int position;
  @override
  final Widget goBackButton;
  @override
  final String appBarTitle;
  @override
  final IconData? icon;
// required Widget? addTransactionPage,
  @override
  final Widget? goToWidget;

  @override
  String toString() {
    return 'MainPageState(position: $position, goBackButton: $goBackButton, appBarTitle: $appBarTitle, icon: $icon, goToWidget: $goToWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainPageState &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.goBackButton, goBackButton) ||
                other.goBackButton == goBackButton) &&
            (identical(other.appBarTitle, appBarTitle) ||
                other.appBarTitle == appBarTitle) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.goToWidget, goToWidget) ||
                other.goToWidget == goToWidget));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, position, goBackButton, appBarTitle, icon, goToWidget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainPageStateCopyWith<_$_MainPageState> get copyWith =>
      __$$_MainPageStateCopyWithImpl<_$_MainPageState>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  const factory _MainPageState(
      {required final int position,
      required final Widget goBackButton,
      required final String appBarTitle,
      required final IconData? icon,
      required final Widget? goToWidget}) = _$_MainPageState;

  @override
  int get position;
  @override
  Widget get goBackButton;
  @override
  String get appBarTitle;
  @override
  IconData? get icon;
  @override // required Widget? addTransactionPage,
  Widget? get goToWidget;
  @override
  @JsonKey(ignore: true)
  _$$_MainPageStateCopyWith<_$_MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
