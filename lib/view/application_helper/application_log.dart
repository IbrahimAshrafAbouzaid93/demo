import 'package:flutter/material.dart';

void logWithIdentifier(Object o, {identifier}) =>
    debugPrint("\n\n\n\n $identifier:: $o\n\n\n\n", wrapWidth: 800);
