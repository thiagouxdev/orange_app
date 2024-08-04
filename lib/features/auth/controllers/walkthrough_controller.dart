import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';
import '../models/walkthrough_models.dart';

class WalkthroughController {
  List<WalkthroughModels> getItems(context) {
    return [
      WalkthroughModels(
        heading: TTexts.walkthroughHeading1,
        subHeading: TTexts.walkthroughSubHeading1,
        image: TImages.getWalkthroughImg1(context),
      ),
      WalkthroughModels(
        heading: TTexts.walkthroughHeading2,
        subHeading: TTexts.walkthroughSubHeading2,
        image: TImages.getWalkthroughImg2(context),
      ),
      WalkthroughModels(
        heading: TTexts.walkthroughHeading3,
        subHeading: TTexts.walkthroughSubHeading3,
        image: TImages.getWalkthroughImg3(context),
      ),
    ];
  }
}
