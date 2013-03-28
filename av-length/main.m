//
//  main.m
//  av-length
//
//  Created by Jamie Bullock on 28/03/2013.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

void displayUsageStatement(NSString *appPath);
Float64 durationInSecondsForSoundfileWithPath(NSString *soundfilePath);

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        if (argc != 2)
        {
            NSString *appPath = [NSString stringWithUTF8String:argv[0]];
            displayUsageStatement(appPath);
        }
        else
        {
            NSString *firstArgument = [NSString stringWithUTF8String:argv[1]];
            
            if ([firstArgument isEqualToString:@"-types"])
            {
                printf("Supported MIME types:\n");
                NSString *mimeTypesString = [NSString stringWithFormat:@"%@", [AVURLAsset audiovisualMIMETypes]];
                printf("%s\n", [mimeTypesString UTF8String]);
            }
            else
            {
                Float64 soundfileDuration = durationInSecondsForSoundfileWithPath(firstArgument);
                printf("%f\n", soundfileDuration);
            }
        }
    }
    return 0;
}

void displayUsageStatement(NSString *appPath)
{
    NSString *appName = [appPath lastPathComponent];
    printf("Usage: %s [-types] <soundfile path>\n", [appName UTF8String]);
}

Float64 durationInSecondsForSoundfileWithPath(NSString *soundfilePath)
{
    NSURL *soundfileURL = [NSURL fileURLWithPath:soundfilePath];
    AVURLAsset* audioAsset = [AVURLAsset URLAssetWithURL:soundfileURL options:nil];
    CMTime audioDuration = audioAsset.duration;
    CGFloat audioDurationSeconds = CMTimeGetSeconds(audioDuration);
    
    return audioDurationSeconds;
}
