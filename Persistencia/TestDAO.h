//
//  TestDAO.h
//  Persistencia
//
//  Created by user138066 on 4/23/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "Grupo.h"

@interface TestDAO : NSObject

{
@private
    sqlite3_stmt *_queryInsert;
}

-(BOOL)insertRecord: (Grupo *)prueba
              error:(NSError **)error;
-(Grupo *)recuperarRecord;

-(NSArray *)listarPruebas:(NSError **)error;

@end
