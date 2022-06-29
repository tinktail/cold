public enum Organisation {
    case
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
