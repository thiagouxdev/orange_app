import 'package:orange_app/utils/resources/t_resources.dart';

class TImages {
  // Walkthrough
  static String getWalkthroughImg1(context) {
    return TResources.getResourcePath(context, "walkthrough", "img-1");
  }

  static String getWalkthroughImg2(context) {
    return TResources.getResourcePath(context, "walkthrough", "img-2");
  }

  static String getWalkthroughImg3(context) {
    return TResources.getResourcePath(context, "walkthrough", "img-3");
  }

  // Welcome
  static String getWelcome(context) {
    return TResources.getResourcePath(context, "welcome", "img-1");
  }

  // Logo
  static String getLogo(context) {
    return TResources.getResourcePath(context, "logos", "logo");
  }

  static String getLogoMark(context) {
    return TResources.getResourcePath(context, "logos", "logomark");
  }

  static String getSocialGoogle(context) {
    return TResources.getResourcePath(context, "social_icon", "google");
  }

  static String getSocialApple(context) {
    return TResources.getResourcePath(context, "social_icon", "apple");
  }
}
