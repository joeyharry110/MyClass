//
//  UserModel.h
//  DispatchTest
//
//  Created by chenzetong on 15/4/19.
//  Copyright (c) 2015年 chenzetong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseModel.h"

@interface UserModel : BaseModel

@property (nonatomic,strong) NSString*              uid;
@property (nonatomic,strong) NSString*              userName;
@property (nonatomic,strong) NSString*              nickName;
@property (nonatomic,assign) NSInteger              age;
@end
