abstract class BaseBuilder<W> {
  List<W> states = [];
  W oneWidget;
  renderList(T);
  List<W> buildList();
  renderOne(T);
  W buildOne();
}
