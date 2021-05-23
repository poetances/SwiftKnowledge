//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 1 colors.
  struct color {
    /// Color `red`.
    static let red = Rswift.ColorResource(bundle: R.hostingBundle, name: "red")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "red", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func red(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.red, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.file` struct is generated, and contains static references to 8 files.
  struct file {
    /// Resource file `apple-app-site-association`.
    static let appleAppSiteAssociation = Rswift.FileResource(bundle: R.hostingBundle, name: "apple-app-site-association", pathExtension: "")
    /// Resource file `cat.gif`.
    static let catGif = Rswift.FileResource(bundle: R.hostingBundle, name: "cat", pathExtension: "gif")
    /// Resource file `manifest.plist`.
    static let manifestPlist = Rswift.FileResource(bundle: R.hostingBundle, name: "manifest", pathExtension: "plist")
    /// Resource file `mine.bundle`.
    static let mineBundle = Rswift.FileResource(bundle: R.hostingBundle, name: "mine", pathExtension: "bundle")
    /// Resource file `mine.json`.
    static let mineJson = Rswift.FileResource(bundle: R.hostingBundle, name: "mine", pathExtension: "json")
    /// Resource file `summary`.
    static let summary = Rswift.FileResource(bundle: R.hostingBundle, name: "summary", pathExtension: "")
    /// Resource file `timg-2.jpeg`.
    static let timg2Jpeg = Rswift.FileResource(bundle: R.hostingBundle, name: "timg-2", pathExtension: "jpeg")
    /// Resource file `考试结果 - 产品组测试平台.webarchive`.
    static let 考试结果产品组测试平台Webarchive = Rswift.FileResource(bundle: R.hostingBundle, name: "考试结果 - 产品组测试平台", pathExtension: "webarchive")

    /// `bundle.url(forResource: "apple-app-site-association", withExtension: "")`
    static func appleAppSiteAssociation(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.appleAppSiteAssociation
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "cat", withExtension: "gif")`
    static func catGif(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.catGif
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "manifest", withExtension: "plist")`
    static func manifestPlist(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.manifestPlist
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "mine", withExtension: "bundle")`
    static func mineBundle(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.mineBundle
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "mine", withExtension: "json")`
    static func mineJson(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.mineJson
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "summary", withExtension: "")`
    static func summary(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.summary
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "timg-2", withExtension: "jpeg")`
    static func timg2Jpeg(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.timg2Jpeg
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "考试结果 - 产品组测试平台", withExtension: "webarchive")`
    static func 考试结果产品组测试平台Webarchive(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.考试结果产品组测试平台Webarchive
      return fileResource.bundle.url(forResource: fileResource)
    }

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 20 images.
  struct image {
    /// Image `cat.gif`.
    static let catGif = Rswift.ImageResource(bundle: R.hostingBundle, name: "cat.gif")
    /// Image `icon_moreOperation_shareFriend`.
    static let icon_moreOperation_shareFriend = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_moreOperation_shareFriend")
    /// Image `icon_moreOperation_shareMoment`.
    static let icon_moreOperation_shareMoment = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_moreOperation_shareMoment")
    /// Image `icon_moreOperation_shareQzone`.
    static let icon_moreOperation_shareQzone = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_moreOperation_shareQzone")
    /// Image `icon_moreOperation_shareWeibo`.
    static let icon_moreOperation_shareWeibo = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_moreOperation_shareWeibo")
    /// Image `icon_nav_about`.
    static let icon_nav_about = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_nav_about")
    /// Image `icon_tabbar_component_selected`.
    static let icon_tabbar_component_selected = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_component_selected")
    /// Image `icon_tabbar_component`.
    static let icon_tabbar_component = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_component")
    /// Image `icon_tabbar_lab_selected`.
    static let icon_tabbar_lab_selected = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_lab_selected")
    /// Image `icon_tabbar_lab`.
    static let icon_tabbar_lab = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_lab")
    /// Image `icon_tabbar_uikit_selected`.
    static let icon_tabbar_uikit_selected = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_uikit_selected")
    /// Image `icon_tabbar_uikit`.
    static let icon_tabbar_uikit = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_uikit")
    /// Image `launch_background`.
    static let launch_background = Rswift.ImageResource(bundle: R.hostingBundle, name: "launch_background")
    /// Image `launch_logo`.
    static let launch_logo = Rswift.ImageResource(bundle: R.hostingBundle, name: "launch_logo")
    /// Image `loading_small`.
    static let loading_small = Rswift.ImageResource(bundle: R.hostingBundle, name: "loading_small")
    /// Image `loading`.
    static let loading = Rswift.ImageResource(bundle: R.hostingBundle, name: "loading")
    /// Image `navigationbar_background`.
    static let navigationbar_background = Rswift.ImageResource(bundle: R.hostingBundle, name: "navigationbar_background")
    /// Image `origin_image_checkbox_checked`.
    static let origin_image_checkbox_checked = Rswift.ImageResource(bundle: R.hostingBundle, name: "origin_image_checkbox_checked")
    /// Image `timg-2.jpeg`.
    static let timg2Jpeg = Rswift.ImageResource(bundle: R.hostingBundle, name: "timg-2.jpeg")
    /// Image `timg-2`.
    static let timg2 = Rswift.ImageResource(bundle: R.hostingBundle, name: "timg-2")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "cat.gif", bundle: ..., traitCollection: ...)`
    static func catGif(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.catGif, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_moreOperation_shareFriend", bundle: ..., traitCollection: ...)`
    static func icon_moreOperation_shareFriend(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_moreOperation_shareFriend, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_moreOperation_shareMoment", bundle: ..., traitCollection: ...)`
    static func icon_moreOperation_shareMoment(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_moreOperation_shareMoment, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_moreOperation_shareQzone", bundle: ..., traitCollection: ...)`
    static func icon_moreOperation_shareQzone(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_moreOperation_shareQzone, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_moreOperation_shareWeibo", bundle: ..., traitCollection: ...)`
    static func icon_moreOperation_shareWeibo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_moreOperation_shareWeibo, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_nav_about", bundle: ..., traitCollection: ...)`
    static func icon_nav_about(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_nav_about, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_component", bundle: ..., traitCollection: ...)`
    static func icon_tabbar_component(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_component, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_component_selected", bundle: ..., traitCollection: ...)`
    static func icon_tabbar_component_selected(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_component_selected, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_lab", bundle: ..., traitCollection: ...)`
    static func icon_tabbar_lab(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_lab, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_lab_selected", bundle: ..., traitCollection: ...)`
    static func icon_tabbar_lab_selected(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_lab_selected, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_uikit", bundle: ..., traitCollection: ...)`
    static func icon_tabbar_uikit(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_uikit, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_uikit_selected", bundle: ..., traitCollection: ...)`
    static func icon_tabbar_uikit_selected(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_uikit_selected, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "launch_background", bundle: ..., traitCollection: ...)`
    static func launch_background(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.launch_background, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "launch_logo", bundle: ..., traitCollection: ...)`
    static func launch_logo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.launch_logo, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "loading", bundle: ..., traitCollection: ...)`
    static func loading(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.loading, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "loading_small", bundle: ..., traitCollection: ...)`
    static func loading_small(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.loading_small, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "navigationbar_background", bundle: ..., traitCollection: ...)`
    static func navigationbar_background(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.navigationbar_background, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "origin_image_checkbox_checked", bundle: ..., traitCollection: ...)`
    static func origin_image_checkbox_checked(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.origin_image_checkbox_checked, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "timg-2", bundle: ..., traitCollection: ...)`
    static func timg2(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.timg2, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "timg-2.jpeg", bundle: ..., traitCollection: ...)`
    static func timg2Jpeg(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.timg2Jpeg, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.nib` struct is generated, and contains static references to 16 nibs.
  struct nib {
    /// Nib `SSErrorVC`.
    static let ssErrorVC = _R.nib._SSErrorVC()
    /// Nib `SSGenericityVC`.
    static let ssGenericityVC = _R.nib._SSGenericityVC()
    /// Nib `SSHandyJsonVC`.
    static let ssHandyJsonVC = _R.nib._SSHandyJsonVC()
    /// Nib `SSKingfisherViewController`.
    static let ssKingfisherViewController = _R.nib._SSKingfisherViewController()
    /// Nib `SSKvcKvoVC`.
    static let ssKvcKvoVC = _R.nib._SSKvcKvoVC()
    /// Nib `SSMoyaVC`.
    static let ssMoyaVC = _R.nib._SSMoyaVC()
    /// Nib `SSObjectMapperVC`.
    static let ssObjectMapperVC = _R.nib._SSObjectMapperVC()
    /// Nib `SSPointVC`.
    static let ssPointVC = _R.nib._SSPointVC()
    /// Nib `SSProgressVC`.
    static let ssProgressVC = _R.nib._SSProgressVC()
    /// Nib `SSProtocolVC`.
    static let ssProtocolVC = _R.nib._SSProtocolVC()
    /// Nib `SSRuntimeVC`.
    static let ssRuntimeVC = _R.nib._SSRuntimeVC()
    /// Nib `SSSwiftJsonVC`.
    static let ssSwiftJsonVC = _R.nib._SSSwiftJsonVC()
    /// Nib `SSThreadLockViewController`.
    static let ssThreadLockViewController = _R.nib._SSThreadLockViewController()
    /// Nib `SSUniversalLinksVC`.
    static let ssUniversalLinksVC = _R.nib._SSUniversalLinksVC()
    /// Nib `SchedulersViewController`.
    static let schedulersViewController = _R.nib._SchedulersViewController()
    /// Nib `TrailViewController`.
    static let trailViewController = _R.nib._TrailViewController()

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSErrorVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssErrorVC) instead")
    static func ssErrorVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssErrorVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSGenericityVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssGenericityVC) instead")
    static func ssGenericityVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssGenericityVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSHandyJsonVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssHandyJsonVC) instead")
    static func ssHandyJsonVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssHandyJsonVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSKingfisherViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssKingfisherViewController) instead")
    static func ssKingfisherViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssKingfisherViewController)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSKvcKvoVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssKvcKvoVC) instead")
    static func ssKvcKvoVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssKvcKvoVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSMoyaVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssMoyaVC) instead")
    static func ssMoyaVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssMoyaVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSObjectMapperVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssObjectMapperVC) instead")
    static func ssObjectMapperVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssObjectMapperVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSPointVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssPointVC) instead")
    static func ssPointVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssPointVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSProgressVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssProgressVC) instead")
    static func ssProgressVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssProgressVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSProtocolVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssProtocolVC) instead")
    static func ssProtocolVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssProtocolVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSRuntimeVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssRuntimeVC) instead")
    static func ssRuntimeVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssRuntimeVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSSwiftJsonVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssSwiftJsonVC) instead")
    static func ssSwiftJsonVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssSwiftJsonVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSThreadLockViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssThreadLockViewController) instead")
    static func ssThreadLockViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssThreadLockViewController)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SSUniversalLinksVC", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.ssUniversalLinksVC) instead")
    static func ssUniversalLinksVC(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ssUniversalLinksVC)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "SchedulersViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.schedulersViewController) instead")
    static func schedulersViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.schedulersViewController)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "TrailViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.trailViewController) instead")
    static func trailViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.trailViewController)
    }
    #endif

    static func schedulersViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.schedulersViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssErrorVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssErrorVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssGenericityVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssGenericityVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssHandyJsonVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssHandyJsonVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssKingfisherViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssKingfisherViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssKvcKvoVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssKvcKvoVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssMoyaVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssMoyaVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssObjectMapperVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssObjectMapperVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssPointVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssPointVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssProgressVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssProgressVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssProtocolVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssProtocolVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssRuntimeVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssRuntimeVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssSwiftJsonVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssSwiftJsonVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssThreadLockViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssThreadLockViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func ssUniversalLinksVC(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.ssUniversalLinksVC.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    static func trailViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.trailViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try nib.validate()
    #endif
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _TrailViewController.validate()
    }

    struct _SSErrorVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSErrorVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSGenericityVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSGenericityVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSHandyJsonVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSHandyJsonVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSKingfisherViewController: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSKingfisherViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSKvcKvoVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSKvcKvoVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSMoyaVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSMoyaVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      func secondView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[1] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSObjectMapperVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSObjectMapperVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSPointVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSPointVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSProgressVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSProgressVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSProtocolVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSProtocolVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSRuntimeVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSRuntimeVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSSwiftJsonVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSSwiftJsonVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSThreadLockViewController: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSThreadLockViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SSUniversalLinksVC: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SSUniversalLinksVC"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _SchedulersViewController: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "SchedulersViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      fileprivate init() {}
    }

    struct _TrailViewController: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "TrailViewController"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }

      static func validate() throws {
        if UIKit.UIImage(named: "icon_tabbar_lab", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'icon_tabbar_lab' is used in nib 'TrailViewController', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }
  #endif

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = HomeViewController

      let bundle = R.hostingBundle
      let name = "Main"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}