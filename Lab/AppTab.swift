import Foundation

enum AppTab {
    case home
    case profile
    case calendar
    case message
    
    var label: LocalizedStringResource {
        switch self {
        case .home:
            return LocalizedStringResource(stringLiteral: "HomeTab")
        case .profile:
            return LocalizedStringResource(stringLiteral: "ProfileTab")
        case .calendar:
            return LocalizedStringResource(stringLiteral: "CalendarTab")
        case .message:
            return LocalizedStringResource(stringLiteral: "MessageTab")
        }
    }
    
    var imageName: String {
        switch self {
        case .home:
            return "HomeTabIcon"
        case .profile:
            return "ProfileTabIcon"
        case .calendar:
            return "CalendarTabIcon"
        case .message:
            return "MessageTabIcon"
        }
    }
}
