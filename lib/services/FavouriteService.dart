class FavouriteService{

  List<int> _selectedItem = [];
  List<int> get selectedItem => _selectedItem;

  void addItemValue(int val){
    selectedItem.add(val);
  }

  void removeItemValue(int val){
    selectedItem.remove(val);
  }
}