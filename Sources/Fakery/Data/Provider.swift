import Foundation

public final class Provider {
  // MARK: - Locale data

  public func dataForLocale(_ locale: String) -> Data? {
    guard let locale = SupportedLocale.suitable(for: locale)
      else { return nil }

    let resourceString = Locales.resource(for: locale)
    return resourceString.data(using: .utf8)
  }
}
