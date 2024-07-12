@echo off

title Webhook spammer by cryptic.cc
set /p message="Enter the message to spam: "
set /p times="Enter the number of times to send the message: "
set /p webhooks="Enter the webhooks to spam (separated by spaces): "

for %%i in (%webhooks%) do (
    for /l %%x in (1,1,%times%) do (
        curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"%message%\"}" %%i
    )
)
