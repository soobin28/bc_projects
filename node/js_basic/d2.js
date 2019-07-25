var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'mysql',
  database : 'node'
});

connection.connect((err)=>{
    console.log( err ? '접속오류' : '접속성공' )
    // 연결종로
    if(err){
        console.log('접속오류',err)
    }else{
        //  본 쿼리는 아이디와 비번이 고정되어 있어서 재사용성이 떨어진다 => 아이디와 비번을
        // sql문장에 뜯어내고 외부에서 세팅될 수 있게 조정
        let sql =`SELECT * FROM users WHERE uid=? AND upw=?;`
        connection.query(sql,['guest','1'],(err, rows)=>{
            // 게스트라는 문구를 출력하게 rows를 표현하시오.
            console.log(err,rows[0].name)
            connection.end();
            console.log('접속종료')
        })
    }
});