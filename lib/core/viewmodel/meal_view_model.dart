import '../services/meal_request.dart';
import '../viewmodel/base_view_model.dart';

class HYMealViewModel extends BaseMealViewModel {
  HYMealViewModel() {
    HYMealRequest.getMealData().then((res) {
      meals = res;
    });
  }
}