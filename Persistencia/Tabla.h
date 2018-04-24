//
//  Tabla.h
//  Persistencia
//
//  Created by user138066 on 4/24/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Grupo.h"

//agregar <UITableViewDataSource>
@interface Tabla : NSObject<UITableViewDataSource>

@property NSArray *pruebas;

-(Grupo *)pruebaAt:(NSInteger)pos;

@end
