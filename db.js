const mysql = require('mysql');
require('dotenv').config()
const conn = mysql.createConnection({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASS,
    database: process.env.MYSQL_DB
});
conn.connect((err,result) => {
    if(!err) {
        console.log('Database Connected ' + process.env.MYSQL_DB)
    }else{
        console.log('Database not Connected', err)
    }
});
 
module.exports = conn