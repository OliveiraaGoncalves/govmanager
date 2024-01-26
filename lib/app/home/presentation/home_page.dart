import 'package:core_network/constants%20/http_path.dart';
import 'package:core_shared/extensions/page_extension.dart';
import 'package:core_shared_ui/core_shared_ui.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:govmanager/app/home/presentation/fuel_transaction_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final viewModell = context.viewModel<FuelTransactionViewModel>();

    setState(() {
      viewModell.getTransactionsSecretaryOfSocialCommunication();
    });
    List<CardItemProperties> items = [
      CardItemProperties(label: "total 1", iconStart: Icons.ac_unit, iconEnd: Icons.access_alarm),
      CardItemProperties(label: "total 2", iconStart: Icons.ac_unit, iconEnd: Icons.access_alarm),
      CardItemProperties(label: "total 2", iconStart: Icons.ac_unit, iconEnd: Icons.access_alarm),
      CardItemProperties(label: "total 2", iconStart: Icons.ac_unit, iconEnd: Icons.access_alarm)
    ].toList();

    return ChangeNotifierProvider(
      create: (context) => viewModell,
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primary,
          body: Consumer<FuelTransactionViewModel>(
              builder: (context, viewModel, child) {
            return CustomScrollView(
              slivers: [
                SliverAppBar.medium(
                  pinned: true,
                  floating: false,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    titlePadding: const EdgeInsets.only(
                        left: Dimens.dimen16, bottom: Dimens.dimen26),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          Strings.featureHomeLabelGov,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: Dimens.dimen5),
                        Text(
                          Strings.featureHomeWelcome,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.account_circle_outlined),
                      onPressed: () {},
                    )
                  ],
                ),

                SliverToBoxAdapter(
                  child: IntrinsicHeight(
                    child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimens.dimen40),
                            topRight: Radius.circular(Dimens.dimen40),
                          ),
                          color: Colors.white,
                        ),
                        child: CardItemListWidget(
                          cardItem: items,
                          cardMargin: const EdgeInsets.fromLTRB(Dimens.dimen16,
                              Dimens.dimen25, Dimens.dimen16, Dimens.dimen16),
                        )
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                      height: 400,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: CardItemListWidget(
                        cardItem: items,
                        cardMargin: const EdgeInsets.fromLTRB(Dimens.dimen16,
                            Dimens.dimen25, Dimens.dimen16, Dimens.dimen16),
                      )
                  ),
                ),
                // SliverToBoxAdapter(
                //   child: Container(
                //     height: 900,
                //     decoration: const BoxDecoration(
                //       borderRadius: BorderRadius.only(
                //         bottomLeft: Radius.circular(20.0),
                //         bottomRight: Radius.circular(20.0),
                //       ),
                //       color: Colors.white,
                //     ),
                //   ),
                // )
              ],
            );
          })),
    );
  }
}
