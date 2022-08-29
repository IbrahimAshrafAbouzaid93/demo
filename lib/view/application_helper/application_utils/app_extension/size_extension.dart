

import 'package:task1/view/application_helper/size_config.dart';

extension FontSizeScaling on num {
  fontSize() => SizeConfig().safeBlockHorizontal() * this;
}

extension SafeBlockHorizontal on num {
  safeBlockHorizontal() => SizeConfig().safeBlockHorizontal() * this;
}

extension SafeBlockVertical on num {
  safeBlockVertical() => SizeConfig().safeBlockVertical() * this;
}

extension BlockSizeHorizontal on num {
  blockSizeHorizontal() => SizeConfig().blockSizeHorizontal() * this;
}

extension BlockSizeVertical on num {
  blockSizeVertical() => SizeConfig().blockSizeVertical() * this;
}
