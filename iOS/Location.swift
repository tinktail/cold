public enum Location: UInt8 {
    case
    london
    
    public var country: Country {
        switch self {
        case .london:
            return .uk
        }
    }
}
