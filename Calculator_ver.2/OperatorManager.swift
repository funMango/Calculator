
import Foundation

struct OperatorManager {
    let calculator = Calculator()
    let convertor = Convertor()
    
    let addSubProcessor = AddSubProcessor()
    let divMulProcessor = DivMulProcessor()
    let resultProcessor = ResultProcessor()
    let pointProcessor = PointProcessor()

    func process(_ number: String, _ storage: Storage, _ op: Operator) -> String? {
        switch op {
        case .reset:
            storage.reset()
            return "0"

        case .addition, .subtraction:
            return addSubProcessor.process(number, storage, op)

        case .division, .multiplication:
            return divMulProcessor.process(number, storage, op)

        case .result:
            return resultProcessor.process(number, storage, op)

        case .point:
            return pointProcessor.process(number, storage, op)

        case .changeSign:
            return Operator.subtraction.rawValue + number

        case .percent:
            if let num = Double(number) {
                return String(num * 0.01)
            }
            return nil
        }
    }
}
