//
//  ClassicView.m
//  Classic
//
//  Created by Gregory John Casamento on 4/8/25.
//

#import "ClassicView.h"

@implementation ClassicView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview {
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        self.animationTimeInterval = 1.0 / 30.0;

        self.position = NSMakePoint(NSWidth(frame) / 2, NSHeight(frame) / 2);
        self.velocity = NSMakePoint(3.0, 2.0);
        self.color = [NSColor redColor];
    }
    return self;
}

- (void)startAnimation {
    [super startAnimation];
}

- (void)stopAnimation {
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect {
    [super drawRect:rect];

    [[NSColor blackColor] setFill];
    NSRectFill(rect);

    [self.color setFill];
    NSBezierPath *circle = [NSBezierPath bezierPathWithOvalInRect:NSMakeRect(self.position.x, self.position.y, 50, 50)];
    [circle fill];
}

- (void)animateOneFrame {
    NSRect bounds = self.bounds;

    self.position = NSMakePoint(self.position.x + self.velocity.x,
                                self.position.y + self.velocity.y);

    if (self.position.x < 0 || self.position.x > NSWidth(bounds) - 50) {
        self.velocity = NSMakePoint(-self.velocity.x, self.velocity.y);
    }
    if (self.position.y < 0 || self.position.y > NSHeight(bounds) - 50) {
        self.velocity = NSMakePoint(self.velocity.x, -self.velocity.y);
    }

    [self setNeedsDisplay:YES];
}

- (BOOL)hasConfigureSheet {
    return NO;
}

- (NSWindow *)configureSheet {
    return nil;
}

@end
