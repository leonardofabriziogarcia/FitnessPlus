//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<simple_animation_progress_bar/SimpleAnimationProgressBarPlugin.h>)
#import <simple_animation_progress_bar/SimpleAnimationProgressBarPlugin.h>
#else
@import simple_animation_progress_bar;
#endif

#if __has_include(<video_player_avfoundation/FVPVideoPlayerPlugin.h>)
#import <video_player_avfoundation/FVPVideoPlayerPlugin.h>
#else
@import video_player_avfoundation;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [SimpleAnimationProgressBarPlugin registerWithRegistrar:[registry registrarForPlugin:@"SimpleAnimationProgressBarPlugin"]];
  [FVPVideoPlayerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FVPVideoPlayerPlugin"]];
}

@end
