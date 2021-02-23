@echo off
cd /d %~dp0
echo === Start merging all js build files to single js file in public directory...
SET path=..\build\src\js\
SET misc=%path%Confetti.js
SET root=%path%LocalData.js+%path%Events.js+%path%G.js+%path%Input.js+%path%Message.js
SET datb=%path%Databases.js+%path%GameSession.js
SET stgs=%path%Stages.js+%path%stages\*.js
SET entr=%path%Disconnection.js+%path%OnLoad.js+%path%Entrypoint.js
SET comp=%misc%+%root%+%datb%+%stgs%+%entr%
copy /b %comp% ..\public\js\app.js
echo === Merge done!