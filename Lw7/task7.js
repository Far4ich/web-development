let isPrime

isPrimeNumber(3)
isPrimeNumber(4)
isPrimeNumber([3, 4, 5])
isPrimeNumber('ya')

function isPrimeNumber(x) {
    if (typeof x == 'object') {
        for (let i = 0; i <= x.length - 1; i++) {
            isPrime = true
            for (let j = 2; j < x[i]; j++) {
                if (x[i] % j == 0) {
                    isPrime = false
                    break
                }
            }
            if (isPrime) {
                console.log(x[i] + ' is prime number')
            } else {
                console.log(x[i] + ' is not prime number')
            }
        }
    } else if (typeof x == 'number') {
        isPrime = true
        for (let j = 2; j < x; j++) {
            if (x % j == 0) {
                isPrime = false
                break
            }
        }
        if (isPrime) {
            console.log(x + ' is prime number')
        } else {
            console.log(x + ' is not prime number')
        }
    } else {
        console.log('Error data');
    }
}