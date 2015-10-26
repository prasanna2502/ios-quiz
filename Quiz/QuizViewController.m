//
//  QuizViewController.m
//  Quiz
//
//  Created by Prasanna Jayakumar on 10/25/15.
//  Copyright © 2015 Prasanna. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation QuizViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.questions = @[
                           @"What do you call me?",
                           @"How much do you like me?",
                           @"How much do you think I love you?",
                           @"Will you marry me?",
                           @"Hug me?"
                           ];
        self.answers = @[
                         @"Pattu",
                         @"Sooo much",
                         @"More than you love me",
                         @"Yes",
                         @"<=( xoox )=>"
                         ];
    }
    return self;
}

- (IBAction)showQuestion:(id)sender {
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
    
}

- (IBAction)showAnswer:(id)sender {
    NSString *answer = self.answers[self.currentQuestionIndex];
    self.answerLabel.text = answer;
}

@end
