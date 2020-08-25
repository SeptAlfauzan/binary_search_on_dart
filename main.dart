void main() {
  List<int> num_array = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  int target = 145; //target of search
  BinarySearch bSearch = BinarySearch(num_array, target);
  //intance of BinarySearch class
  int result = bSearch.doSearch();
  //get search result from doSearch method
  result == -1
      ? print('not founded')
      : print('${target} found on index ${result}');
}

class BinarySearch {
  List<int> _array;
  int _target;

  BinarySearch(this._array, this._target);

  int doSearch() {
    int left = 0; //first index of array
    int right = this._array.length - 1; //last index of array

    while (left <= right) {
      int mid = (left + right) ~/
          2; //sum of right and left value then devide by 2, then round it
      if (this._array[mid] == _target) {
        return mid; //print index of target
      } else if (_target < _array[mid]) {
        right = mid - 1;
      } else {
        left = mid + 1;
      }
    }

    return -1; //target not found
  }
}
