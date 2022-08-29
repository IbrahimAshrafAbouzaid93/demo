import 'package:flutter/material.dart';
import 'package:task1/view/application_helper/application_utils/image_path_utils/image_path_file.dart';

class ApplicationLogo extends StatelessWidget {
  const ApplicationLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logoImage,
      fit: BoxFit.cover,


    );
  }
}
