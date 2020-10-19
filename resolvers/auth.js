let conn = require('../db')
const jwt = require("jsonwebtoken");
const crypto = require('crypto');
const bcrypt = require('bcrypt');
const saltRounds = 10;
const myPlaintextPassword = '123456';
const someOtherPlaintextPassword = 'not_bacon';
require('dotenv').config()
 
const me = async (parent, args, { req, res}) => {
    const email = args.email
    const pass = args.pass
    
    let sql = `select * from users where email="${email}"`
    let myPromise = new Promise((resolve, reject) => {
        conn.query(sql,(err,result)=>{
            if(err) throw err;
            const rows = JSON.parse(JSON.stringify(result[0]));
            // // here you can access rows
            const { name, id, email, type, student_id, pass } = rows
            bcrypt.compare(args.pass, pass, function(err, result) {
                if(err) throw new Error(err)
                if(result){
                    const token = jwt.sign({data: id}, "secret", { expiresIn: "1h" });
                    const user = {
                        name: name,
                        id: id,
                        email: email,
                        type,
                        student_id,
                        token
                    }
                    resolve(user)
                }
                else {
                    // throw new Error('Pass mismatch')
                    reject('Pass mismatch')
                }
                
            });
            
            
        })
    });
    let result;
    try {
      result = await myPromise;
    } catch(error) {
      return error;
    }
    return  result;
}

module.exports = {
    Query: {
        user: me
    },
    Mutation: {
        login:me
    }

}