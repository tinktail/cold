public enum Organisation: UInt8 {
    case
    none,
    foreignOffice,
    homeOffice
    
    public var country: Country? {
        switch self {
        case .foreignOffice,
                .homeOffice:
            return .uk
        default:
            return nil
        }
    }
}
