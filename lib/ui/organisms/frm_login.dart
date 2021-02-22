import 'package:flutter/material.dart';

import 'package:atomic_design/ui/helpers/protocolo.dart';

import 'package:atomic_design/core/protocolo.dart';

import 'package:atomic_design/ui/atoms/protocolo.dart';
import 'package:atomic_design/ui/molecules/protocolo.dart';

class FrmLogin {
  static Widget organismLogin() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: BuilderApp.instance()
              .renderOne(
                Factory.atom(
                  StyleText(display: Display.TITLE, data: 'Register'),
                ),
              )
              .buildOne(),
        ),
        ...BuilderApp.instance()
            .renderList(
              Factory.atom(StyleInput(
                behaviour: Behaviour.ERROR,
                mapper: LoginMapper.labelsToLogin(),
              )),
            )
            .renderList(
              Factory.atom(
                StyleInput(
                  behaviour: Behaviour.REGULAR,
                  mapper: LoginMapper.labelsToPass(),
                ),
              ),
            )
            .renderList(
              Factory.atom(
                StyleInput(
                  behaviour: Behaviour.REGULAR,
                  mapper: LoginMapper.labelsToRepPass(),
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
                  behaviour: Behaviour.REGULAR,
                  atomText: StyleText(display: Display.TITLE, data: 'Register'),
                  onPressed: () {},
                ),
              ),
            )
            .buildList(),
      ],
    );
  }
}
