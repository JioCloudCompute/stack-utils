#Now restart all the screens
screen -S stack -p 'n-api' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'n-cond' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'n-crt' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'n-net' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'n-sch' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'n-novnc' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'c-api' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'c-sch' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'c-vol' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'g-api' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'g-reg' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'ec2-api' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'ec2-api-metadata' -X stuff `echo '^C^[[A\n'`
screen -S stack -p 'ec2-api-s3' -X stuff `echo '^C^[[A\n'`
