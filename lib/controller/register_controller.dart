import 'package:get/state_manager.dart';
import 'package:novel/services/user_service.dart';

class RegisterController extends GetxController {
  var isLoading = true.obs;
  var verificationCode = ''.obs;

  @override
  void onInit() {
    fetchVCode();
    super.onInit();
  }

  void fetchVCode() async {
    try {
      isLoading(true);
      var code = await UserService.getVerificationCode();
      if (code != null) {
        verificationCode.value = code;
      }
    } finally {
      isLoading(false);
    }
  }
}