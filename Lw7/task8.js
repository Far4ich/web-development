let firstNumber
let secondNumber
let operations = ['*', '/', '+', '-']

calc('*(- 5 6) 7');
calc('+ 5 6');

function calc(x) {
    console.log(x)
    firstNumber = null
    secondNumber = null
    thisNumber = null
    let myOperations = []
    for (let i = 0; i < x.length; i++) {
        if (operations.indexOf(x[i]) != -1) {
            myOperations.push(x[i])
            continue
        }
        thisNumber = parseInt(x[i])
        if (thisNumber <= 9 && thisNumber >= 0) {

            if (firstNumber == null) {
                firstNumber = thisNumber
            } else {
                secondNumber = thisNumber
                firstNumber = doCalc(myOperations.pop(), firstNumber, secondNumber)
                secondNumber = null
            }

        }

    }
    console.log(firstNumber);
}

function doCalc(oper, numb1, numb2) {
    switch (oper) {
        case '*':
            console.log(numb1 + '*' + numb2)
            return numb1 * numb2
        case '/':
            console.log(numb1 + '/' + numb2)
            return numb1 / numb2
        case '+':
            console.log(numb1 + '+' + numb2)
            return numb1 + numb2
        case '-':
            console.log(numb1 + '-' + numb2)
            return numb1 - numb2
    }
}