import '../../ui/shared/size_fit.dart';

extension StringFit on String {
  double get px {
    return HYSizeFit.setPx(double.parse(this));
  }

  double get rpx {
    return HYSizeFit.setRpx(double.parse(this));
  }
}
