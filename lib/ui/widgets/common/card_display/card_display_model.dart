import 'package:instacard/app/app.logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:instacard/helpers/digital_card_extension.dart';
import 'package:instacard/models/digital_card_dto.dart';
import 'package:screenshot/screenshot.dart';
import 'package:stacked/stacked.dart';

class CardDisplayModel extends BaseViewModel {
  // final _nativeContactsService = locator<NativeContactsService>();
  final log = getLogger('CardDisplayModel');

  DigitalCardDTO _card = DigitalCardDTO.blank();
  DigitalCardDTO get card => _card;
  set card(DigitalCardDTO value) {
    _card = value;
    rebuildUi();
  }

  init(DigitalCardDTO v) {
    _card = v;
    notifyListeners();
  }

  ScreenshotController screenshotControllerDownload = ScreenshotController();

  Future addToContacts() async {
    final newContact = card.convertToContact();
    await newContact?.insert();
  }

  Future downloadVCF() async {
    try {
      // await _nativeContactsService.downloadVCF(card);
    } catch (e) {
      log.e(e.toString());
    }
  }

  Future downloadQRCode(BuildContext context) async {
    dynamic result;
    try {
      final Uint8List? image = await screenshotControllerDownload.capture(
        pixelRatio: 10,
        delay: const Duration(milliseconds: 200),
      );

      if (image != null) {
        if (!kIsWeb) {
          result = await ImageGallerySaver.saveImage(
            image,
            quality: 60,
            name: card.uuid,
          );
        } else {}
        return true;
      }
    } catch (e) {
      log.e(e.toString());
    }

    if (result["isSuccess"] == true) {
      //Show Success Prompt
    }
  }
}
