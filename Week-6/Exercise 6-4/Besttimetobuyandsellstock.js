var maxProfit = function(prices) {
  let max = 0;
  let min = Infinity;
  for(let i = 0; i < prices.length; i++) {
      min = Math.min(min, prices[i]);
      max = Math.max(max, prices[i] - min);
  }    
  
  return max;
};

let prices = [7,1,5,3,6,4];

console.log(maxProfit(prices));

/* Output:- 5 */