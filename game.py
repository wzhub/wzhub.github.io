# -*- coding: utf-8 -*-
def skin_ages():
    print 'Meanwhile, you\'re interested on how skin ages, and what we can do about it.'
    print '你对皮肤为什么会变老，以及如何防止其衰老产生了极大的兴趣。'
    print 'a. You started a trip to explore the secrets. 有开始了探索奥秘的旅程。'
    print 'b. You were just curious, didn\'t do anything. 你只是好奇，什么也没做。'
    on_the_trip = raw_input('> ')
    if on_the_trip == 'a':
        print 'You found a diet that could potentially help us all look younger.'
        print '你找到了一种能让人看起来更年轻的食谱。'
        print 'Skin, believe it or not, is an organ.'
        print ''
    else:
        end_life()

def plastic_surgeon():
    print 'One day, you were operating a surgery: '
    print '一天，你在给病人做手术：'
    print 'a. You asked for a big damp swap from your assistant. 你向助手要了一个大棉球。'
    print 'b. You did nothing. 你什么也没做。'
    damp_swap = raw_input('> ')
    if damp_swap == 'a':
        print 'Patient\'s skin was saved!'
        print '病人的皮肤被挽救了。'
        skin_ages()
    else:
        print 'Patient\s skin surgery failed, you career ended.'
        print '病人的皮肤手术没有成功，你的职业生涯也因此走到了尽头。'
        end_life()

def who_you_are():
    print 'who do you want to be?'
    print '你想要成为什么人？'
    print 'a. A plastic surgeon. 一个整形外科医生。'
    print 'b. You\'re nothing. 一事无成。'
    want_to_be = raw_input('> ')
    if want_to_be == 'a':
        print 'You\'re a plastic surgeon. You work with skin everyday.'
        print '你是一个整形外科医生，每天和皮肤打交道。'
        plastic_surgeon()
    else:
        end_life()

def end_life():
    print 'Your life ended in calm.'
    print '你一生平静，安详的结束了生命。'
    print 'God gave you another chance. Do you want to accept it?'
    print '但神明给了你重新开始的机会，你愿意接受吗？'
    print 'a. Accept. 接受。'
    print 'b. Give up. 放弃。'
    another_chance = raw_input('> ')
    if another_chance == 'a':
        who_you_are()
    else:
        print 'Goodbye world.'
        print '再见。'

who_you_are()
