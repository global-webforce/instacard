// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i6;
import 'package:flutter/material.dart';
import 'package:instacard/models/foo_dto.dart' as _i7;
import 'package:instacard/ui/views/foo/foo_view.dart' as _i4;
import 'package:instacard/ui/views/foo_single/foo_single_view.dart' as _i5;
import 'package:instacard/ui/views/home/home_view.dart' as _i2;
import 'package:instacard/ui/views/startup/startup_view.dart' as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i8;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const fooView = '/';

  static const fooSingleView = '/foo-single-view';

  static const all = <String>{
    homeView,
    startupView,
    fooView,
    fooSingleView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.fooView,
      page: _i4.FooView,
    ),
    _i1.RouteDef(
      Routes.fooSingleView,
      page: _i5.FooSingleView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.FooView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.FooView(),
        settings: data,
      );
    },
    _i5.FooSingleView: (data) {
      final args = data.getArgs<FooSingleViewArguments>(nullOk: false);
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.FooSingleView(args.foo, key: args.key),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class FooSingleViewArguments {
  const FooSingleViewArguments({
    required this.foo,
    this.key,
  });

  final _i7.FooDto foo;

  final _i6.Key? key;

  @override
  String toString() {
    return '{"foo": "$foo", "key": "$key"}';
  }

  @override
  bool operator ==(covariant FooSingleViewArguments other) {
    if (identical(this, other)) return true;
    return other.foo == foo && other.key == key;
  }

  @override
  int get hashCode {
    return foo.hashCode ^ key.hashCode;
  }
}

extension NavigatorStateExtension on _i8.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFooView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.fooView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFooSingleView({
    required _i7.FooDto foo,
    _i6.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.fooSingleView,
        arguments: FooSingleViewArguments(foo: foo, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFooView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.fooView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFooSingleView({
    required _i7.FooDto foo,
    _i6.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.fooSingleView,
        arguments: FooSingleViewArguments(foo: foo, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
