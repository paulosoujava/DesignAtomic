import 'package:atomic_design/presentation/presenters/login/login_presenter.dart';
import 'package:atomic_design/ui/helpers/errors/ui_error.dart';
import 'package:flutter/material.dart';

import 'package:atomic_design/ui/helpers/protocolo.dart';

import 'package:atomic_design/core/protocolo.dart';

import 'package:atomic_design/ui/atoms/protocolo.dart';
import 'package:atomic_design/ui/molecules/protocolo.dart';

class FrmLogin extends StatefulWidget {
  final LoginPresenter presenter;

  FrmLogin(this.presenter);

  @override
  _FrmLogin createState() => _FrmLogin();
}

class _FrmLogin extends State<FrmLogin> {
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
                  Factory.atom(
                    StyleText(display: constTitle, data: 'Register'),
                  ),
                )
                .buildOne(),
          ),
          StreamBuilder<UIError>(
              stream: widget.presenter.emailErrorStream,
              builder: (context, snapshot) {
                UIError state = snapshot.data ?? snapshot.data;
                return BuilderApp.instance()
                    .renderOne(
                      Factory.atom(StyleInput(
                        behaviour: state == null ? constRegular : constError,
                        mapper: LoginMapper.labelsToLogin(),
                        onChanged: widget.presenter.validateEmail,
                        validator: widget.presenter.validateEmail,
                        errorText: state.description,
                      )),
                    )
                    .buildOne();
              }),
          AppSize.space10H(),
          AppSize.space10H(),
          StreamBuilder<UIError>(
              stream: widget.presenter.passwordErrorStream,
              builder: (context, snapshot) {
                UIError state = snapshot.data ?? snapshot.data;
                return BuilderApp.instance()
                    .renderOne(
                      Factory.atom(
                        StyleInput(
                          behaviour: state == null ? constRegular : constError,
                          mapper: LoginMapper.labelsToPass(),
                          validator: widget.presenter.validatePassword,
                          onChanged: widget.presenter.validatePassword,
                          errorText: state.description,
                        ),
                      ),
                    )
                    .buildOne();
              }),
          AppSize.space10H(),
          AppSize.space10H(),
          ...BuilderApp.instance()
              .renderList(
                Factory.atom(
                  StyleButton(
                    behaviour: constRegular,
                    atomText: StyleText(display: constTitle, data: 'Register'),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        print('oi');
                      }
                    },
                  ),
                ),
              )
              .buildList(),
        ],
      ),
    );
  }
}
