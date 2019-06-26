//
//  SwiftDate
//  Parse, validate, manipulate, and display dates, time and timezones in Swift
//
//  Created by Daniele Margutti
//   - Web: https://www.danielemargutti.com
//   - Twitter: https://twitter.com/danielemargutti
//   - Mail: hello@danielemargutti.com
//
//  Copyright © 2019 Daniele Margutti. Licensed under MIT License.
//

// swiftlint:disable file_length

import Foundation

public protocol LocaleConvertible {
	func toLocale() -> Locale
}

extension Locale: LocaleConvertible {
	public func toLocale() -> Locale {
		return self
	}
}

// swiftlint:disable type_body_length
public enum Locales: String, LocaleConvertible {

    case english = "en"
    case chinese = "zh"
    case chineseChina = "zh_Hans_CN"

	case current = "current"
	case autoUpdating = "currentAutoUpdating"
    case englishUnitedStatesComputer = "en_US_POSIX"

	/// Return a valid `Locale` instance from current selected locale enum
	public func toLocale() -> Locale {
		switch self {
		case .current:			return Locale.current
		case .autoUpdating:		return Locale.autoupdatingCurrent
		default:				return Locale(identifier: rawValue)
		}
	}
}
