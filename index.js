const { version } = require("./package.json");
const http = require("http");
const express = require("express");
const app = express();
app.get("/", (req, res) => {
  res.sendStatus(200);
});
app.get("/api/status", (request, response) => {
  response.json({ version: version, guildCount: client.guilds.cache.size, readyAt: client.readyTimestamp, uptime: client.uptime });
});
app.listen(process.env.PORT);
setInterval(() => {
  http.get(`http://${process.env.PROJECT_DOMAIN}.glitch.me/`);
}, 280000);

const Discord = require("discord.js");
const mysql = require("mysql");
const mysqldump = require("mysqldump");
const { getRandomNumber, twoDigits } = require("./function.js");

const mysql_config = {
  connectTimeout: 30000,
  connectionLimit: 10,
  host: process.env.DBHOST,
  user: process.env.DBUSER,
  password: process.env.DBPW,
  database: process.env.DBNAME,
  supportBigNumbers: true,
  bigNumberStrings: true,
  charset: "utf8mb4"
};

var pool = mysql.createPool(mysql_config);

const log = console.log;
const client = new Discord.Client();

client.login(process.env.TOKEN);

client.once("ready", () => {
  delete console["log"];
  delete console["error"];
console.log = async function(str) {
  log(str);
  try {
    var logChannel = await client.channels.fetch("695941416886599690");
  } catch(err) {
    return log.error(err)
  }
    logChannel.send("`" + str + "`");
}
  console.error = async function(str) {
    log.error(str);
  try {
    var logChannel = await client.channels.fetch("695941416886599690");
  } catch(err) {
    return log.error(err)
  }
    logChannel.send("`ERROR!`");
  }
  console.log("Ready!");
  client.user.setActivity("DLC of N0rthWestW1nd", { type: "WATCHING" });
  var currentDate = new Date();
  var date = currentDate.getDate();
  var month = currentDate.getMonth() + 1;
  var year = currentDate.getFullYear();
  var hour = currentDate.getHours();
  
  var fileName = year + "-" + twoDigits(month) + "-" + twoDigits(date) + "-" + twoDigits(hour);
  
  mysqldump({
    connection: mysql_config,
    dumpToFile: './backups/' + fileName + ".sql",
}).then(() => {
    console.log("Backup to file " + fileName);
  }).catch(err => console.log("Unable to backup files"));
  
  //requiring path and fs modules
const path = require('path');
const fs = require('fs');
//joining path of directory 
const directoryPath = path.join(__dirname, 'backups');
//passsing directoryPath and callback function
fs.readdir(directoryPath, function (err, files) {
    //handling error
    if (err) {
        return console.log('Unable to scan directory: ' + err);
    } 
    //listing all files using forEach
    files.forEach(function (file) {
        // Do whatever you want to do with the file
      var args = file.split("-");
      var year = parseInt(args[0]);
      var month = parseInt(args[1]) - 1;
      var date = parseInt(args[2]);
      var hour = parseInt(args[3]);
      
      var fileDate = new Date(year, month, date, hour);
      if(Date.now() - fileDate.getTime() > 2592000000) {
        fs.unlinkSync(`./backups/${file}`);
        console.log("Deleted a file that is older than a month.")
      }
    });
  console.log("Checked all backups.");
});
  
});

client.on("message", message => {
  if(message.author.bot) return;
  
  var exp = Math.round(getRandomNumber(5, 15));
  var currentDate = new Date();
  
  var date = currentDate.getDate();
        var month = currentDate.getMonth();
        var year = currentDate.getFullYear();
        var hour = currentDate.getHours();
        var minute = currentDate.getMinutes();
        var second = currentDate.getSeconds();

        var sqlDate =
          year +
          "-" +
          twoDigits(month + 1) +
          "-" +
          twoDigits(date) +
          " " +
          twoDigits(hour) +
          ":" +
          twoDigits(minute) +
          ":" +
          twoDigits(second);
  
  pool.getConnection(function(err, con) {
  if(err) return console.error(err);
    con.query("SELECT * FROM leveling WHERE user = " + message.author.id + " AND guild = " + message.guild.id, function(err, results, fields) {
      if(results.length < 1) {
        con.query("INSERT INTO leveling(user, guild, exp, last) VALUES ('" + message.author.id + "', '" + message.guild.id + "', '" + exp + "', '" + sqlDate + "')", function(err, result) {
          if(err) return console.error(err);
          console.log(message.author.username + " gained " + exp + " XP in server " + message.guild.name);
        })
      } else {
        if(new Date() - results[0].last < 60000) return;
        var newExp = parseInt(results[0].exp) + exp;
        con.query("UPDATE leveling SET exp = '" + newExp + "', last = '" + sqlDate + "' WHERE user = '" + message.author.id + "' AND guild = '" + message.guild.id + "'", function(err, result) {
          if(err) return console.error(err);
          console.log(message.author.username + " gained " + exp + " XP in server " + message.guild.name);
        })
      }
    })
    con.release();
  });
  
  if(message.content.startsWith("+-re")) {
    if(message.author.id !== "416227242264363008") return;
    message.channel.send("Restarted.");
    process.exit(1);
  }
})