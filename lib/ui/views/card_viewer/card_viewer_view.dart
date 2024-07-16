import 'package:flutter/material.dart';
import 'package:instacard/models/digital_card_dto.dart';
import 'package:instacard/ui/widgets/common/card_display/card_display.dart';
import 'package:stacked/stacked.dart';
import 'card_viewer_viewmodel.dart';

class CardViewerView extends StackedView<CardViewerViewModel> {
  final DigitalCardDTO? card;

  const CardViewerView({this.card, Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CardViewerViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: card == null
          ? const Center(
              child: Text("Card not Found"),
            )
          : SingleChildScrollView(
              child: CardDisplay(
                card ?? DigitalCardDTO.blank(),
              ),
            ),
    );
  }

  @override
  CardViewerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CardViewerViewModel();
}
