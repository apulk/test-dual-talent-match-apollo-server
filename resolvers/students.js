let conn = require('../db')

const students = async (parent, args, { req, res}) => {
    let sql = `call students()`
    let myPromise = new Promise((resolve, reject) => {
        conn.query(sql,(err,result)=>{
            if(err) throw err;
            if(result[0]) {
                const rows = JSON.parse(JSON.stringify(result[0]));
                resolve(rows)
            }    
        })
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
    Query: {
        students
    },
     

}