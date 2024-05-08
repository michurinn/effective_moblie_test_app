import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FindTicketWidget extends StatelessWidget {
  final VoidCallback? onarrivalPlaceTap;
  final String departurePlace;
  const FindTicketWidget(
      {super.key, required this.departurePlace, this.onarrivalPlaceTap});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.amber),
        child: ConstrainedBox(
          constraints: BoxConstraints.loose(Size(400, 145)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.search),
              SizedBox(
                width: 250,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ColoredBox(
                        color: Colors.green,
                        child: Text(
                          departurePlace,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: ColoredBox(
                            color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: Text('Moscow'),
                            )),
                        onTap: onarrivalPlaceTap,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
