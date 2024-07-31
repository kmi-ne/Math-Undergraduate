# Math-Undergraduate
主に学部生向けの，比較的簡潔な数学ノートのシリーズ．

## シリーズ

### Logic_Undg ([pdf](https://github.com/kmi-ne/Math-Undergraduate/blob/main/Logic_Undg/Logic_Undg.pdf))
『学部数学のための論理学』  
進捗状況: 0/10

## ビルド方法
同梱の TeXソースファイルから，ローカルで文書をビルドすることもできます．

### 環境
TeX Live 2024 が必須です．fullスキームがインストールされていることが望ましいです．

LuaLaTeX でのビルドを推奨していますが，XeLaTeX でもビルド可能です（(u)pLaTeX には対応していません）．割と最近追加されたパッケージやオプションも使用しているため，ビルド前には必ず TeX Live をアップデートしてください．

### 手順
1. 右上緑色の Code → Download ZIP から zipファイルをダウンロードし，適当な所に保存，解凍．
2. コマンドラインで， `src/???_Undg` をカレントディレクトリに指定．ただし，`???_Undg` はビルドしたい文書名（上記「シリーズ」を参照）．例えば，『学部数学のための論理学』をビルドしたい場合は，`src/Logic_Undg` をカレントディレクトリに指定．
3. 以下をコマンドラインで実行．
    - LuaLaTeX の場合
    ```powershell
    latexmk -norc -r .latexmkrc -lualatex main
    ```
   - XeLaTeX の場合
    ```powershell
    latexmk -norc -r .latexmkrc -xelatex main
    ```
    ただし，ホームディレクトリに (.)latexmkrc を設置していない場合は
    ```powershell
    latexmk -lualatex main
    ```
    ```powershell
    latexmk -xelatex main
    ```
    のみでもOK．
