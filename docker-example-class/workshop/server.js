var MySQL = require('mysql'),
    express = require('express'),
    app = express();

var connection = MySQL.createConnection({
  host : process.env.MYSQL_HOST || 'localhost',
  user : process.env.MYSQL_USER || '',
  password  : process.env.MYSQL_PASSWORD || ''
});

connection.connect(function(err){
  if(err){
    console.log('error connecting:', err.stack);
    process.exit(1);
  }
  console.log('connected as id:', connection.threadId);
})

app.get('/', function(req, res){
  res.send('Hello world :)');
})

app.listen(3000, function(){
  console.log('Server started ....');
})