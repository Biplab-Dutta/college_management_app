// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:college_management_app/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

typedef BootstrapBuilder = FutureOr<Widget> Function(Dio instance);

Future<void> bootstrap(BootstrapBuilder builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async {
      final dioInstance = Dio()
        ..options = BaseOptions(
          baseUrl: baseUrl,
          headers: <String, dynamic>{
            'Authorization': 'Token ',
            // TODO(Biplab): add proper token value
          },
        );
      await BlocOverrides.runZoned(
        () async => runApp(await builder(dioInstance)),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
