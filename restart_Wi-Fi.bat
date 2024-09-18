@echo off
@rem 「'*802.11*'」でデバイスが絞れない場合編集をすること
@rem 文字コードがUTF-8の場合下記のremの削除
@rem chcp 65001 > nul

powershell -Command "Get-PnpDevice | ? {$_.friendlyname -like '*802.11*'} | Disable-PnpDevice -Confirm:$false"
timeout /t 2 >nul
powershell -Command "Get-PnpDevice | ? {$_.friendlyname -like '*802.11*'} | Enable-PnpDevice -Confirm:$false"
