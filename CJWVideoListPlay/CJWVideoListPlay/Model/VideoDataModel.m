//
//  VideoDataModel.m
//  CJWVideoListPlay
//
//  Created by 小崔 on 2018/4/18.
//  Copyright © 2018年 CJW. All rights reserved.
//

#import "VideoDataModel.h"
#import "AFNetworking.h"
@implementation CommentDataModel
-(id)initCommentDataWithDic:(NSDictionary*)Dic{
    if (self = [super init]){
        if ([Dic objectForKey:@"content"] && ![[Dic objectForKey:@"content"] isKindOfClass:[NSNull class]]){
            self.content = [Dic objectForKey:@"content"];
        }
        if ([Dic objectForKey:@"created_time"] && ![[Dic objectForKey:@"created_time"] isKindOfClass:[NSNull class]]){
            self.createdTime = [self updateTimeForRow:[Dic objectForKey:@"created_time"]];
        }
        if ([Dic  objectForKey:@"dynamic_id"] && ![[Dic objectForKey:@"dynamic_id"] isKindOfClass:[NSNull class]]){
            self.dynamicID = [Dic objectForKey:@"dynamic_id"];
        }
        int iconIndex = 0;
        if ([Dic objectForKey:@"iconindex"] && ![[Dic objectForKey:@"iconindex"] isKindOfClass:[NSNull class]]) {
            iconIndex = [[Dic objectForKey:@"iconindex"] intValue];
        }
        self.iconIndex = [NSString stringWithFormat:@"%d",iconIndex];
        if ([Dic objectForKey:@"faceurl"] && ![[Dic objectForKey:@"faceurl"] isKindOfClass:[NSNull class]]) {
            if (iconIndex == 1000) {
                //                self.faceurl = [[NSBundle mainBundle]pathForResource:kDefaultAvatarIcon ofType:kPngName];
            }else
            {
                self.faceurl = [Dic objectForKey:@"faceurl"];
            }
        }
        if ([Dic objectForKey:@"from_nickname"] && ![[Dic objectForKey:@"from_nickname"] isKindOfClass:[NSNull class]]) {
            self.selfNickName = [Dic objectForKey:@"from_nickname"];
        }
        if ([Dic objectForKey:@"from_uid"] && ![[Dic objectForKey:@"from_uid"] isKindOfClass:[NSNull class]]) {
            self.selfUID = [Dic objectForKey:@"from_uid"];
        }
        if ([Dic objectForKey:@"refer_uid"] && ![[Dic objectForKey:@"refer_uid"] isKindOfClass:[NSNull class]]) {
            self.referUID = [Dic objectForKey:@"refer_uid"];
        }
    }
  
    return  self;
}

-(NSString * )updateTimeForRow:(NSString *)createTimeString{
    //获取当前时间挫
    NSTimeInterval currentTime = [[NSDate date] timeIntervalSince1970];
    // 创建歌曲时间戳(后台返回的时间 一般是13位数字)
    NSTimeInterval creatTime = [createTimeString longLongValue];
    
        // 时间差
    NSTimeInterval time = currentTime - creatTime;
    NSInteger sec = time / 60;
    if (sec<60){
        return [NSString stringWithFormat:@"%ld分钟前",(long)sec];
    }
    //秒转小时
    NSInteger hours = time/3600;
    if (hours < 24){
        return [NSString stringWithFormat:@"%ld小时前",(long)hours];
    }
    
    //秒转天
    NSInteger days = time/3600/24;
    if (days < 30){
        return [NSString stringWithFormat:@"%ld天前",(long)days];
    }
    
    //秒转年
    NSInteger years = time/3600/24/30/12;
    return [NSString stringWithFormat:@"%ld年前",(long)years];
}
+(void)getCommentDataWithBlockWithDynamicID:(NSString *)DynamicID forFlag:(int)flag AndPage:(NSString *)page ForHandelBlaock:(void (^)(NSArray *, int))block{
    
}



@end







@implementation VideoDataModel
-(id)initVideoDataWithDic:(NSDictionary*)Dic{
    if (self = [super init]){
        if ([Dic objectForKey:@"data"] && ![[Dic objectForKey:@"data"] isKindOfClass:[NSNull class]]){
            NSDictionary * videoInfo = [Dic objectForKey:@"data"];
            self.title = [videoInfo objectForKey:@"text"];
            self.stata_tips = [videoInfo objectForKey:@"tips"];
            self.location = [videoInfo objectForKey:@"location"];
            if ([videoInfo objectForKey:@"author"] && ![[videoInfo objectForKey:@"author"] isKindOfClass:[NSNull class]]){
                NSDictionary * authorDic = [videoInfo objectForKey:@"author"];
                self.nickname = [authorDic objectForKey:@"nickname"];
                self.avater_thumb = [[[authorDic objectForKey:@"avatar_thumb"] objectForKey:@"url_list"] objectAtIndex:0];
                NSLog(@"avatar_thumb %@",self.avater_thumb);
            }
            if ([videoInfo objectForKey:@"video"] && ![[videoInfo objectForKey:@"video"] isKindOfClass:[NSNull class]]) {
                NSDictionary* videoUrlDic = [videoInfo objectForKey:@"video"];
                self.cover_url = [[[videoUrlDic objectForKey:@"cover"] objectForKey:@"url_list"] objectAtIndex:0];
                self.video_url = [[videoUrlDic objectForKey:@"download_url"] objectAtIndex:0];
            }
            
            if ([videoInfo objectForKey:@"stats"] && ![[videoInfo objectForKey:@"stats"] isKindOfClass:[NSNull class]]) {
                NSDictionary* statsDic = [videoInfo objectForKey:@"stats"];
                self.comment_count = [NSString stringWithFormat:@"%d",[[statsDic objectForKey:@"comment_count"] intValue]];
                self.digg_count = [NSString stringWithFormat:@"%d",[[statsDic objectForKey:@"digg_count"] intValue]];
                self.play_count = [NSString stringWithFormat:@"%d",[[statsDic objectForKey:@"play_count"] intValue]];
                self.share_count = [NSString stringWithFormat:@"%d",[[statsDic objectForKey:@"share_count"] intValue]];
            }
        }
    }
    return  self;
}
+(void)getHomePageVideDataWithBlock:(void (^)(NSArray *, NSError *))block{
    NSString * configPath = [[NSBundle mainBundle] pathForResource:@"video01" ofType:@"json"];
    NSData * configData = [NSData dataWithContentsOfFile:configPath];
    NSDictionary * responseObject = [NSJSONSerialization JSONObjectWithData:configData options:NSJSONReadingAllowFragments error:nil];
    NSArray *  getFromResponse = [responseObject objectForKey:@"data"];
    NSMutableArray * mutablePosts = [NSMutableArray arrayWithCapacity:[getFromResponse count]];
    
    for (NSDictionary * attributes in getFromResponse) {
        VideoDataModel * datamodel = [[VideoDataModel alloc]initVideoDataWithDic:attributes];
        [mutablePosts addObject:datamodel];
    }
    if (block){
        block([NSArray arrayWithArray:mutablePosts],nil);
    }
}
@end
























