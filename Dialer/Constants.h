//
//  Constants.h
//  Dialer
//
//  Created by William Richardson on 3/18/12.
//  Copyright (c) 2012 CodeSpan Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

// extern NSString * const MyFirstConstant; 

// phone number label from contact list
extern NSString * const WorkPhoneLabel;
extern NSString * const WorkPhoneLabelSubStringCheck;
extern NSString * const HomePhoneLabel;
extern NSString * const HomePhoneLabelSubStringCheck;
extern NSString * const MobilePhoneLabel;
extern NSString * const MobilePhoneLabelSubStringCheck;
extern NSString * const IPhonePhoneLabel;
extern NSString * const IPhonePhoneLabelSubStringCheck;

// Button Titles
extern NSString * const CallButtonTitle;
extern NSString * const FavoriteButtonTitle;

// person dictionary info
// name of person
extern NSString * const PersonName;
// listing of phones for that person
extern NSString * const PersonPhoneList;
// id generated for that phone entry
extern NSString * const PersonPhoneId;
// is person listed on favorites view
extern NSString * const PersonIsFavorite;
// a phone number entry for that person
extern NSString * const PersonPhoneNumber;
// just the digits of the phone number entry for that person
extern NSString * const PersonPhoneNumberDigits;

// format strings, used in building strings for the dictionaries
// @"%@ %@"		- name in person dict
extern NSString * const PersonNameFormat;
// @"%@_%ld"		- phoneLabel (from addressbook of phone type), index
extern NSString * const UniquePhoneIdentifierFormat;
// @"(%@) %@"		- phone number detail text label
extern NSString * const PhoneNumberDisplayFormat;

// regular expression pattern
// @"\d*"       - convert string phone number into digits
extern NSString * const PhoneNumberDigitsPattern;

// tableview cell id
// contact list cellId
extern NSString * const ContactListTableViewCellId;
// favorites list cellId 
extern NSString * const FavoritesListTableViewCellId;
// detail list cellId
extern NSString * const DetailListTableViewCellId;

// tableview section names
// favorites list
extern NSString * const FavoritesSectionName;
// general contact list
extern NSString * const GeneralContactsSectionName;

// UIView titles
// general contacts list, tableview
extern NSString * const InitialWindowTitle;

// image filenames
// empty box no checkmark
extern NSString * const EmptyBoxImageTitle;
// box with checkmark
extern NSString * const BoxWithCheckmarkImageTitle;