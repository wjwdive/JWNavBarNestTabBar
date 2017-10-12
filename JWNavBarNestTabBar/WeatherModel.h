//
//  WeatherModel.h
//  JWNavBarNestTabBar
//
//  Created by infosys on 2017/9/21.
//  Copyright © 2017年 wjwdive. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 * 天气模型对象。除了当天的天气数据，还有未来4天的天气数据。
 */
@interface WeatherModel : NSObject
//省份 地区/洲 国家名（国外）
@property (nonatomic,copy) NSString *province;
//查询的天气预报地区名称
@property (nonatomic,copy) NSString *region;
//查询的天气预报地区ID
@property (nonatomic, assign) NSInteger regionID;
//最后更新时间 格式：yyyy-MM-dd HH:mm:ss
@property (nonatomic, strong) NSDate *lastUpateTime;
//当前天气实况：气温、风向/风力、湿度
@property (nonatomic, copy) NSString *todayFact;
//第一天 空气质量、紫外线强度
@property (nonatomic, copy) NSString *airQualityAndUVindex;
//"第一天 天气和生活指数
@property (nonatomic, copy) NSString *weatherAndLifeIndex;
//"第一天 概况 格式：M月d日 天气概况
@property (nonatomic, copy) NSString *generalOverview1;
//第一天 气温
@property (nonatomic, copy) NSString *temperature1;
//第一天 风力/风向"
@property (nonatomic, copy) NSString *wendPower1;

//第一天  天气图标1
@property (nonatomic,copy) NSString *icon11;
//第一天  天气图标2
@property (nonatomic,copy) NSString *icon12;

//第二天 概况 格式：M月d日 天气概况
@property (nonatomic, copy) NSString *generalOverview2;
//第二天 气温
@property (nonatomic, copy) NSString *temperature2;
//第二天 风力/风向"
@property (nonatomic, copy) NSString *wendPower2;

//第二天  天气图标1
@property (nonatomic,copy) NSString *icon21;
//第二天  天气图标2
@property (nonatomic,copy) NSString *icon22;


//第三天 概况 格式：M月d日 天气概况
@property (nonatomic, copy) NSString *generalOverview3;
//第三天 气温
@property (nonatomic, copy) NSString *temperature3;
//第三天 风力/风向"
@property (nonatomic, copy) NSString *wendPower3;

//第三天  天气图标1
@property (nonatomic,copy) NSString *icon31;
//第三天  天气图标2
@property (nonatomic,copy) NSString *icon32;


//第四天 概况 格式：M月d日 天气概况
@property (nonatomic, copy) NSString *generalOverview4;
//第四天 气温
@property (nonatomic, copy) NSString *temperature4;
//第四天 风力/风向"
@property (nonatomic, copy) NSString *wendPower4;

//第四天  天气图标1
@property (nonatomic,copy) NSString *icon41;
//第四天  天气图标2
@property (nonatomic,copy) NSString *icon42;


//第五天 概况 格式：M月d日 天气概况
@property (nonatomic, copy) NSString *generalOverview5;
//第五天 气温
@property (nonatomic, copy) NSString *temperature5;
//第五天 风力/风向"
@property (nonatomic, copy) NSString *wendPower5;

//第五天  天气图标1
@property (nonatomic,copy) NSString *icon51;
//第五天  天气图标2
@property (nonatomic,copy) NSString *icon52;

@end
