//
//  LACAppDelegate.h
//  Shaker
//
//  Created by Daniel Suo on 12/29/13.
//  Copyright (c) 2013 The Leather Apron Club. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LACAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
