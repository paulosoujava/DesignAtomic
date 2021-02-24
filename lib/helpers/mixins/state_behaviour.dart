enum Behaviour { LOADING, ERROR, REGULAR, DISABLED, SUCCESS, INFO, EMPTY }

mixin StateBehaviour {
  Behaviour get errorBehaviour => Behaviour.ERROR;
  Behaviour get regularBehaviour => Behaviour.REGULAR;
}
