@echo off
echo /r �T�u�t�H���_�܂ŌJ��Ԃ� %%A�ϐ��� in �����Ώۃt�B���^�[ do �R�}���h echo �Ƃ��œn���ϐ����w��
echo for /r �����t�H���_ %%�ϐ� in (�����t�B���^�[) do (�R�}���h) %%�ϐ� %%~�I�v�V�����ϐ�
echo �o�́F�ŏI�X�V����,�t�@�C���T�C�Y,�t���p�X
set /P IN=�����t�H���_����͂��Ă�������:
if "%IN%"=="" goto EXITBAT1
if not exist "%IN%" goto EXITBAT2
echo %CD%\list.txt���Đ������܂��B
if exist "%CD%\list.txt" DEL %CD%\list.txt
for /r "%IN%" %%A in (*) do echo %%~tA,%%~zA,%%~fA >> %CD%\list.txt
echo "%IN%"���̏������X�g�����܂����B
echo �f�X�N�g�b�v��list.txt���Q�Ƃ��ĉ������B
pause
EXIT

:EXITBAT1
echo �t�H���_���͕s���B
pause
exit

:EXITBAT2
echo �t�H���_�����݂��܂���B
pause
exit