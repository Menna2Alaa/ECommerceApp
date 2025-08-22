// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Welcome to FruitHub`
  String get title1 {
    return Intl.message(
      'Welcome to FruitHub',
      name: 'title1',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get title2 {
    return Intl.message('Search and Shop', name: 'title2', desc: '', args: []);
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and high quality`
  String get desc1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and high quality',
      name: 'desc1',
      desc: '',
      args: [],
    );
  }

  /// `We bring you the best carefully selected fruits. Check out the details, photos, and reviews to make sure you choose the perfect fruit.`
  String get desc2 {
    return Intl.message(
      'We bring you the best carefully selected fruits. Check out the details, photos, and reviews to make sure you choose the perfect fruit.',
      name: 'desc2',
      desc: '',
      args: [],
    );
  }

  /// `Start now`
  String get button {
    return Intl.message('Start now', name: 'button', desc: '', args: []);
  }

  /// `signIn`
  String get login {
    return Intl.message('signIn', name: 'login', desc: '', args: []);
  }

  /// `email`
  String get email {
    return Intl.message('email', name: 'email', desc: '', args: []);
  }

  /// `password`
  String get password {
    return Intl.message('password', name: 'password', desc: '', args: []);
  }

  /// `forgotPassword`
  String get forgotPassword {
    return Intl.message(
      'forgotPassword',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `dont have an account? `
  String get textSpan1 {
    return Intl.message(
      'dont have an account? ',
      name: 'textSpan1',
      desc: '',
      args: [],
    );
  }

  /// `create an account`
  String get textSpan2 {
    return Intl.message(
      'create an account',
      name: 'textSpan2',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get signInDivider {
    return Intl.message('or', name: 'signInDivider', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
