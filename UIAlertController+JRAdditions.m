//
//  UIAlertController+JRAdditions.m
//  CCFanMi
//
//  Created by cloudtech on 4/26/16.
//  Copyright © 2016 cloundCall. All rights reserved.
//

#import "UIAlertController+JRAdditions.h"
#import "AppConfig.h"

@implementation UIAlertController (JRAdditions)

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message okTitle:(NSString *)okTitle okAction:(void (^)(UIAlertAction *action))okAction inController:(UIViewController *)controller completion:(void (^)(void))completion {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okButtonAction = [UIAlertAction actionWithTitle:okTitle style:UIAlertActionStyleDefault handler:okAction];
    
    [alertController addAction:okButtonAction];
    alertController.view.tintColor = THEME_COLOR;
    [controller presentViewController:alertController animated:YES completion:nil];
    return alertController;
}

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message cancelTitle:(NSString *)cancelTitle cancelAction:(void (^)(UIAlertAction *action))cancelAction doneTitle:(NSString *)doneTitle doneAction:(void (^)(UIAlertAction *action))doneAction inController:(UIViewController *)controller completion:(void (^)(void))completion {

    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *doneButtonAction = [UIAlertAction actionWithTitle:doneTitle style:UIAlertActionStyleDefault handler:doneAction];
    
    UIAlertAction *cancelButtonAction = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:cancelAction];
    
    [alertController addAction:doneButtonAction];
    [alertController addAction:cancelButtonAction];
    alertController.view.tintColor = THEME_COLOR;
    [controller presentViewController:alertController animated:YES completion:nil];
    return alertController;
}

+ (instancetype)actionSheetWithTitle:(NSString *)title message:(NSString *)message cancelTitle:(NSString *)cancelTitle cancelAction:(void (^)(UIAlertAction *action))cancelAction firstTitle:(NSString *)firstTitle firstAction:(void (^)(UIAlertAction *action))firstAction secondTitle:(NSString *)secondTitle secondAction:(void (^)(UIAlertAction *action))secondAction inController:(UIViewController *)controller completion:(void (^)(void))completion {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *firstButton = [UIAlertAction actionWithTitle:firstTitle style:UIAlertActionStyleDefault handler:firstAction];
    
    UIAlertAction *secondButton = [UIAlertAction actionWithTitle:secondTitle style:UIAlertActionStyleDefault handler:secondAction];
    
    UIAlertAction *cancelButtonAction = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:cancelAction];
    
    [alertController addAction:firstButton];
    [alertController addAction:secondButton];
    [alertController addAction:cancelButtonAction];
    alertController.view.tintColor = SUB_TITLE_COLOR;
    [controller presentViewController:alertController animated:YES completion:nil];
    return alertController;
}

@end
