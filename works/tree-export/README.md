## Usage

1. フォルダ構造を一覧化したいディレクトリで  
   `tree_export.bat` を実行します。

- フォルダに置いて実行、またはフォルダをドラッグ＆ドロップしてください

2. カレントディレクトリの構造が  
   `tree.txt` として出力されます。

※ Windows 標準の `tree` コマンドを使用しています。


## Output example

.
├─ docs
├─ src
│  ├─ main
│  └─ test
└─ README.md

（※ 実際の出力は環境により異なります）

## Notes

- Windows 標準の `tree` コマンドを使用しています
- 大きなフォルダでは出力に時間がかかる場合があります

## Intended use

- フォルダ構成を README に貼りたいとき
- プロジェクト全体を俯瞰したいとき

## Files

- tree_export.bat : ツリー出力用バッチ
- tree.txt : 実行後に生成される出力ファイル

