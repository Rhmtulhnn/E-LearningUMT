import 'package:flutter/material.dart';
import 'package:siakadumt/app/shared/theme.dart';

final ButtonStyle styleIsActive = ElevatedButton.styleFrom(
  minimumSize: const Size(280, 48),
  backgroundColor: primaryColor,
  elevation: 2,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  ),
);

final ButtonStyle styleInActive = ElevatedButton.styleFrom(
  minimumSize: const Size(280, 48),
  backgroundColor: tertiaryColor,
  elevation: 2,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  ),
);
final ButtonStyle styleSmall = ElevatedButton.styleFrom(
  minimumSize: const Size(128, 44),
  backgroundColor: primaryColor,
  elevation: 4,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  ),
);
