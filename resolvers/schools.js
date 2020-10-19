let conn = require('../db')

const schools = async (parent, args, { req, res}) => {
    let sql = `select * from schools`
    let myPromise = new Promise((resolve, reject) => {
        conn.query(sql,(err,result)=>{
            if(err) throw err;
            if(result) {
                const rows = JSON.parse(JSON.stringify(result));
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

const classes = async (parent, args, { req, res}) => {
    let sql = `select * from classes`
    let myPromise = new Promise((resolve, reject) => {
        conn.query(sql,(err,result)=>{
            if(err) throw err;
            if(result) {
                const rows = JSON.parse(JSON.stringify(result));
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
        schools,
        classes
    },
     

}