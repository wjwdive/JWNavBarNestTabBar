//
//  FirstDetailViewController.m
//  JWNavBarNestTabBar
//
//  Created by infosys on 2017/9/21.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import "FirstDetailViewController.h"

const static NSString *baseUrl = @"http://api.avatardata.cn/XingShiQiYuan/LookUp?";
const static NSString *appKey = @"key=cb5265987f19d9cbaee5ebd47cf416d3";
const static NSString *xingshi = @"&xingshi=";
const static NSString *otherParams = @"&dtype=json&format=yes";


@interface FirstDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputTF;
@property (weak, nonatomic) IBOutlet UITextView *resultTV;

@end

@implementation FirstDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"天气查询";
    
    [self.inputTF addTarget:self action:@selector(afterInput:) forControlEvents:UIControlEventEditingDidEnd];
    self.resultTV.editable = NO;
    
}

- (id)init{
//    隐藏底部tabbar 只有在这里设置才有用，在viewDidLoad 和 viewWillAppear中设置都无效。
    self.hidesBottomBarWhenPushed =  YES;
    return [super init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)searhName:(id)sender {
    NSString *sUrl = [NSString stringWithFormat:@"%@%@%@",@"http://ws.webxml.com.cn/WebServices/WeatherWS.asmx/getWeather?theCityCode=",_inputTF.text,@"&theUserID="];
    NSLog(@"url str :%@",sUrl);
    sUrl = [sUrl stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURL *url = [NSURL URLWithString:sUrl];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSString *resultDataStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"error %@",error);
        dispatch_sync(dispatch_get_main_queue(), ^{
            self.resultTV.text = resultDataStr;
            NSLog(@"resultDataStr : %@  ", resultDataStr);
        });
    }];
    
    [dataTask resume];
}

- (void)afterInput:(UITextView *)tv {
    if([_inputTF isEqual:tv]){
        [_inputTF resignFirstResponder];
    }
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
