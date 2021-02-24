import 'package:flutter/material.dart';

import '../../../domain/index.dart';

import '../../../presentation/index.dart';

import '../../molecules/index.dart';
import '../../atoms/index.dart';

import '../../helpers/index.dart';
import '../../../helpers/index.dart';

import './mappers/index.dart';

class FrmLogin extends StatefulWidget {
  final LoginPresenter presenter;

  FrmLogin(this.presenter);

  @override
  _FrmLogin createState() => _FrmLogin();
}

class _FrmLogin extends State<FrmLogin> with StateDisplay, StateBehaviour {
  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return _organismLogin();
  }

  @override
  void dispose() {
    super.dispose();
    widget.presenter.dispose();
  }

  Widget _organismLogin() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: BuilderApp.instance()
                .renderOne(
                  StyleText(display: titleDisplay, data: 'Register'),
                )
                .buildOne(),
          ),
          StreamBuilder<String>(
              stream: widget.presenter.emailErrorStream,
              builder: (context, snapshot) {
                String state = snapshot.data?.isEmpty == true ? null : snapshot.data;
                print(state);
                return BuilderApp.instance()
                    .renderOne(
                      StyleInput(
                        behaviour: widget.presenter.emailBehaviour,
                        mapper: LoginMapper.labelsToLogin(),
                        onChanged: widget.presenter.validateEmail,
                        validator: widget.presenter.validateEmail,
                        errorText: state,
                      ),
                    )
                    .buildOne();
              }),
          AppSize.space10H(),
          AppSize.space10H(),
          StreamBuilder<String>(
              stream: widget.presenter.passwordErrorStream,
              builder: (context, snapshot) {
                String state = snapshot.data ?? snapshot.data;
                return BuilderApp.instance()
                    .renderOne(
                      StyleInput(
                        behaviour: widget.presenter.passwordBehaviour,
                        mapper: LoginMapper.labelsToPass(),
                        validator: widget.presenter.validatePassword,
                        errorText: state,
                      ),
                    )
                    .buildOne();
              }),
          AppSize.space10H(),
          AppSize.space10H(),
          StreamBuilder<bool>(
              stream: widget.presenter.isLoadingStream,
              builder: (context, snapshot) {
                return BuilderApp.instance()
                    .renderOne(
                      StyleButton(
                        behaviour: widget.presenter.buttonBehaviour,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            widget.presenter.auth();
                            print('oi');
                          }
                        },
                      ),
                    )
                    .buildOne();
              })
        ],
      ),
    );
  }
}
