import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/recommends_bloc/recommended_offers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class FindTicketsPage extends StatelessWidget {
  const FindTicketsPage({super.key});
  static const String routeName = '/find-tickets';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Поиск дешевых авиабилетов'.hardcoded),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Музыкально отлететь'.hardcoded),
            BlocBuilder<RecommendedOffersBloc, RecommendedOffersState>(
              builder: (context, state) {
                return switch (state) {
                  Empty() => Text('Empty'.hardcoded),
                  Loading() => Shimmer(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.grey.shade300,
                          Colors.grey.shade400,
                        ],
                      ),
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints.tight(const Size.fromHeight(50)),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            SizedBox.square(
                              dimension: 50,
                            )
                          ],
                        ),
                      ),
                    ),
                  Loaded(:final offers) => ConstrainedBox(
                      constraints:
                          BoxConstraints.tight(const Size.fromHeight(50)),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: offers
                            .map(
                              (e) => SizedBox(
                                height: 50,
                                width: 250,
                                child: Text(e.title),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  Error() => Text('Error'.hardcoded),
                };
              },
            )
          ],
        ),
      ),
    );
  }
}
