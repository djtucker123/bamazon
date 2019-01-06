// // this module allows user to interact with the existing db for customers to place order
// var MySecrets = require('./ReadIdPass.js');
// var mysql = require('mysql');
var cTable = require('console.table');
// // // console.log(MySecrets.MysqlDb);
// // var con = mysql.createConnection({
// //   debug: false,
// //   host: "localhost",
// //   user: MySecrets.MySqlDb.id.replace('\r',""),
// //   password:MySecrets.MySqlDb.secret.replace('\r',""),
// //   database: 'bamazon'
// // });
module.exports = {
  displayStock: function displayStock(displaythis)
   {
    console.log(displaythis);
    con.connect(); 
    con.query('select * from products ; ', function( err, result ) 
    { 
     if (err) throw err;
     const table = cTable.getTable(result);
     console.log(table);
     con.end();
     return table;
    });
    // drop connection avoid leakl
    con.end();
   },

};
