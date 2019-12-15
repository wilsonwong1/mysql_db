const inquirer = require("inquirer");
const mysql = require("mysql");
const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "Hulkandlily1014!",
    database: "bamazon_db"
});
connection.connect(err => {
    if (err) throw err;
    console.log(`You have been connected to thread ID: ${connection.threadID}`);
    showTable("products");
    connection.end();
});
showTable = table => {
    connection.query(`SELECT * FROM ??`, table, (err, res) => {
        if (err) throw err;
        console.table(res);
    });
};

customerService = () => {
    inquirer.prompt({
        type: 'list',
        name: 'customerMenu',
        message: 'How may we assist you today?',
        choices: ['view inventory', 'purchase car', 'exit']
    }).then(res => {
        if (res.customerMenu === 'view inventory') {
            console.table(showTable);
        } else {
            process.exit();
        }
    });
}







//inquirer, what does it do 
