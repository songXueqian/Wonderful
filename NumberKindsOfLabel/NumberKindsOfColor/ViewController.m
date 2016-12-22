//
//  ViewController.m
//  NumberKindsOfColor
//
//  Created by 宋学谦 on 16/1/7.
//  Copyright © 2016年 Song Xueqian. All rights reserved.
//

#import "ViewController.h"

//大哥大(无论想实现任何效果，都需要调用这个)
#import "UIColor+Wonderful.h"

//文本高亮
#import "SXColorLabel.h"


//颜色渐变
#import "SXDataSource.h"
#import "SXColorGradientView.h"

//跑马灯
#import "SXMarquee.h"

@interface ViewController ()

@property(nonatomic,strong)SXDataSource *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //文本高亮
    SXColorLabel *sxlbl = [[SXColorLabel alloc]initWithFrame:CGRectMake(40, 40, 350, 30)];
    sxlbl.font = [UIFont systemFontOfSize:20];
    sxlbl.text = @"今天要记得通知<Peter>和<Robin>去开会。";
    [self.view addSubview:sxlbl];
    
    SXColorLabel *sxlbl2 = [[SXColorLabel alloc]initWithFrame:CGRectMake(40, 90, 350, 30)];
    sxlbl2.font = [UIFont systemFontOfSize:20];
    sxlbl2.text = @"今天要记得通知[Peter]和[Robin]去开会。";
    [self.view addSubview:sxlbl2];
    
    SXColorLabel *sxlbl3 = [[SXColorLabel alloc]initWithFrame:CGRectMake(40, 140, 350, 30)];
    sxlbl3.font = [UIFont systemFontOfSize:15];
    sxlbl3.text = @"今天要记得通知<Peter>和[Robin]去开会。";
    [self.view addSubview:sxlbl3];
    
    UILabel *sxlbl4 = [[SXColorLabel alloc]initWithFrame:CGRectMake(40, 190, 350, 30)];
    sxlbl4.font = [UIFont systemFontOfSize:15];
    sxlbl4.text = @"今天要记得通知<Peter>和[Robin]去开会。";
    sxlbl4.textColor = [UIColor goldenrod];
    [self.view addSubview:sxlbl4];

    //颜色渐变
    NSArray *colorArray = @[Wonderful_BlueColor4,Wonderful_PurpleColor5,Wonderful_PinkColor5,Wonderful_RedColor5,Wonderful_YelloeColor5,Wonderful_GreenColor3,Wonderful_CyanColor4];
    CGRect rect = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 255, 375, 255);
    SXColorGradientView *grv5 = [SXColorGradientView createWithColorArray:colorArray frame:rect direction:SXGradientToRight];
//    SXColorGradientView *grv5_5 = [SXColorGradientView createWithColor:[UIColor yellowColor] frame:rect direction:SXGradientToTop];
    
    [self.view addSubview:grv5];
//    [self.view addSubview:grv5_5];
    
    
    
    
    //跑马灯
    SXMarquee *mar = [[SXMarquee alloc]initWithFrame:CGRectMake(20, 245, 335, 35) speed:1 Msg:@"重大活动，天猫的双十一，然而并没卵用" bgColor:[UIColor cornColor] txtColor:[UIColor grayColor]];
    [mar changeMarqueeLabelFont:[UIFont systemFontOfSize:16]];
    [mar changeTapMarqueeAction:^{
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"点击事件" message:@"可以设置弹窗，当然也能设置别的" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
    }];
    [mar start];
    
    [self.view addSubview:mar];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
