//
//  Grupo.m
//  Persistencia
//
//  Created by user138066 on 4/23/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "Grupo.h"

@implementation Grupo

-(id) initConNombre:(NSString *)nombre pais:(NSString *)pais genero:(NSString *)genero year:(int)year{
    if (self = [super init]) {
        _nombre = nombre;
        _pais = pais;
        _genero = genero;
        _year = year;
    }
    return self;
}

-(id) initConId:(NSInteger)idGrupo nombre:(NSString *)nombre pais:(NSString *)pais genero:(NSString *)genero year:(int)year{
    if (self = [super init]) {
        _idGrupo = idGrupo;
        _nombre = nombre;
        _pais = pais;
        _genero = genero;
        _year = year;
    }
    return self;
}

@end
