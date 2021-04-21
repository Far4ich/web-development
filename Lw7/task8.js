let firstNumber
let secondNumber
let errorFlag
let operations = ['*', '/', '+', '-']

calc('*(- 5 6) 7')
calc('- 5 6')
calc('+ + 6 5')
calc(' 5 6')
calc(' 6')
calc('+ 6')
calc('asdasdasdasd')
calc('')

function calc(x) {
    console.log(x)
    errorFlag = false
    firstNumber = null
    secondNumber = null
    let thisNumber = null
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
            }
        }
    }
    if (myOperations.length != 0 || secondNumber == null || typeof firstNumber == 'undefined') {
        errorFlag = true
    }
    if (errorFlag) {
        console.log('Wrong example')
    } else {
        console.log(firstNumber)
    }
}

function doCalc(oper, numb1, numb2) {
    switch (oper) {
        case '*':
            return numb1 * numb2
        case '/':
            return numb1 / numb2
        case '+':
            return numb1 + numb2
        case '-':
            return numb1 - numb2
        default:
            errorFlag = true
    }
}