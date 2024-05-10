import 'package:effective_test_work/assets/resources.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

/// Widget for the typing eparture/arrival places
class FindTicketWidget extends StatefulWidget {
  /// Constructs a [FindTicketWidget] with the given parameters.
  ///
  /// The [backgroundColor] parameter is required and sets the background color of the widget.
  final Color backgroundColor;

  /// The [departurePlace] parameter is optional and sets the initial value of the departure field.
  final String? departurePlace;

  /// The [onArrivalPlaceTap] parameter is optional and provides a callback that is called when the arrival place field is tapped.
  final VoidCallback? onArrivalPlaceTap;

  /// The [departureFieldIsButton] parameter is optional and determines whether the departure field should be a button.
  final bool departureFieldIsButton;

  /// The [arrivalPlaceSvgPath], [departurePlaceSvgPath], and [leadingSvgPath] parameters are optional and set the SVG paths for the corresponding icons.
  final String? leadingSvgPath;

  /// The [arrivalPlaceSvgPath], [departurePlaceSvgPath], and [leadingSvgPath] parameters are optional and set the SVG paths for the corresponding icons.
  final String? arrivalPlaceSvgPath;

  /// The [arrivalPlaceSvgPath], [departurePlaceSvgPath], and [leadingSvgPath] parameters are optional and set the SVG paths for the corresponding icons.
  final String? departurePlaceSvgPath;

  /// The [arrivalPlace] parameter is optional and sets the initial value of the arrival field.
  final String? arrivalPlace;

  /// The [swopeAviable] parameter is optional and determines whether the swope feature is available.
  final bool swopeAviable;

  /// The [onDeparturePlaceChanged] parameter is optional and provides a callback that is called when the departure place is changed.
  final Function(String)? onDeparturePlaceChanged;

  /// The [onLeadingIconTap] parameter is optional and provides a callback that is called when the leading icon is tapped.
  final VoidCallback? onLeadingIconTap;

  /// Widget for the typing eparture/arrival places
  const FindTicketWidget(
      {required this.backgroundColor,
      super.key,
      this.departurePlace,
      this.onArrivalPlaceTap,
      this.departureFieldIsButton = true,
      this.arrivalPlaceSvgPath,
      this.departurePlaceSvgPath,
      this.leadingSvgPath,
      this.arrivalPlace,
      this.swopeAviable = false,
      this.onDeparturePlaceChanged,
      this.onLeadingIconTap})
      : assert(onArrivalPlaceTap != null || !departureFieldIsButton,
            'onarrivalPlaceTap must provide callback if departureFieldIsButton is false'),
        assert(onLeadingIconTap == null || leadingSvgPath != null,
            'onLeadingIconTap cant provide callback if icon is null');

  @override
  State<FindTicketWidget> createState() => _FindTicketWidgetState();
}

class _FindTicketWidgetState extends State<FindTicketWidget> {
  late TextEditingController arriveFieldController;
  late TextEditingController departureFieldController;
  late bool showClearIcon;

  @override
  void initState() {
    super.initState();
    arriveFieldController = TextEditingController();
    departureFieldController = TextEditingController();
    showClearIcon = false;
    arriveFieldController.addListener(() {
      if (arriveFieldController.text == '') {
        setState(() {
          showClearIcon = false;
        });
      } else {
        setState(() {
          showClearIcon = true;
        });
      }
    });
    if (widget.departurePlace != null) {
      departureFieldController.text = widget.departurePlace ?? '';
    }
    if (widget.arrivalPlace != null) {
      arriveFieldController.text = widget.arrivalPlace ?? '';
    }
  }

  @override
  void dispose() {
    arriveFieldController.dispose();
    departureFieldController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant FindTicketWidget oldWidget) {
    if (oldWidget.arrivalPlace != widget.arrivalPlace &&
        widget.arrivalPlace != null) {
      arriveFieldController.text = widget.arrivalPlace ?? '';
    }
    super.didUpdateWidget(oldWidget);
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
              widget.onLeadingIconTap == null
                  ? Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SvgPicture.asset(widget.leadingSvgPath!),
                  )
                  : Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: InkWell(
                        onTap: widget.onLeadingIconTap,
                        child: SvgPicture.asset(widget.leadingSvgPath!),
                      ),
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
                        onChanged: widget.onDeparturePlaceChanged,
                        controller: departureFieldController,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(
                            RegExp(
                              '[а-яА-Я 0-9]',
                            ),
                          ),
                        ],
                        style: AppTypography.text1,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColorScheme.of(context)
                                  .onBackgroundSecondary,
                            ),
                          ),
                          prefixIcon: widget.departurePlaceSvgPath != null
                              ? Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: SvgPicture.asset(
                                    widget.departurePlaceSvgPath ?? '',
                                    width: 24,
                                    height: 24,
                                  ),
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
                          hintText: 'Откуда - Москва'.hardcoded,
                          hintStyle: AppTypography.text1.copyWith(
                            color: AppColorScheme.of(context)
                                .onBackgroundSecondary,
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
                          style: AppTypography.text1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: widget.arrivalPlaceSvgPath != null
                                ? Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: SvgPicture.asset(
                                      widget.arrivalPlaceSvgPath ?? '',
                                      width: 24,
                                      height: 24,
                                    ),
                                  )
                                : null,
                            suffixIcon: showClearIcon
                                ? IconButton(
                                    onPressed: () {
                                      arriveFieldController.text = '';
                                    },
                                    icon: const Icon(Icons.close, size: 24),
                                  )
                                : null,
                            hintText: 'Куда - Турция'.hardcoded,
                            hintStyle: AppTypography.text1.copyWith(
                              color: AppColorScheme.of(context)
                                  .onBackgroundSecondary,
                            ),
                          ),
                        ),
                        onTap: widget.onArrivalPlaceTap,
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
