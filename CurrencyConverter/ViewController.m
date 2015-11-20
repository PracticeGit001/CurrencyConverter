//
//  ViewController.m
//  CurrencyConverter
//
//  Created by Teckchun on 11/20/15.
//  Copyright © 2015 Teckchun. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h" 
#import "CurrencyRequest/CRCurrencyResults.h"


@interface ViewController ()<CRCurrencyRequestDelegate>

@property (strong, nonatomic) CRCurrencyRequest *currencyRequest;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	_currencyRequest.delegate = self;
	[_currencyRequest start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(IBAction)buttonConvertClicked:(id)sender{
	_currencyRequest = [[CRCurrencyRequest alloc]init];
	
}
-(void)currencyRequest:(CRCurrencyRequest *)req retrievedCurrencies:(CRCurrencyResults *)currencies{
	
}

@end
