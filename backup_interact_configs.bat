echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"
echo datestamp: "%datestamp%"
echo timestamp: "%timestamp%"
echo fullstamp: "%fullstamp%"
timeout 2



mkdir allInteract\%fullstamp%\AuditService
mkdir allInteract\%fullstamp%\AuditServiceListener
mkdir allInteract\%fullstamp%\EmailSender
mkdir allInteract\%fullstamp%\FileService
mkdir allInteract\%fullstamp%\Hub
mkdir allInteract\%fullstamp%\IADA
mkdir allInteract\%fullstamp%\IMS
mkdir allInteract\%fullstamp%\Interact
mkdir allInteract\%fullstamp%\InteractRemoteAPI
mkdir allInteract\%fullstamp%\LogService
mkdir allInteract\%fullstamp%\SignalIR
mkdir allInteract\%fullstamp%\SubmitFormManager



copy "C:\Program Files (x86)\Blue Prism\Audit Service\*.json" allInteract\%fullstamp%\AuditService\
copy "C:\Program Files (x86)\Blue Prism\Audit Service\*.config" allInteract\%fullstamp%\AuditService\

copy "C:\Program Files (x86)\Blue Prism\Audit Service Listener\*.json" allInteract\%fullstamp%\AuditServiceListener\
copy "C:\Program Files (x86)\Blue Prism\Audit Service Listener\*.config" allInteract\%fullstamp%\AuditServiceListener\

copy "C:\Program Files (x86)\Blue Prism\Email Sender\*.json" allInteract\%fullstamp%\EmailSender\
copy "C:\Program Files (x86)\Blue Prism\Email Sender\*.config" allInteract\%fullstamp%\EmailSender\

copy "C:\Program Files (x86)\Blue Prism\File Service\*.json" allInteract\%fullstamp%\FileService\
copy "C:\Program Files (x86)\Blue Prism\File Service\*.config" allInteract\%fullstamp%\FileService\

copy "C:\Program Files (x86)\Blue Prism\Hub\*.json" allInteract\%fullstamp%\Hub\
copy "C:\Program Files (x86)\Blue Prism\Hub\*.config" allInteract\%fullstamp%\Hub\


copy "C:\Program Files (x86)\Blue Prism\IADA\*.json" allInteract\%fullstamp%\IADA\
copy "C:\Program Files (x86)\Blue Prism\IADA\*.config" allInteract\%fullstamp%\IADA\

copy "C:\Program Files (x86)\Blue Prism\IMS\*.json" allInteract\%fullstamp%\IMS\
copy "C:\Program Files (x86)\Blue Prism\IMS\*.config" allInteract\%fullstamp%\IMS\

copy "C:\Program Files (x86)\Blue Prism\Interact\*.json" allInteract\%fullstamp%\Interact\
copy "C:\Program Files (x86)\Blue Prism\Interact\*.config" allInteract\%fullstamp%\Interact\

copy "C:\Program Files (x86)\Blue Prism\Interact Remote API\*.json" allInteract\%fullstamp%\InteractRemoteAPI\
copy "C:\Program Files (x86)\Blue Prism\Interact Remote API\*.config" allInteract\%fullstamp%\InteractRemoteAPI\

copy "C:\Program Files (x86)\Blue Prism\Log Service\*.json" allInteract\%fullstamp%\LogService\
copy "C:\Program Files (x86)\Blue Prism\Log Service\*.config" allInteract\%fullstamp%\LogService\

copy "C:\Program Files (x86)\Blue Prism\SignalR\*.json" allInteract\%fullstamp%\SignalIR\
copy "C:\Program Files (x86)\Blue Prism\SignalR\*.config" allInteract\%fullstamp%\SignalIR\

copy "C:\Program Files (x86)\Blue Prism\Submit Form Manager\*.json" allInteract\%fullstamp%\SubmitFormManager\
copy "C:\Program Files (x86)\Blue Prism\Submit Form Manager\*.config" allInteract\%fullstamp%\SubmitFormManager\





timeout 60
