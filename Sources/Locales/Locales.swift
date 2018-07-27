struct Locales {
}

// swiftlint:disable identifier_name
enum SupportedLocale: String {
  case de_AT = "de-AT"
  case de_CH = "de-CH"
  case de = "de"
  case en_AU = "en-AU"
  case en_CA = "en-CA"
  case en_GB = "en-GB"
  case en_IND = "en-IND"
  case en_TEST = "en-TEST"
  case en_US = "en-US"
  case en = "en"
  case es = "es"
  case fa = "fa"
  case fr = "fr"
  case it = "it"
  case ja = "ja"
  case ko = "ko"
  case nb_NO = "nb-NO"
  case nl = "nl"
  case pl = "pl"
  case ru = "ru"
  case sk = "sk"
  case sv = "sv"
  case tr_TR = "tr-TR"
  case uk = "uk"
  case zh_CN = "zh-CN"
  case zh_TW = "zh-TW"
}

extension SupportedLocale {
  static func suitable(for localeString: String) -> SupportedLocale? {
    if let locale = self.init(rawValue: localeString) {
      return locale
    }

    guard let language = localeString.split(separator: "-").first
      else { return nil }

    return self.init(rawValue: String(language))
  }
}

extension Locales {
  // swiftlint:disable cyclomatic_complexity
  static func resource(for locale: SupportedLocale) -> String {
    switch locale {
    case .de_AT: return Locales.de_AT
    case .de_CH: return Locales.de_CH
    case .de: return Locales.de
    case .en_AU: return Locales.en_AU
    case .en_CA: return Locales.en_CA
    case .en_GB: return Locales.en_GB
    case .en_IND: return Locales.en_IND
    case .en_TEST: return Locales.en_TEST
    case .en_US: return Locales.en_US
    case .en: return Locales.en
    case .es: return Locales.es
    case .fa: return Locales.fa
    case .fr: return Locales.fr
    case .it: return Locales.it
    case .ja: return Locales.ja
    case .ko: return Locales.ko
    case .nb_NO: return Locales.nb_NO
    case .nl: return Locales.nl
    case .pl: return Locales.pl
    case .ru: return Locales.ru
    case .sk: return Locales.sk
    case .sv: return Locales.sv
    case .tr_TR: return Locales.tr_TR
    case .uk: return Locales.uk
    case .zh_CN: return Locales.zh_CN
    case .zh_TW: return Locales.zh_TW
    }
  }
}
