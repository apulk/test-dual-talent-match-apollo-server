let conn = require('../db')
const bcrypt = require('bcrypt');
const saltRounds = 10;
const myPlaintextPassword = '123456';
const addStudent = async (parent, args, { req, res}) => {
    var pass 
    const { name, email, id, mobile, gender, zipcode, street, state, city, birthdate, country, class_id, school_id,file, file_no } = args.input
    let sql
    let myPromise = new Promise((resolve, reject) => {
        bcrypt.genSalt(saltRounds, function(err, salt) {
            bcrypt.hash(myPlaintextPassword, salt,async function(err, hash) {
                pass = hash
                sql = `call addStudent("${id}","${name}","${email}",'${mobile}', "${gender}", ${zipcode}, "${street}", "${city}", "${state}", "${birthdate}", "${country}", "${class_id}", "${school_id}","${file}", "${file_no}","${pass}")`
                conn.query(sql,(err,result)=>{
                    if(err) throw err;
                    if(result[0][0]) {
                        const rows = JSON.parse(JSON.stringify(result[0][0]));
                        resolve(rows)
                    }
                })
            });
        });
        
    });
    let result;
    try {
    result = await myPromise;
    } catch(error) {
    return error;
    }
    return result;
   
    
}

module.exports = {
    Mutation: {
        addStudent
    },
}