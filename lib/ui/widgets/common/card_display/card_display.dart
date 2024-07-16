import 'package:instacard/models/digital_card_dto.dart';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'card_display_model.dart';
import 'widgets/classic_card.dart';
import 'widgets/columns_separated.dart';

class CardDisplay extends StackedView<CardDisplayModel> {
  final DigitalCardDTO card;

  const CardDisplay(this.card, {super.key});

  @override
  void onViewModelReady(CardDisplayModel viewModel) {
    viewModel.card = card;
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    CardDisplayModel viewModel,
    Widget? child,
  ) {
    final colorTheme = Color(card.color);

    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width < 440 ? double.infinity : 440,
        child: Column(
          children: [
            ClassicCard(card: card),
            ColumnSeparated(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: FilledButton(
                        style: ButtonStyle(
                            foregroundColor:
                                const WidgetStatePropertyAll(Colors.white),
                            backgroundColor:
                                WidgetStatePropertyAll(colorTheme)),
                        onPressed: () async {
                          await viewModel.addToContacts();
                        },
                        child: const Text("Add to Contacts")),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: FilledButton(
                        style: ButtonStyle(
                            foregroundColor:
                                const WidgetStatePropertyAll(Colors.white),
                            backgroundColor:
                                WidgetStatePropertyAll(colorTheme)),
                        onPressed: () async {
                          await viewModel.downloadVCF();
                        },
                        child: const Text("Download VCF")),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: FilledButton(
                        style: ButtonStyle(
                            foregroundColor:
                                const WidgetStatePropertyAll(Colors.white),
                            backgroundColor:
                                WidgetStatePropertyAll(colorTheme)),
                        onPressed: () async {
                          await viewModel.downloadQRCode(context);
                        },
                        child: const Text("Download QR")),
                  )
                ])
          ],
        ),
      ),
    );
  }

  @override
  CardDisplayModel viewModelBuilder(BuildContext context) => CardDisplayModel();
}
