import 'package:collection/collection.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:instacard/models/digital_card_dto.dart';
import 'package:reactive_links_picker/reactive_links_picker.dart';

extension DigitalCardDTOExtension on DigitalCardDTO {
  get hasValidId => id >= 0 ? true : false;

  String fullName() {
    return "$prefix   $firstName  $middleName  $lastName   $suffix ";
  }

  String get cardHttpUrl {
    return uuid;
  }

  Contact? convertToContact() {
    try {
      final links = [];
      //Group custom links by label
      Map<String, List<Map<String, dynamic>>> customLinks = groupBy(
          links.map((e) => e).toList() as Iterable<Map<String, dynamic>>, (e) {
        return e['label'];
      });

      List<Map<String, dynamic>> groupGet(String groupName) {
        return (customLinks[groupName] ?? []).map((e) {
          return e;
        }).toList();
      }

      return Contact(
        displayName: "$firstName $lastName",
        name: Name(
          prefix: prefix,
          first: firstName,
          last: lastName,
          middle: middleName,
          suffix: suffix,
        ),
        organizations: [Organization(title: position, company: company)],
        notes: [Note(headline)],
        emails: groupGet("Email").map((e) => Email(e['value'])).toList(),
        phones: groupGet("Phone").map((e) => Phone(e['value'])).toList(),
        websites: [
          ...groupGet("Website")
              .map((e) => Website("https://www.${e['value']}"))
              .toList(),
          ...groupGet("LinkedIn").map((e) {
            final temp = reactiveLinksFind(e['label']);
            return Website("${temp['prefix_link']}${e['value']}");
          }).toList(),
          ...groupGet("Facebook").map((e) {
            final temp = reactiveLinksFind(e['label']);
            return Website("${temp['prefix_link']}${e['value']}");
          }).toList(),
          ...groupGet("Twitter").map((e) {
            final temp = reactiveLinksFind(e['label']);
            return Website("${temp['prefix_link']}${e['value']}");
          }).toList(),
          ...groupGet("Instagram").map((e) {
            final temp = reactiveLinksFind(e['label']);
            return Website("${temp['prefix_link']}${e['value']}");
          }).toList(),
          ...groupGet("Paypal").map((e) {
            final temp = reactiveLinksFind(e['label']);
            return Website("${temp['prefix_link']}${e['value']}");
          }).toList(),
          Website(cardHttpUrl),
        ],
        addresses: groupGet("Address").map((e) => Address(e['value'])).toList(),
      );
    } catch (e) {
      return null;
    }
  }
}
