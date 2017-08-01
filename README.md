# LaunchADView

两行代码加入启动广告页，Swift 3.0，异步加载， 无第三方依赖。Add a launch AD view in your app, with Swift 3.0.

原理上参照了xiongoahc的LaunchAD项目，改为了Swift 3.0，并且做了适当优化。

原项目把赋值和显示放在一个方法里面，虽然调用比较方便，但对于图片和跳转URL需要从服务器返回的情况，可能会发生网络异步请求导致app界面早于启动页出现，或者网络同步请求堵塞app启动的情况。LaunchADView将赋值与显示拆分开来，赋值成功与否不会影响启动页的显示，如果本地没有值，则直接跳过启动页或者使用老的启动页。

## 截图

![image](https://raw.githubusercontent.com/jihongboo/LaunchADView/master/Screen.gif)

## 注意

`请勿将`LaunchADView代码放入AppDelegate、UITabbarController中，因为这些类的初始化代码是异步运行的，可能会出现界面早于启动页出现的情况。

## 示例

```objective-c
    //  用于加载启动页数据，可放到网络请求的回调中，图片异步缓存
    LaunchADView.setValue(imgURL: "http://cdn.duitang.com/uploads/item/201408/27/20140827062302_ymAJe.jpeg", webURL: "https://www.baidu.com", showTime: 3)

    //  用于显示启动页。若启动数据更新，则将在下次启动后展示新的启动页
    LaunchADView.show { (url) in
        let vc = WebView()
        vc.url = url
        self.navigationController?.pushViewController(vc, animated: true)
    }
```

## 使用

pod 'LaunchADView'

## 感谢

感谢以下的项目

- [LaunchAD](https://github.com/xiongoahc/LaunchAD) 
