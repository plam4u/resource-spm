import Foundation

// Test Resources
let picture = Bundle.module.path(forResource: "image", ofType: "png")

print(picture)

// Test Localized Resources
// English (based on defaultLocalization).
print(NSLocalizedString("hello_world", bundle: .module, comment: ""))

func localizationBundle(forLanguage language: String) -> Bundle? {
 	if let path = Bundle.module.path(forResource: language, ofType: "lproj") {
 		return Bundle(path: path)
 	} else {
 		return nil
 	}
 }

 // Indonesia localization.
 if let indonesiaBundle = localizationBundle(forLanguage: "id") {
 	print(NSLocalizedString("hello_world", bundle: indonesiaBundle, comment: ""))
 }

 // French localization.
 if let frenchBundle = localizationBundle(forLanguage: "fr") {
 	print(NSLocalizedString("hello_world", bundle: frenchBundle, comment: ""))
 }

  // Spanish localization.
 if let frenchBundle = localizationBundle(forLanguage: "es") {
 	print(NSLocalizedString("hello_world", bundle: frenchBundle, comment: ""))
 }