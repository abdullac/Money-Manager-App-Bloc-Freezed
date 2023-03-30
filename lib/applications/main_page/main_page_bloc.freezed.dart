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
    required TResult Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)
        viewMainPage,
    required TResult Function() gotoAddTransactionPage,
    required TResult Function(Widget gotoWidget) gotoPageWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)?
        viewMainPage,
    TResult? Function()? gotoAddTransactionPage,
    TResult? Function(Widget gotoWidget)? gotoPageWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)?
        viewMainPage,
    TResult Function()? gotoAddTransactionPage,
    TResult Function(Widget gotoWidget)? gotoPageWidget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewMainPage value) viewMainPage,
    required TResult Function(GotoAddTransactionPage value)
        gotoAddTransactionPage,
    required TResult Function(GotoPageWidget value) gotoPageWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewMainPage value)? viewMainPage,
    TResult? Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult? Function(GotoPageWidget value)? gotoPageWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewMainPage value)? viewMainPage,
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
abstract class _$$ViewMainPageCopyWith<$Res> {
  factory _$$ViewMainPageCopyWith(
          _$ViewMainPage value, $Res Function(_$ViewMainPage) then) =
      __$$ViewMainPageCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle});
}

/// @nodoc
class __$$ViewMainPageCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res, _$ViewMainPage>
    implements _$$ViewMainPageCopyWith<$Res> {
  __$$ViewMainPageCopyWithImpl(
      _$ViewMainPage _value, $Res Function(_$ViewMainPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gotoScreen = null,
    Object? gotoWidget = null,
    Object? transactionItemTitle = freezed,
  }) {
    return _then(_$ViewMainPage(
      gotoScreen: null == gotoScreen
          ? _value.gotoScreen
          : gotoScreen // ignore: cast_nullable_to_non_nullable
              as Screen,
      gotoWidget: null == gotoWidget
          ? _value.gotoWidget
          : gotoWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
      transactionItemTitle: freezed == transactionItemTitle
          ? _value.transactionItemTitle
          : transactionItemTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ViewMainPage implements ViewMainPage {
  const _$ViewMainPage(
      {required this.gotoScreen,
      required this.gotoWidget,
      this.transactionItemTitle});

  @override
  final Screen gotoScreen;
  @override
  final Widget gotoWidget;
  @override
  final String? transactionItemTitle;

  @override
  String toString() {
    return 'MainPageEvent.viewMainPage(gotoScreen: $gotoScreen, gotoWidget: $gotoWidget, transactionItemTitle: $transactionItemTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewMainPage &&
            (identical(other.gotoScreen, gotoScreen) ||
                other.gotoScreen == gotoScreen) &&
            (identical(other.gotoWidget, gotoWidget) ||
                other.gotoWidget == gotoWidget) &&
            (identical(other.transactionItemTitle, transactionItemTitle) ||
                other.transactionItemTitle == transactionItemTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, gotoScreen, gotoWidget, transactionItemTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewMainPageCopyWith<_$ViewMainPage> get copyWith =>
      __$$ViewMainPageCopyWithImpl<_$ViewMainPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)
        viewMainPage,
    required TResult Function() gotoAddTransactionPage,
    required TResult Function(Widget gotoWidget) gotoPageWidget,
  }) {
    return viewMainPage(gotoScreen, gotoWidget, transactionItemTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)?
        viewMainPage,
    TResult? Function()? gotoAddTransactionPage,
    TResult? Function(Widget gotoWidget)? gotoPageWidget,
  }) {
    return viewMainPage?.call(gotoScreen, gotoWidget, transactionItemTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)?
        viewMainPage,
    TResult Function()? gotoAddTransactionPage,
    TResult Function(Widget gotoWidget)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (viewMainPage != null) {
      return viewMainPage(gotoScreen, gotoWidget, transactionItemTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewMainPage value) viewMainPage,
    required TResult Function(GotoAddTransactionPage value)
        gotoAddTransactionPage,
    required TResult Function(GotoPageWidget value) gotoPageWidget,
  }) {
    return viewMainPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewMainPage value)? viewMainPage,
    TResult? Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult? Function(GotoPageWidget value)? gotoPageWidget,
  }) {
    return viewMainPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewMainPage value)? viewMainPage,
    TResult Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult Function(GotoPageWidget value)? gotoPageWidget,
    required TResult orElse(),
  }) {
    if (viewMainPage != null) {
      return viewMainPage(this);
    }
    return orElse();
  }
}

abstract class ViewMainPage implements MainPageEvent {
  const factory ViewMainPage(
      {required final Screen gotoScreen,
      required final Widget gotoWidget,
      final String? transactionItemTitle}) = _$ViewMainPage;

  Screen get gotoScreen;
  Widget get gotoWidget;
  String? get transactionItemTitle;
  @JsonKey(ignore: true)
  _$$ViewMainPageCopyWith<_$ViewMainPage> get copyWith =>
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
    required TResult Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)
        viewMainPage,
    required TResult Function() gotoAddTransactionPage,
    required TResult Function(Widget gotoWidget) gotoPageWidget,
  }) {
    return gotoAddTransactionPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)?
        viewMainPage,
    TResult? Function()? gotoAddTransactionPage,
    TResult? Function(Widget gotoWidget)? gotoPageWidget,
  }) {
    return gotoAddTransactionPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)?
        viewMainPage,
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
    required TResult Function(ViewMainPage value) viewMainPage,
    required TResult Function(GotoAddTransactionPage value)
        gotoAddTransactionPage,
    required TResult Function(GotoPageWidget value) gotoPageWidget,
  }) {
    return gotoAddTransactionPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewMainPage value)? viewMainPage,
    TResult? Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult? Function(GotoPageWidget value)? gotoPageWidget,
  }) {
    return gotoAddTransactionPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewMainPage value)? viewMainPage,
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
    required TResult Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)
        viewMainPage,
    required TResult Function() gotoAddTransactionPage,
    required TResult Function(Widget gotoWidget) gotoPageWidget,
  }) {
    return gotoPageWidget(gotoWidget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)?
        viewMainPage,
    TResult? Function()? gotoAddTransactionPage,
    TResult? Function(Widget gotoWidget)? gotoPageWidget,
  }) {
    return gotoPageWidget?.call(gotoWidget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Screen gotoScreen, Widget gotoWidget, String? transactionItemTitle)?
        viewMainPage,
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
    required TResult Function(ViewMainPage value) viewMainPage,
    required TResult Function(GotoAddTransactionPage value)
        gotoAddTransactionPage,
    required TResult Function(GotoPageWidget value) gotoPageWidget,
  }) {
    return gotoPageWidget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewMainPage value)? viewMainPage,
    TResult? Function(GotoAddTransactionPage value)? gotoAddTransactionPage,
    TResult? Function(GotoPageWidget value)? gotoPageWidget,
  }) {
    return gotoPageWidget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewMainPage value)? viewMainPage,
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
  int? get position => throw _privateConstructorUsedError;
  Widget get appBarLeadingWidget => throw _privateConstructorUsedError;
  String get appBarTitle => throw _privateConstructorUsedError;
  IconData? get actionIconButton =>
      throw _privateConstructorUsedError; // required Widget? addTransactionPage,
  Widget get goToWidget => throw _privateConstructorUsedError;

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
      {int? position,
      Widget appBarLeadingWidget,
      String appBarTitle,
      IconData? actionIconButton,
      Widget goToWidget});
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
    Object? position = freezed,
    Object? appBarLeadingWidget = null,
    Object? appBarTitle = null,
    Object? actionIconButton = freezed,
    Object? goToWidget = null,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      appBarLeadingWidget: null == appBarLeadingWidget
          ? _value.appBarLeadingWidget
          : appBarLeadingWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
      appBarTitle: null == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      actionIconButton: freezed == actionIconButton
          ? _value.actionIconButton
          : actionIconButton // ignore: cast_nullable_to_non_nullable
              as IconData?,
      goToWidget: null == goToWidget
          ? _value.goToWidget
          : goToWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
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
      {int? position,
      Widget appBarLeadingWidget,
      String appBarTitle,
      IconData? actionIconButton,
      Widget goToWidget});
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
    Object? position = freezed,
    Object? appBarLeadingWidget = null,
    Object? appBarTitle = null,
    Object? actionIconButton = freezed,
    Object? goToWidget = null,
  }) {
    return _then(_$_MainPageState(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      appBarLeadingWidget: null == appBarLeadingWidget
          ? _value.appBarLeadingWidget
          : appBarLeadingWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
      appBarTitle: null == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      actionIconButton: freezed == actionIconButton
          ? _value.actionIconButton
          : actionIconButton // ignore: cast_nullable_to_non_nullable
              as IconData?,
      goToWidget: null == goToWidget
          ? _value.goToWidget
          : goToWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_MainPageState implements _MainPageState {
  const _$_MainPageState(
      {required this.position,
      required this.appBarLeadingWidget,
      required this.appBarTitle,
      required this.actionIconButton,
      required this.goToWidget});

  @override
  final int? position;
  @override
  final Widget appBarLeadingWidget;
  @override
  final String appBarTitle;
  @override
  final IconData? actionIconButton;
// required Widget? addTransactionPage,
  @override
  final Widget goToWidget;

  @override
  String toString() {
    return 'MainPageState(position: $position, appBarLeadingWidget: $appBarLeadingWidget, appBarTitle: $appBarTitle, actionIconButton: $actionIconButton, goToWidget: $goToWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainPageState &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.appBarLeadingWidget, appBarLeadingWidget) ||
                other.appBarLeadingWidget == appBarLeadingWidget) &&
            (identical(other.appBarTitle, appBarTitle) ||
                other.appBarTitle == appBarTitle) &&
            (identical(other.actionIconButton, actionIconButton) ||
                other.actionIconButton == actionIconButton) &&
            (identical(other.goToWidget, goToWidget) ||
                other.goToWidget == goToWidget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, appBarLeadingWidget,
      appBarTitle, actionIconButton, goToWidget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainPageStateCopyWith<_$_MainPageState> get copyWith =>
      __$$_MainPageStateCopyWithImpl<_$_MainPageState>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  const factory _MainPageState(
      {required final int? position,
      required final Widget appBarLeadingWidget,
      required final String appBarTitle,
      required final IconData? actionIconButton,
      required final Widget goToWidget}) = _$_MainPageState;

  @override
  int? get position;
  @override
  Widget get appBarLeadingWidget;
  @override
  String get appBarTitle;
  @override
  IconData? get actionIconButton;
  @override // required Widget? addTransactionPage,
  Widget get goToWidget;
  @override
  @JsonKey(ignore: true)
  _$$_MainPageStateCopyWith<_$_MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
