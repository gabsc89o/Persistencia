//
//  Grupo.h
//  Persistencia
//
//  Created by user138066 on 4/23/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Grupo : NSObject

@property NSInteger idGrupo;
@property NSString *nombre;
@property NSString *genero;
@property NSString *pais;
@property int year;

-(id) initConNombre:(NSString *)nombre
               pais:(NSString *)pais
             genero:(NSString *)genero
               year:(int)year;

-(id) initConId:(NSInteger) idGrupo
         nombre:(NSString *)nombre
           pais:(NSString *)pais
         genero:(NSString *)genero
           year:(int)year;

@end
