# 動作確認方法

## index
curl -X GET http://127.0.0.1:3000/tasks/
## show
curl -X GET http://127.0.0.1:3000/tasks/#{id}
## Create
curl -F "task[content]=#{contentの値}" -F "task[status]=#{statusの値}" http://127.0.0.1:3000/tasks.json
## UPDATE
curl -X PUT -F "task[content]=#{id}" -F "task[status]=#{statusの値}" http://127.0.0.1:3000/tasks/#{id}.json
## DELETE
curl -X DELETE http://127.0.0.1:3000/tasks/#{id}.json
