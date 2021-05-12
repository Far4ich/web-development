let isPrime;

tests();

function tests() {
    isPrimeNumber([0, 1]);
    isPrimeNumber(3);
    isPrimeNumber(4);
    isPrimeNumber([3, 4, 5]);
    isPrimeNumber('DaT');
    isPrimeNumber([3, 'a', 5]);
}

function isPrimeNumber(value) {

    if (typeof value == 'object') {

        for (let i = 0; i < value.length; i++) {
            primeCheck(value[i]);
        }

    } else if (typeof value == 'number') {
        primeCheck(value);
    }
    else {
        console.log(value + ' error data');
    }

}

function primeCheck(number) {
    isPrime = true;

    if (number < 2) {
        isPrime = false;
    }

    for (let j = 2; j < number; j++) {

        if (number % j == 0) {
            isPrime = false;
            break;
        }

    }
    if (typeof number == 'number') {

        if (isPrime) {
            console.log(number + ' is prime number');
        } else {
            console.log(number + ' is not prime number');
        }

    } else {
        console.log(number + ' error data');
    }

}