const hasDuplicate = (arr) => {
  let setArr = new Set(arr);
  arr.length == setArr.size
    ? console.log("false")
    : console.log("true");
};
hasDuplicate([1, 5, -1, 1]);
hasDuplicate([1, 5, -1, 4]);

