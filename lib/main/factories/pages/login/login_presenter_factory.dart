import 'package:atomic_design/presentation/presenters/login/login_controller.dart';

import '../../factories.dart';

StreamLoginPresenter makeLoginPresenter() => StreamLoginPresenter(
      authentication: makeRemoteAuthentication(),
      validation: makeLoginValidation(),
    );
