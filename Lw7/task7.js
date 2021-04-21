let isPrime

isPrimeNumber(3)
isPrimeNumber(4)
isPrimeNumber([3, 4, 5])
isPrimeNumber('DaT')
isPrimeNumber([3, 'a', 5])

function isPrimeNumber(x) {
    if (typeof x == 'object') {
        for (let i = 0; i < x.length; i++) {
            isPrime = true
            for (let j = 2; j < x[i]; j++) {
                if (x[i] % j == 0) {
                    isPrime = false
                    break
                }
            }
            if (typeof x[i] == 'number') {
                if (isPrime) {
                    console.log(x[i] + ' is prime number')
                } else {
                    console.log(x[i] + ' is not prime number')
                }
            } else {
                console.log(x[i] + ' error data');
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
        console.log(x + ' error data')
    }
}