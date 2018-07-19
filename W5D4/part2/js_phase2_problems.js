// fizzBuzz
// 3 and 5 are magic numbers.
//
// Define a function fizzBuzz(array) that takes an array and
// returns a new array of every number in the array that is
// divisible by either 3 or 5, but not both.
function fizzBuzz(array) {
  fizzy = [];
  for(let i = 0; i < array.length; i++) {
    curr_num = array[i];
    if (curr_num % 3 === 0 && curr_num % 5 !== 0) {
      fizzy.push(curr_num);
    }
    if (curr_num % 5 === 0 && curr_num % 3 !== 0) {
      fizzy.push(curr_num);
    }
  }
  return fizzy;
}
// console.log(fizzBuzz([1,3,5,15,12])); // => [3, 5, 12]

// isPrime
// Define a function isPrime(number) that returns true if number is prime. Otherwise, false. Assume number is a positive integer.
function isPrime(number) {
  if (number < 2) {
    return false
  }
  for(let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false
    }
  }
  return true
}
// }
// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));

// > isPrime(2)
// true
//
// > isPrime(10)
// false
//
// > isPrime(15485863)
// true
//
// > isPrime(3548563)
// false

// sumOfNPrimes
// Using firstNPrimes, write a function sumOfNPrimes(n) that returns the sum of the first n prime numbers. Hint: use isPrime as a helper method.
function firstNPrimes(number) {
  num = 2;
  primes = [];
  while (primes.length < number) {
    if (isPrime(num)) {
      primes.push(num);
    }
    num += 1;
  }
  return primes;
}
// console.log(firstNPrimes(4));
function sumOfNPrimes(number) {
  primes = firstNPrimes(number);
  sum = 0;
  for(let i = 0; i < primes.length; i++) {
    sum += primes[i];
  }
  return sum;
}
console.log(sumOfNPrimes(4));
console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
// > sumOfNPrimes(0)
// 0
//
// > sumOfNPrimes(1)
// 2
//
// > sumOfNPrimes(4)
// 17
