//
//  UIAlertController+JRAdditions.h
//  CCFanMi
//
//  Created by cloudtech on 4/26/16.
//  Copyright © 2016 cloundCall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (JRAdditions)

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message okTitle:(NSString *)okTitle okAction:(void (^)(UIAlertAction *action))okAction inController:(UIViewController *)controller completion:(void (^)(void))completion;

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message cancelTitle:(NSString *)cancelTitle cancelAction:(void (^)(UIAlertAction *action))cancelAction doneTitle:(NSString *)doneTitle doneAction:(void (^)(UIAlertAction *action))doneAction inController:(UIViewController *)controller completion:(void (^)(void))completion;

+ (instancetype)actionSheetWithTitle:(NSString *)title message:(NSString *)message cancelTitle:(NSString *)cancelTitle cancelAction:(void (^)(UIAlertAction *action))cancelAction firstTitle:(NSString *)firstTitle firstAction:(void (^)(UIAlertAction *action))firstAction secondTitle:(NSString *)secondTitle secondAction:(void (^)(UIAlertAction *action))secondAction inController:(UIViewController *)controller completion:(void (^)(void))completion;

@end
