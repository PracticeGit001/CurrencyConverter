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
@property (weak, nonatomic) IBOutlet UILabel *labelJP;
@property (weak, nonatomic) IBOutlet UITextField *textFieldNumber;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(IBAction)buttonConvertClicked:(id)sender{
   
    _currencyRequest =[[CRCurrencyRequest alloc]init];
    _currencyRequest.delegate = self;
    [_currencyRequest start];
}
-(void)currencyRequest:(CRCurrencyRequest *)req retrievedCurrencies:(CRCurrencyResults *)currencies{
   
    _labelJP.text = [NSString stringWithFormat:@"%f ¥", _textFieldNumber.text.intValue * currencies.JPY];
    NSLog(@"%@",currencies.description);
}

@end
