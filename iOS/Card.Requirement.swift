extension Card {
    public enum Requirement: Hashable {
        case
        accepted(Set<ID>),
        rejected(Set<ID>),
        seen(Set<ID>),
        organisation(Organisation),
        location(Location)
    }
}
