import 'dart:async';
import 'dart:developer';

import 'package:cities_of_the_world/features/cities/models/city_model.dart';
import 'package:cities_of_the_world/features/cities/models/city_paginated_result.dart';
import 'package:cities_of_the_world/features/cities/models/country_model.dart';
import 'package:cities_of_the_world/network/models/pagination/pagination_meta.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'common/bloc/bloc_observer.dart';
import 'injection.dart';

void bootstrap(FutureOr<Widget> Function() builder) async {
  await runZonedGuarded(
        () async {
      FlutterError.onError =
      ((e) => log(e.exceptionAsString(), stackTrace: e.stack));

      WidgetsFlutterBinding.ensureInitialized();
      await Future.wait(
        [
          configureDependencies(),
        ],
      );
      Bloc.observer = AppBlocObserver();
      await Hive.initFlutter();
      Hive.registerAdapter(CityModelAdapter());
      Hive.registerAdapter(CountryModelAdapter());
      Hive.registerAdapter(CityPaginatedResultAdapter());
      Hive.registerAdapter(PaginationMetaAdapter());

      if (kReleaseMode) {
        await SentryFlutter.init(
              (options) {
            options.dsn =
            'https://382fc6174b27e7e792b118583a038b98@o4506553367265280.ingest.sentry.io/4506'; //example sentry dsn
            options.tracesSampleRate = 1.0;
            options.environment = 'production';
          },
          appRunner: () async => runApp(await builder()),
        );
      } else {
        runApp(await builder());
      }
    },
        (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
