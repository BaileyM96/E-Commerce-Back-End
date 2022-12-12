const express = require('express');
const routes = require('./routes');
// import sequelize connection
const Sequelize = require('./config/connection');


const app = express();
const PORT = process.env.PORT || 3001;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(routes);

// sync sequelize models to the database, then turn on the server
Sequelize.sync().then(() => {
  app.listen(PORT, () => console.log(`App listening on port ${PORT}`));
});

//TODO sync sequelize to the server.js page **DONE

//TODO add password info to run the server to see if it works

//TODO add data to tables in schema page **DONE

//TODO Add code to the models to add values to the databases **DONE

//TODO look at the routes folder and add code if needed 
//TODO add a delete function to delete the data from the table

//TODO look and code to the seeds folder **DONE

//TODO finish product routes file 

//TODO finish tag routes file

//TODO find out why I am getting unknown database
