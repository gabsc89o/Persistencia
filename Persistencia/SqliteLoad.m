//
//  SqliteLoad.m
//  Persistencia
//
//  Created by user138066 on 4/23/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "SqliteLoad.h"

@implementation SqliteLoad

-(id) init{
    if (self = [super init]) {
        NSArray *pathq = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *directorio = [pathq objectAtIndex:0];
        NSString *path = [directorio stringByAppendingPathComponent:@"bbdd.sqlite"];
        
        if (sqlite3_open_v2([path UTF8String], &_bbdd, SQLITE_OPEN_READWRITE, nil) != SQLITE_OK) {
            NSException *ex = [[NSException alloc]initWithName:@"Excepcion BBDD" reason:@"Error al abrir BBDD" userInfo:nil];
            @throw ex;
        }
    }
    return self;
}

-(void) destructor{
    sqlite3_close(_bbdd);
}

@end
