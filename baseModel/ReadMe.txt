通过kvohe反射机制实现对象属性赋值；
使用说明：
   （1）继承BaseModel类；
   （2）随意定义属性；
   （3）通过给paramObject赋值来简化属性赋值过程。
 例如：
    NSMutableDictionary* dic = [NSMutableDictionary dictionary];
    [dic setObject:@"12" forKey:@"age"];
    [dic setObject:@"123" forKey:@"uid"];
    [dic setObject:@"赵脆梨" forKey:@"userName"];
    UserModel* obj = [[UserModel alloc] init];
    [obj setParamObject:dic];