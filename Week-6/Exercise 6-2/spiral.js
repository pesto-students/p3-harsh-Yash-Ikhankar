var spiralOrder = function(matrix) {
  if (matrix.length === 0) return [];
  if (matrix[0].length === 0) return [];
  
  let result = [];
  /*first row*/
  result = result.concat(matrix.shift());
  
  /*last col*/
  for (let i=0; i<matrix.length-1; i++){
      result.push(matrix[i].pop());
  }
  
  /*last row*/
  const lastRow = matrix.pop();
  if (lastRow) result = result.concat(lastRow.reverse());

  /*first col*/
  for (let i=matrix.length-1; i>=0; i--){
      if (matrix[i].length) result.push(matrix[i].shift());
  }
  
  return result.concat(spiralOrder(matrix));
};

let matrix = [ [ 1, 2, 3 ], [ 4, 5, 6 ], [ 7, 8, 9 ] ];

console.log(spiralOrder(matrix));

/* Output:- [
  1, 2, 3, 6, 9,
  8, 7, 4, 5
]*/