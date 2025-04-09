//
//  ClassicView.h
//  Classic
//
//  Created by Gregory John Casamento on 4/8/25.
//

#import <ScreenSaver/ScreenSaver.h>

@interface ClassicView : ScreenSaverView

@property (nonatomic, assign) NSPoint position;
@property (nonatomic, assign) NSPoint velocity;
@property (nonatomic, strong) NSColor *color;

@end
