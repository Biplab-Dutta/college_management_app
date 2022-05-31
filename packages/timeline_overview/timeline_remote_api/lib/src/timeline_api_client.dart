import 'package:dio/dio.dart';

/// {@template timeline_api}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class TimelineApi {
  /// {@macro timeline_api}
  TimelineApi({required Dio dio}) : _dio = dio;

  final Dio _dio;
}
