import 'package:atomic_design/ui/organisms/protocolo.dart';
import 'package:flutter/material.dart';

import 'login_presenter_factory.dart';

Widget makeLoginPage() => FrmLogin(makeLoginPresenter());
