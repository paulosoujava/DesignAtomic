enum Display { TITLE, SUBTITLE, H1 }

mixin StateDisplay {
  Display get titleDisplay => Display.TITLE;
  Display get subTitleDisplay => Display.SUBTITLE;
  Display get h1 => Display.H1;
}
