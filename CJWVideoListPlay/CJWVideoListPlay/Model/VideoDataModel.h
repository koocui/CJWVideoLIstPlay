//
//  VideoDataModel.h
//  CJWVideoListPlay
//
//  Created by 小崔 on 2018/4/18.
//  Copyright © 2018年 CJW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommentDataModel:NSObject
//动态ID
@property(nonatomic,strong) NSString * dynamicID;
//评论的上级UID
@property(nonatomic,strong) NSString * referUID;
//评论者ID
@property(nonatomic,strong) NSString * selfUID;
//评论这昵称
@property(nonatomic,strong) NSString * selfNickName;
//评论内容
@property(nonatomic,strong) NSString * content;
//创建时间
@property(nonatomic,strong) NSString * createdTime;
//头像
@property(nonatomic,strong) NSString * faceurl;
@property (nonatomic ,strong) NSString* iconIndex;
/*
 获取视频动态评论的列表
 @param DynamiciID 动态ID
 @param page      页数
 @param block     block种dateary返回数据列表error返回网络错误码；
 
 */
+(void)getCommentDataWithBlockWithDynamicID:(NSString*)DynamicID forFlag:(int)flag AndPage:(NSString*)page ForHandelBlaock:(void (^)(NSArray * dataAry,int code))block;
@end

@interface VideoDataModel : NSObject
//师徒标题
@property(nonatomic,strong) NSString * title;
//位置信息
@property(nonatomic,strong) NSString * location;
//用户昵称
@property(nonatomic,strong) NSString * nickname;
//用户头像
@property(nonatomic,strong) NSString * avater_thumb;
//视频地址
@property(nonatomic,strong) NSString * video_url;
//视频首诊画面
@property(nonatomic,strong) NSString * cover_url;
//视频火力值
@property(nonatomic,strong) NSString * stata_tips;
//评论次数
@property(nonatomic,strong) NSString * comment_count;
//点赞次数
@property(nonatomic,strong) NSString * digg_count;
//播放次数
@property(nonatomic,strong) NSString * play_count;
//分享次数
@property(nonatomic,strong) NSString * share_count;
@property(nonatomic,strong) NSString * AuthorUid;
@property(nonatomic,strong) NSString * dyid;

//头像
@property(nonatomic,strong) NSString * iconIndex;

/**
 获取火山直播首页video页签数据接口
 
 @param block block中dateary返回模型类数据列表error返回网络错误码
 */


+(void)getHomePageVideDataWithBlock:(void (^)(NSArray * dataAry,NSError * error))block;

@end




































