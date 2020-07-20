# build_dokit_framework
使 DoraemonKit 支持 carthage 打包

使用之前需要先 clone 或者 下载 [DoraemonKit](https://github.com/didi/DoraemonKit)

然后把此项目 clone 到 DoraemonKit 根目录

```
pod install
```
因为我们项目原因, 只用到了 Core, WithLogger, WithGPS, WithLoad 这四个模块.
如果需要加减模块, 自己修改文件的引用.

另外, 一开始有尝试使用 cocoapods-packager 这个 plugin, 但是失败了

另外也针对旋转屏这个 [issue](https://github.com/didi/DoraemonKit/issues/396) 创建了一个 demo
