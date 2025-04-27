import 'package:face_it_app/app/data/models/feature_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<FeatureModel> getFeatures() {
    return [
      FeatureModel(icon: "chatbot.png", name: "Chatbot"),
      FeatureModel(icon: "check_ingredient.png", name: "Check Ingredient")
    ];
  }
}
