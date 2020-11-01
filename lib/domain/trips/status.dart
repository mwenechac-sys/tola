import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
abstract class Status with _$Status {
  const factory Status(
      {String bgClass,
      String previewClass,
      String status,
      String textClass}) = _Status;
}
