# qrcode zsh plugin

## zinit

将此 zsh 插件以 zinit 代码片段的方式引入，即在.zshrc 添加

```bash
zinit ice lucid wait='0'; zinit light liuzhuoming23/qrcode-zsh-plugin
```

## oh my zsh

将项目 clone 到 plugins 文件夹下，并配置 `qrcode` 到.zshrc 的 plugins 中

```bash
git clone https://github.com/liuzhuoming23/qrcode-plugin-zsh.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/qrcode
```
