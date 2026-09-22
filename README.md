# JasonG98 Homebrew Tap

个人 macOS 应用的 Homebrew 安装源。

## 状态

仓库已准备好，目前尚未收录 Cask。[OneClick](https://github.com/JasonG98/OneClick) 首个正式版本发布后加入。

## 安装源

```sh
brew tap JasonG98/tap
```

## 更新 OneClick

1. 在 OneClick 仓库公开 Release，确保 DMG 附件可下载。
2. 将该 Release 配套的 `oneclick.rb` 放入本仓库的 `Casks/`，核对版本、下载地址和 SHA-256 后提交。

Cask 上线后可使用 `brew install --cask JasonG98/tap/oneclick`。
本仓库仅存放安装描述，不重复构建应用，无额外 CI。
