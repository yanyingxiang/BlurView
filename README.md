# BlurView
基于地图背景的模糊视图

 - 屏幕模糊 实际上是截取self.view当前屏幕快照，然后模糊处理加载到新的view上面，然后将新的view添加到self.view上
 - 在地图上面获取截图 通过layer renderInContext:UIGraphicsGetCurrentContext() 这个方法实际上是获取不到的
 - (UIImage *)rn_screenshot 方法来自 From: http://blog.csdn.net/iunion/article/details/43954941
 - (UIImage *)rn_boxblurImageWithBlur:(CGFloat)blur exclusionPath:(UIBezierPath *)exclusionPath 图像模糊处理方法抽取自RNGridMenu
 - from: https://github.com/rnystrom/RNGridMenu
 - 感谢github大神 Ryan Nystrom
 
 - demo基于百度地图，自行下载导入 BaiduMapAPI.framework mapapi.bundle 即可
 - 欢迎批评指正，我只是个搬运工。
