# playwright-sandbox

devcontainer 内では any address で LISTEN させる必要がある。
`--ui-host` や `--host` オプションが必要。

## HTML Test Reports

1. devcontainer内: `pnpm exec playwright show-report --host 0.0.0.0`
2. ホストでブラウザを開く: http://localhost:9323

## テスト実行方法

### devcontainer内のコマンド

* ヘッドレス: `pnpm playwright test`
* ブラウザ(GUI): 
  * 手動(選択実行): `pnpm playwright test --ui`
    * テスト用にブラウザを開いて、指定したテストケースを実行する
  * 自動: `pnpm playwright test --headed`

### VSCode extension

https://playwright.dev/docs/getting-started-vscode

- サイドメニューの Testing アイコンを選択
- TEST EXPLORER からテストを選択してクリックして実行する
- ヘッドレス: PLAYWRIGHT > SETTINGS から "Show browser" を無効

#### 備考

`~/.cache/ms-playwright` にブラウザが必要

```
node ➜ /workspaces/playwright-sandbox (main) $ ls -al ~/.cache/ms-playwright/
total 32
drwxr-xr-x 8 node node 4096 Nov  9 12:31 .
drwxr-xr-x 7 node node 4096 Nov  9 12:36 ..
drwxr-xr-x 3 node node 4096 Nov  9 12:31 chromium-1194
drwxr-xr-x 3 node node 4096 Nov  9 12:31 chromium_headless_shell-1194
drwxr-xr-x 2 node node 4096 Nov  9 12:31 ffmpeg-1011
drwxr-xr-x 3 node node 4096 Nov  9 12:31 firefox-1495
drwxr-xr-x 2 node node 4096 Nov  9 12:30 .links
drwxr-xr-x 4 node node 4096 Nov  9 12:31 webkit-2215
```