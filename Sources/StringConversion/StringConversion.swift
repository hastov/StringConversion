enum Conversion: Character {
    case appendP = "P"
    case reverseThenAppendQ = "Q"
}

extension String {
    @discardableResult
    mutating func removeLastConversion() -> Conversion? {
        guard let last = last,
              let conversion = Conversion(rawValue: last) else {
            return nil
        }
        switch conversion {
        case .appendP:
            removeLast()
        case .reverseThenAppendQ:
            removeLast()
            self = String(reversed())
        }
        return conversion
    }
}

public struct StringConversion {
    public init() {
    }
    
    static func can(_ initial: String, beConvertedInto target: String) -> Bool {
        var beforeTransformations = target
        while (beforeTransformations.count > initial.count &&
               beforeTransformations != initial) {
            let conversion = beforeTransformations.removeLastConversion()
            if conversion == nil {
                return false
            }
        }
        return beforeTransformations == initial
    }
}
