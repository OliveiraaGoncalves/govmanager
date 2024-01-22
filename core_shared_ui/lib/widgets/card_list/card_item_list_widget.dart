import 'package:core_shared_ui/widgets/card_list/card_item_properties.dart';
import 'package:flutter/material.dart';


class CardItemListWidget extends StatelessWidget {
  final List<CardItemProperties> cardItem;
  final EdgeInsetsGeometry? cardMargin;

  const CardItemListWidget(
      {super.key, required this.cardItem, this.cardMargin});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.inverseSurface,
        elevation: 4,
        margin: cardMargin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var item in cardItem)
              ListTile(
                leading: Icon(
                  item.iconStart,
                  color: Theme.of(context).colorScheme.scrim,
                ),
                title: Text(
                  item.label,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim),
                ),
                trailing: Icon(item.iconStart,
                    color: Theme.of(context).colorScheme.scrim),
              )
          ],
        ));
  }
}
