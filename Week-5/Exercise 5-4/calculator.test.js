const mathOperations = require('./calculator');
describe("Calculator tests", () => {
  test('adding 3 + 2 should return 5', () => {
      var result = mathOperations.sum(3,2)
      expect(result).toBe(5);
  });

  test("subtracting 2 from 5 should return 3", () => {
      var result = mathOperations.diff(5,2)
      expect(result).toBe(3);
  });

  test("multiplying 2 and 5 should return 10", () => {
      var result = mathOperations.product(2,5)
      expect(result).toBe(10);
  });
})