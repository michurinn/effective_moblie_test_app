import 'package:effective_test_work/assets/resources.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class FindTicketWidget extends StatefulWidget {
  final VoidCallback? onarrivalPlaceTap;
  final String? departurePlace;
  final String? arrivalPlaceSvgPath;
  final String? departurePlaceSvgPath;
  final String? leadingSvgPath;
  final bool departureFieldIsButton;
  final Color backgroundColor;
  final bool swopeAviable;
  const FindTicketWidget({
    required this.backgroundColor,
    super.key,
    this.departurePlace,
    this.onarrivalPlaceTap,
    this.departureFieldIsButton = true,
    this.arrivalPlaceSvgPath,
    this.departurePlaceSvgPath,
    this.leadingSvgPath,
    this.swopeAviable = false,
  }) : assert(onarrivalPlaceTap != null || !departureFieldIsButton,
            'onarrivalPlaceTap must provide callback if departureFieldIsButton is false');

  @override
  State<FindTicketWidget> createState() => _FindTicketWidgetState();
}

class _FindTicketWidgetState extends State<FindTicketWidget> {
  late TextEditingController arriveFieldController;
  late TextEditingController departureFieldController;

  @override
  void initState() {
    super.initState();
    arriveFieldController = TextEditingController();
    departureFieldController = TextEditingController();
  }

  @override
  void dispose() {
    arriveFieldController.dispose();
    departureFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.loose(
        Size(MediaQuery.of(context).size.width, 90),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          color: widget.backgroundColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.leadingSvgPath != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset(widget.leadingSvgPath!),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: departureFieldController,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(
                            RegExp(
                              '[а-яА-Я 0-9]',
                            ),
                          ),
                        ],
                        style: AppTypography.Text1,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color:
                                  AppColorScheme.dark().onBackgroundSecondary,
                            ),
                          ),
                          prefixIcon: widget.departurePlaceSvgPath != null
                              ? SvgPicture.asset(
                                  widget.departurePlaceSvgPath ?? '',
                                  width: 24,
                                  height: 24,
                                )
                              : null,
                          suffixIcon: widget.swopeAviable
                              ? IconButton(
                                  onPressed: () {
                                    final departure =
                                        departureFieldController.text;
                                    setState(() {
                                      departureFieldController.text =
                                          arriveFieldController.text;
                                      arriveFieldController.text = departure;
                                    });
                                  },
                                  icon: SvgPicture.asset(
                                    SvgIcons.swopeIcon,
                                  ),
                                )
                              : null,
                          hintText: widget.departurePlace ??
                              'Откуда - Москва'.hardcoded,
                          hintStyle: AppTypography.Text1.copyWith(
                            color: AppColorScheme.dark().onBackgroundSecondary,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: InkWell(
                        child: TextField(
                          controller: arriveFieldController,
                          enabled: !widget.departureFieldIsButton,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(
                              RegExp(
                                '[а-яА-Я 0-9]',
                              ),
                            ),
                          ],
                          style: AppTypography.Text1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefix: widget.arrivalPlaceSvgPath != null
                                ? SvgPicture.asset(
                                    widget.arrivalPlaceSvgPath ?? '',
                                    width: 24,
                                    height: 24,
                                  )
                                : null,
                            hintText: 'Куда - Турция'.hardcoded,
                            hintStyle: AppTypography.Text1.copyWith(
                              color:
                                  AppColorScheme.dark().onBackgroundSecondary,
                            ),
                          ),
                        ),
                        onTap: widget.onarrivalPlaceTap,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
