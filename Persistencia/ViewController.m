//
//  ViewController.m
//  Persistencia
//
//  Created by user138066 on 4/23/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "ViewController.h"
#import "Grupo.h"
#import "TestDAO.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guardarClick:(id)sender{
    [self insertarbd];
}

-(void) insertarbd{
    NSString *_nombre = [_tnombre text];
    NSString *_genero = [_tgenero text];
    NSString *_pais = [_tpais text];
    NSString *textyear = [_tany text];
    int year = [textyear intValue];
    //
    Grupo *clase = [[Grupo alloc]initConNombre:_nombre pais:_pais genero:_genero year:year];
    NSError *error;
    TestDAO *td = [[TestDAO alloc]init];
    [td insertRecord:clase error:&error];
    [_tnombre setText:@""];
    [_tpais setText:@""];
    [_tgenero setText:@""];
    [_tany setText:@""];
}

-(IBAction)recuperarClick:(id)sender{
    NSError *error;
    TestDAO *td = [[TestDAO alloc]init];
    Grupo *clase = [td recuperarRecord];
    [_tnombre setText:clase.nombre];
    [_tpais setText:clase.pais];
    [_tgenero setText:clase.genero];
    NSString *strValue = @(clase.year).stringValue;
    [_tany setText:strValue ];
}

@end
