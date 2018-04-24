//
//  Tabla.m
//  Persistencia
//
//  Created by user138066 on 4/24/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "Tabla.h"

@implementation Tabla



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *idCeldaPrueba = @"celdaPrueba";
    UITableViewCell *celda = [tableView dequeueReusableCellWithIdentifier:idCeldaPrueba];
    if (celda == nil) {
        celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCeldaPrueba];
    }
    NSInteger fila = [indexPath row];
    Grupo *cp = [_pruebas objectAtIndex:fila];
    NSString *str = [NSString stringWithFormat: @"%@ %@ %@ %d", cp.nombre,cp.pais,cp.genero,cp.year];
    [[celda textLabel]setText:str];
    return celda;
}

-(Grupo *)pruebaAt:(NSInteger)pos{
    return (Grupo *)[_pruebas objectAtIndex:pos];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_pruebas count];
}

@end
