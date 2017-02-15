# RanCountDownButton
swift倒计时,常用于收取验证码


```objc
// 点击按钮后 收取验证码状态
    - 将按钮设置为不可点击
sender.isEnabled = false
    - 设置倒计时的时间
sender.starCountDownWithSeconf(secondCount: 60)
    - 倒计时显示的标题
sender.countChanging { (countBtn, second) -> (String) in
    return "\(second)秒"
}

// 结束
sender.countFinish { (countBtn, sencond) -> (String) in
        countBtn.isEnabled = true
        - 结束后的标题
        return "重新获取"
}
