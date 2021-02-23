import 'package:flutter/material.dart';

import 'package:atomic_design/ui/helpers/protocolo.dart';

import 'package:atomic_design/core/protocolo.dart';

import 'package:atomic_design/ui/atoms/protocolo.dart';
import 'package:atomic_design/ui/molecules/protocolo.dart';
import 'package:atomic_design/presenters/protocolo.dart';

class FrmLogin {
  static final _formKey = GlobalKey<FormState>();
  static final controller = LoginController();
  static Widget organismLogin() {
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
          ...BuilderApp.instance()
              .renderList(
                Factory.atom(StyleInput(
                  behaviour: controller.errorLogin ? constError : constRegular,
                  mapper: LoginMapper.labelsToLogin(),
                  validator: controller.validateEmail,
                )),
              )
              .renderList(
                Factory.atom(
                  StyleInput(
                    behaviour: controller.errorLogin ? constError : constRegular,
                    mapper: LoginMapper.labelsToPass(),
                    validator: controller.validatePassword,
                  ),
                ),
              )
              .renderList(
                Factory.atom(
                  StyleInput(
                    behaviour: controller.errorLogin ? constError : constRegular,
                    mapper: LoginMapper.labelsToRepPass(),
                    validator: controller.validateRepPassword,
                  ),
                ),
              )
              .buildList(),
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
