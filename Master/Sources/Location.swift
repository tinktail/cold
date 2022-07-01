public enum Location: UInt16 {
    case
    blackFriarsBridge,
    trafalgarSquare,
    foyles
    
    public var city: City {
        switch self {
        case .blackFriarsBridge,
                .trafalgarSquare,
                .foyles:
            return .london
        }
    }
}
