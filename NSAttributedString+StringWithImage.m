//
//  NSAttributedString+StringWithImage.m
//  Voca
//
//  Created by Pradeep Narendra on 10/1/15.
//  Copyright © 2015 Zaark. All rights reserved.
//

#import "NSAttributedString+StringWithImage.h"

@implementation NSAttributedString (StringWithImage)

+ (NSMutableAttributedString *)getAttributedName:(NSString *)attributedText withFlag:(NSString *)imageName {
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image =  [UIImage imageNamed:imageName];
    attachment.bounds = CGRectMake(+10, -2, attachment.image.size.width - 2, attachment.image.size.height);
    NSAttributedString *attachmentString = [NSAttributedString attributedStringWithAttachment:attachment];
    
    NSMutableAttributedString *myString= [[NSMutableAttributedString alloc] initWithString:attributedText];
    [myString appendAttributedString:[[NSAttributedString alloc] initWithAttributedString:attachmentString]];
    return myString;
}

+ (NSMutableAttributedString *)getAttributedTextWithImageName:(NSString *)imageName withAttributedName:(NSString *)attributedText {
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image =  [UIImage imageNamed:imageName];
    attachment.bounds = CGRectMake(-10, -2, attachment.image.size.width - 2, attachment.image.size.height);
    NSAttributedString *attachmentString = [NSAttributedString attributedStringWithAttachment:attachment];
    
    NSMutableAttributedString *myString= [[NSMutableAttributedString alloc] initWithAttributedString:attachmentString];
    [myString appendAttributedString:[[NSAttributedString alloc] initWithString:attributedText]];
    return myString;
}

+ (NSMutableAttributedString *)getAttributedName:(NSString *)attributedText withImage:(UIImage *)imageObject {
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image =  imageObject;
    attachment.bounds = CGRectMake(+10, -2, attachment.image.size.width - 2, attachment.image.size.height);
    NSAttributedString *attachmentString = [NSAttributedString attributedStringWithAttachment:attachment];
    
    NSMutableAttributedString *myString= [[NSMutableAttributedString alloc] initWithString:attributedText];
    [myString appendAttributedString:[[NSAttributedString alloc] initWithAttributedString:attachmentString]];
    return myString;
}

+ (NSMutableAttributedString *)getAttributedTextWithImage:(UIImage *)imageObject withName:(NSString *)attributedText {
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image =  imageObject;
    attachment.bounds = CGRectMake(-10, -2, attachment.image.size.width - 2, attachment.image.size.height);
    NSAttributedString *attachmentString = [NSAttributedString attributedStringWithAttachment:attachment];
    
    NSMutableAttributedString *myString= [[NSMutableAttributedString alloc] initWithAttributedString:attachmentString];
    [myString appendAttributedString:[[NSAttributedString alloc] initWithString:attributedText]];
    return myString;
}

@end
