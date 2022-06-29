public enum Location {
    case
    london
    
    public var country: Country {
        switch self {
        case .london:
            return .uk
        }
    }
}
