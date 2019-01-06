const db = require("./models/products");
const inquirer = require('./inquirer');
const bamazonCustomer = require('./bamazonCustomer');
const processOrder = require('./processOrder');



db.sequelize.sync().then(function(){
  db.products.findAll({}).then(function(data){
    console.log('------------PRINTING DB DATA-----------------');
    console.log(JSON.stringify(data, null, 2));
  });

});

var ThisOrder;
const run = async () => {

  ThisOrder = await inquirer.GetOrder('this should be first');
  console.log(" here 1 item id " + ThisOrder.itemId + " Quantity " + ThisOrder.itemQuantity);
  const tt = await bamazonCustomer.displayStock('this should be second');
  console.log(" here 2 ");
  await processOrder.processOrder(ThisOrder,'this should be third');
  // tt = await bamazonCustomer.displayStock('this should be after processing order !');


  // console.log(tt);
  
}

run();
// console.log(ThisOrder);
