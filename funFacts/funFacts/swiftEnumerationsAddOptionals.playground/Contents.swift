//: Playground - noun: a place where people can play

import UIKit

let week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

func weekDayOrwWeekend(day: String) -> String {

    switch day {
    case "Saturday", "Sunday": return "Weekend"
        case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday": return "Weekday"
    default: return "This isn't a valid day in the Western calendar"
    }

}


func muteNotifications(day: String) -> Bool {
    if day == "Weekend" {
    return true
    } else {
        return false
    }
}

enum Day {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

enum DayType {
    case Weekend
    case Weekday
}
func weekdayOrWeekend(day: Day) -> DayType {
    switch day {
    case .Saturday, .Sunday: return .Weekend
    default: return .Weekday
  
    }
}

func muteNotifications(dayType: DayType) -> Bool {
    switch dayType {
    case .Weekend: return true
    case .Weekday: return false
    }

}

let dayType = weekdayOrWeekend(day: .Sunday)
let isWeekend = muteNotifications(dayType: dayType)

// Color Objects
import UIKit

enum ColorComponents {
    case RGB(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    case HSB(CGFloat, CGFloat, CGFloat, CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .RGB(let redValue, let greenValue, let blueValue, let alphaValue):
            return UIColor(red: redValue/255.0, green: greenValue/255.0, blue: blueValue/255.0, alpha: alphaValue)
        case .HSB(let hueValue, let saturationValue, let bightnessValue, let alphaValue):
            return UIColor(hue: hueValue/360.0, saturation: saturationValue/100.0, brightness:bightnessValue/100.0, alpha: alphaValue)
        }
    }
    
}

ColorComponents.RGB(red: 61.0, green: 120.0, blue: 198.0, alpha: 1.0).color()













