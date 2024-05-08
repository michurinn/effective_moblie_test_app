import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/core/enums/arrival_target.dart';
import 'package:effective_test_work/src/find_tickets/domain/supporting_classes/route_arrival_class.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/find_tickets_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectArrivalBottomSheetWidget extends StatelessWidget {
  final String departurePlace;
  const SelectArrivalBottomSheetWidget(
      {super.key, required this.departurePlace});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                ),
              ),
              GestureDetector(
                onTap: () => context.router.maybePop(
                  RouteArrivalClass(
                    destination: 'Destination',
                    arrivalTargetValue: arrivalTarget.airport,
                  ),
                ),
                child: FindTicketWidget(departurePlace: departurePlace),
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () => context.router.maybePop(
                            RouteArrivalClass(
                              arrivalTargetValue: arrivalTarget.complexRoute,
                            ),
                          ),
                      child: ColoredBox(
                        color: Colors.green,
                        child: SizedBox(
                          height: 15,
                          width: 15,
                        ),
                      )),
                  GestureDetector(
                      onTap: () => context.router.maybePop(
                            RouteArrivalClass(
                              arrivalTargetValue: arrivalTarget.everythere,
                            ),
                          ),
                      child: ColoredBox(
                        color: Colors.green,
                        child: SizedBox(
                          height: 15,
                          width: 15,
                        ),
                      )),
                  GestureDetector(
                      onTap: () => context.router.maybePop(
                            RouteArrivalClass(
                              arrivalTargetValue: arrivalTarget.weekend,
                            ),
                          ),
                      child: ColoredBox(
                        color: Colors.green,
                        child: SizedBox(
                          height: 15,
                          width: 15,
                        ),
                      )),
                  GestureDetector(
                      onTap: () => context.router.maybePop(
                            RouteArrivalClass(
                              arrivalTargetValue: arrivalTarget.hotSale,
                            ),
                          ),
                      child: ColoredBox(
                        color: Colors.green,
                        child: SizedBox(
                          height: 15,
                          width: 15,
                        ),
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
