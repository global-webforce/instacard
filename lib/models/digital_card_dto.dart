import 'package:instacard/helpers/freezed_helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
part 'digital_card_dto.freezed.dart';
part 'digital_card_dto.g.dart';
part 'digital_card_dto.gform.dart';

const int defaultColor = 0xFF9C27B0;

@freezed
@Collection(ignore: {'copyWith'})
@Rf()
class DigitalCardDTO with _$DigitalCardDTO {
  DigitalCardDTO._();
  factory DigitalCardDTO({
    @Default(Isar.autoIncrement) Id id,
    @Default('') String userId,
    @Default('') String uuid,
    @Default('') String logoUrl,
    @Default('') String avatarUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? addedToContactsAt,
    @RfControl() @Default(defaultColor) int color,
    @RfControl() @Default("New Card") String title,
    @RfControl() @Default('') String firstName,
    @RfControl() @Default('') String prefix,
    @RfControl() @Default('') String middleName,
    @RfControl() @Default('') String lastName,
    @RfControl() @Default('') String suffix,
    @RfControl() @Default(0) int layout,
    @RfControl() @Default('') String position,
    @RfControl() @Default('') String company,
    @RfControl() @Default('') String headline,
    @ignore
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
    @Default([])
    @RfControl(validators: [RequiredValidator()])
    List<Map<String, dynamic>> customLinks,
    @ignore
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
    @RfControl()
    dynamic avatarFile,
    @ignore
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
    @RfControl()
    dynamic logoFile,
    @ignore
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
    @RfControl()
    @Default(Color(defaultColor))
    Color? colorPick,
  }) = _DigitalCardDTO;

  // ignore: recursive_getters, annotate_overrides
  Id get id => id;

  @ignore
  get hasValidId => id >= 0 ? true : false;

  factory DigitalCardDTO.blank() => DigitalCardDTO(
        customLinks: [],
      );

  factory DigitalCardDTO.fromJson(Map<String, dynamic> json) =>
      _$DigitalCardDTOFromJson(json.map((key, value) => MapEntry(
          key, key == 'id' && value is String ? fastHash(value) : value)));
}
