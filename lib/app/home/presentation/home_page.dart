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

    return ChangeNotifierProvider(
      create: (context) => viewModell,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Consumer<FuelTransactionViewModel>(builder: (context, viewModel, child){
          return CustomScrollView(
            slivers: [
              SliverAppBar.medium(
                pinned: true,
                floating: false,
                backgroundColor: Theme.of(context).colorScheme.primary,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  titlePadding: const EdgeInsets.only(left: 16.0, bottom: 26.0),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Gov Manager',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'Olá, Bem-vindo',
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
                child: Container(
                    height: 900,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                      color: Colors.white,
                    ),
                    child: Card(
                      child: PieChart(
                        PieChartData(
                            sections:[
                              PieChartSectionData(
                                  value: 20
                              ),
                              PieChartSectionData(
                                  value: 20
                              )
                            ]
                        ),
                      ),
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
        })
      ),
    );
  }
}
