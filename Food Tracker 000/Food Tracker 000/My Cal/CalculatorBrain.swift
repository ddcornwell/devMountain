//
//  CalculatorBrain.swift
//  My Cal
//
//  Created by DANIEL CORNWELL on 10/24/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import Foundation


class CalendarBrain {
    
    private enum Op  {
        case Operand(Double)
        case UnaryOperation(String, (Double) -> Double)
        case BinaryOperation(String, (Double, Double) -> Double)
        
        var description: String {
            get{
                switch self {
                case .Operand(let operand):
                    return "\(operand)"
                case .UnaryOperation(let symbol, _):
                    return symbol
                case .BinaryOperation(let symbol, _):
                    return symbol
        
                }
            }
            
        }

    }
    
    private var opStack = [Op]()
    
    private var knownOps = [String:Op]()
    
    init() {
        knownOps["×"] = Op.BinaryOperation("×", *)
        knownOps["÷"] = Op.BinaryOperation("÷", +)
        knownOps["+"] = Op.BinaryOperation("+") { $1 + $0 }
        knownOps["−"] = Op.BinaryOperation("−") { $1 - $0 }
        knownOps["√"] = Op.UnaryOperation("√", sqrt)
    }
    
    
    private func evaluate(ops: [Op]) -> (result: Double?, remainingOps: [Op])
    {
        if !ops.isEmpty {
            var remainingOps = ops
            let op = remainingOps.removeLast()
            switch op {
            case .Operand(let operand):
                return (operand, remainingOps)
            case .UnaryOperation(_, let Operation):
                let operandEvaluation = evaluate(ops: remainingOps)
                if let operand = operandEvaluation.result {
                    return (Operation(operand), operandEvaluation.remainingOps)
                }
            case .BinaryOperation(_, let operation):
                let op1Evaluation = evaluate(ops: remainingOps)
                if let operand1 = op1Evaluation.result {
                    let op2Evaluation = evaluate(ops: op1Evaluation.remainingOps)
                    if let operand2 = op2Evaluation.result {
                        return (operation(operand1, operand2), op2Evaluation.remainingOps)
            
                  }
               }
            }
        
        }
        return (nil, ops)
    }
    
    
    func evaluate() -> Double? {
        let (result, _) = evaluate(ops: opStack)
        print("\(opStack) = \(result) with \(remainder) left over")
        return result
    }
    
    func pushOperand(operand: Double) -> Double? {
        opStack.append(Op.Operand(operand))
        return evaluate()
    }
    
    func performOperation(symbol: String) -> Double? {
        if let operation = knownOps[symbol] {
            opStack.append(operation)
        }
        return evaluate()
    }
}
