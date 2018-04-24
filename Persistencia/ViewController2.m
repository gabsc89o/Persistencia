//
//  ViewController2.m
//  Persistencia
//
//  Created by user138066 on 4/24/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "ViewController2.h"
#import "Grupo.h"
#import "TestDAO.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tablaDS = [[Tabla alloc]init];
    [_tablePruebas setDataSource:_tablaDS];
}

-(void)viewWillAppear:(BOOL)animated{
    TestDAO *td = [[TestDAO alloc]init];
    NSError *error;
    [_tablaDS setPruebas:[td listarPruebas :&error]];
    [_tablePruebas reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
