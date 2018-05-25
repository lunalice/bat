@echo off
echo /r サブフォルダまで繰り返し %%A変数名 in 検索対象フィルター do コマンド echo とかで渡す変数を指定
echo for /r 検索フォルダ %%変数 in (検索フィルター) do (コマンド) %%変数 %%~オプション変数
echo 出力：最終更新日時,ファイルサイズ,フルパス
set /P IN=検索フォルダを入力してください:
if "%IN%"=="" goto EXITBAT1
if not exist "%IN%" goto EXITBAT2
echo %CD%\list.txtを再生成します。
if exist "%CD%\list.txt" DEL %CD%\list.txt
for /r "%IN%" %%A in (*) do echo %%~tA,%%~zA,%%~fA >> %CD%\list.txt
echo "%IN%"内の情報をリスト化しました。
echo デスクトップのlist.txtを参照して下さい。
pause
EXIT

:EXITBAT1
echo フォルダ入力不備。
pause
exit

:EXITBAT2
echo フォルダが存在しません。
pause
exit