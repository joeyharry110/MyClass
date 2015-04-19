//
//  BaseModel.m
//  DispatchTest
//
//  Created by chenzetong on 15/4/19.
//  Copyright (c) 2015年 chenzetong. All rights reserved.
//

#import "BaseModel.h"
#import <objc/runtime.h>

@interface BaseModel(){
    NSMutableArray*                     _properties;
}
@end

@implementation BaseModel

- (instancetype)init{
    self = [super  init];
    if (self) {
        unsigned int count,i;
        objc_property_t* protertys = class_copyPropertyList([self class], &count);
        if (count > 0) {
            _properties = [NSMutableArray arrayWithCapacity:count];
        }
        for (i = 0; i < count; i++) {
            const char* name = property_getName(protertys[i]);
            [_properties addObject:[NSString stringWithFormat:@"%s",name]];
        }
    }
    return self;
}

- (void)setParamObject:(NSObject *)paramObject{
    BOOL isValid = NO;
    for (NSString* key in _properties) {
        if ([paramObject isKindOfClass:[NSDictionary class]]) {
            isValid = [paramObject valueForKey:key] == nil ? NO : YES;
        }else{
            isValid = [paramObject respondsToSelector:@selector(key)];
        }
        if (isValid) {
            id value = [paramObject valueForKey:key];
            if (![value isKindOfClass:[NSNull class]] && value != nil) {
                [self setValue:value forKey:key];
            }
        }
    }
}

@end
