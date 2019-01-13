const inquirer = require("inquirer");
const mysql = require("mysql");
var connection = mysql.createConnection({
    host: "127.0.0.1",
  
    // Your port; if not 3306
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: "owolideefe900",
    database: "bamazon_DB"
  });
  connection.connect(function(err) {
    if (err) throw err;
    customer()
  });
  function customer(){
   
    
    console.log("---Come shop at Bamazon we got everything you need!---");
    inquirer
    .prompt({
      name: "buyorlook",
      type: "rawlist",
      message: "are you interested in buying or just looking around?",
      choices: ["Buying", "Looking"]
    })
    .then(function(answer) {
      // based on their answer, either call the bid or the post functions
      if (answer.buyorlook.toUpperCase() === "Buying") {
        console.log( function warehouse() {
          connection.query("SELECT * FROM product", function(err, res) {
            if (err) throw err;
        
            // Log all results of the SELECT statement
            connection.end();
          });
        });
      }
      else {
        console.log("Take your time.");
      }
    });
    
        
      
    }
    inquirer.prompt([
      {
        name: "ID",
        type: "list",
        choices: ["1","2","3","4","5","6","7","8","9","10"],
        message: "What are you interested in buying?"
      }
    ])
    //having trouble getting items in inventory to show and having should with inquirer displaying the proper console.log whats left to be completed is so parts of 
    //consumer step 3
