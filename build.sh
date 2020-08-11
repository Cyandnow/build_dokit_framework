rm -rf ~/Workspace/project/YXBase/YXDebugTool/vendored_frameworks/DoraemonKit.framework
rm -rf ~/Workspace/project/YXBase/YXDebugTool/Carthage/Build/iOS/DoraemonKit.framework
echo "已清理旧的构建"
echo "正在生成新的构建..."
carthage build --no-skip-current
cp -r Carthage/Build/iOS/DoraemonKit.framework ~/Workspace/project/YXBase/YXDebugTool/vendored_frameworks
cp -r Carthage/Build/iOS/DoraemonKit.framework ~/Workspace/project/YXBase/YXDebugTool/Carthage/Build/iOS
echo "已替换新的构建"
