import Combine

final class Session {
    let section = CurrentValueSubject<_, Never>(Section.overview)
}
