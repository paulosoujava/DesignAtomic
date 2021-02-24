enum Behaviour { LOADING, ERROR, REGULAR, DISABLED, SUCCESS, INFO, EMPTY }

mixin StateBehaviour {
  Behaviour get errorBehaviour => Behaviour.ERROR;
  Behaviour get regularBehaviour => Behaviour.REGULAR;
  Behaviour get loadingBehaviour => Behaviour.LOADING;
  Behaviour get disabledBehaviour => Behaviour.DISABLED;
}
