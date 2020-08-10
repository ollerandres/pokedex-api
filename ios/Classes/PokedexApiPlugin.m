#import "PokedexApiPlugin.h"
#if __has_include(<pokedex_api/pokedex_api-Swift.h>)
#import <pokedex_api/pokedex_api-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pokedex_api-Swift.h"
#endif

@implementation PokedexApiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPokedexApiPlugin registerWithRegistrar:registrar];
}
@end
