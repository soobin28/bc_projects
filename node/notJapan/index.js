// 모듈화=> 누구나 사용할 수 있다.
// npm i -- save mysql를 반드시 수행할 것.
var mysql      = require('mysql');
exports.selectLogin = (uid, upw, cb) =>{
    var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : 'mysql',
    database : 'node'
    });
    connection.connect((err)=>{
        console.log( err ? '접속오류' : '접속성공' )
        if(err){
            console.log('접속오류',err)
        }else{
            let sql =`SELECT * FROM users WHERE uid=? AND upw=?;`
            connection.query(sql, [uid, upw], (err, rows)=>{
                cb(err,rows);
                connection.end();
            })
        }
    });
}
