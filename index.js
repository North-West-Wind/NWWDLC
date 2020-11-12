require("dotenv").config();
const { version } = require("./package.json");
const http = require("http");
const express = require("express");
const app = express();
const moment = require("moment");
const nodemailer = require('nodemailer');
app.listen(3000, () => console.log('server started'));
app.get("/", (req, res) => {
  res.sendStatus(200);
  console.log(`Pinged at ${moment().format("HH:mm:ss")}`);
});
app.get("/api/status", (request, response) => {
  response.json({ version: version, guildCount: client.guilds.cache.size, readyAt: client.readyTimestamp, uptime: client.uptime });
});
app.get("/api/smm2db/:query/:key", (request, response) => {
	if(request.params.key != process.env.KEY) return response.json([]);
	var query = request.params.query;
	pool.getConnection((err, con) => {
		if(err) {
			console.error(err);
			return response.json({ error: true, err: err.message });
		}
		con.query(query, (err, results, fields) => {
			if(err) {
				console.error(err);
				return response.json({ error: true, err: err.message });
			}
			response.json({ error: false, results: results, fields: fields });
		});
		con.release();
	});
});
app.get("/api/escape/:string", (request, response) => {
	var string = request.params.string;
	string.replace(/[\0\x08\x09\x1a\n\r"'\\\%]/g, function (char) {
    switch (char) {
      case "\0":
        return "\\0";
      case "\x08":
        return "\\b";
      case "\x09":
        return "\\t";
      case "\x1a":
        return "\\z";
      case "\n":
        return "\\n";
      case "\r":
        return "\\r";
      case "\"":
      case "'":
      case "\\":
      case "%":
        return "\\"+char;
    }
  });
	response.send(string);
});
app.get("/api/smm2db/sendmail/:address/:username/:fc/:id/:key", (request, response) => {
	if(request.params.key != process.env.KEY) return response.sendStatus(403);
	var address = request.params.address;
	var title = "SMM2DB Email Address Confirmation";
	var username = request.params.username;
	var fc = request.params.fc;
	var id = request.params.id;
	var mail = `<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xmlns:o="urn:schemas-microsoft-com:office:office" style="width:100%;font-family:roboto, \'helvetica neue\', helvetica, arial, sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;padding:0;Margin:0"><head><meta charset="UTF-8"><meta content="width=device-width, initial-scale=1" name="viewport"><meta name="x-apple-disable-message-reformatting"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta content="telephone=no" name="format-detection"><title>demo_9b484fb4-6ee1-47c3-b552-d6ebef76498f</title> <!--[if (mso 16)]><style type="text/css">     a {text-decoration: none;}     </style><![endif]--> <!--[if gte mso 9]><style>sup { font-size: 100% !important; }</style><![endif]--> <!--[if gte mso 9]><xml> <o:OfficeDocumentSettings> <o:AllowPNG></o:AllowPNG><o:PixelsPerInch>96</o:PixelsPerInch> </o:OfficeDocumentSettings> </xml><![endif]--> <!--[if !mso]><!-- --><link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,700,700i" rel="stylesheet"> <!--<![endif]--><style type="text/css">.rollover:hover .rollover-first {	max-height:0px!important;	display:none!important;}.rollover:hover .rollover-second {	max-height:none!important;	display:block!important;}#outlook a {	padding:0;}.ExternalClass {	width:100%;}.ExternalClass,.ExternalClass p,.ExternalClass span,.ExternalClass font,.ExternalClass td,.ExternalClass div {	line-height:100%;}.es-button {	mso-style-priority:100!important;	text-decoration:none!important;}a[x-apple-data-detectors] {	color:inherit!important;	text-decoration:none!important;	font-size:inherit!important;	font-family:inherit!important;	font-weight:inherit!important;	line-height:inherit!important;}.es-desk-hidden {	display:none;	float:left;	overflow:hidden;	width:0;	max-height:0;	line-height:0;	mso-hide:all;}.es-button-border:hover {	border-style:solid solid solid solid!important;	background:#0b317e!important;	border-color:#42d159 #42d159 #42d159 #42d159!important;}.es-button-border:hover a.es-button {	background:#0b317e!important;	border-color:#0b317e!important;}@media only screen and (max-width:600px) {.st-br { padding-left:10px!important; padding-right:10px!important } p, ul li, ol li, a { font-size:16px!important; line-height:150%!important } h1 { font-size:30px!important; text-align:center; line-height:120%!important } h2 { font-size:26px!important; text-align:center; line-height:120%!important } h3 { font-size:20px!important; text-align:center; line-height:120%!important } h1 a { font-size:30px!important; text-align:center } h2 a { font-size:26px!important; text-align:center } h3 a { font-size:20px!important; text-align:center } .es-menu td a { font-size:14px!important } .es-header-body p, .es-header-body ul li, .es-header-body ol li, .es-header-body a { font-size:16px!important } .es-footer-body p, .es-footer-body ul li, .es-footer-body ol li, .es-footer-body a { font-size:14px!important } .es-infoblock p, .es-infoblock ul li, .es-infoblock ol li, .es-infoblock a { font-size:12px!important } *[class="gmail-fix"] { display:none!important } .es-m-txt-c, .es-m-txt-c h1, .es-m-txt-c h2, .es-m-txt-c h3 { text-align:center!important } .es-m-txt-r, .es-m-txt-r h1, .es-m-txt-r h2, .es-m-txt-r h3 { text-align:right!important } .es-m-txt-l, .es-m-txt-l h1, .es-m-txt-l h2, .es-m-txt-l h3 { text-align:left!important } .es-m-txt-r img, .es-m-txt-c img, .es-m-txt-l img { display:inline!important } .es-button-border { display:block!important } a.es-button { font-size:16px!important; display:block!important; border-left-width:0px!important; border-right-width:0px!important } .es-btn-fw { border-width:10px 0px!important; text-align:center!important } .es-adaptive table, .es-btn-fw, .es-btn-fw-brdr, .es-left, .es-right { width:100%!important } .es-content table, .es-header table, .es-footer table, .es-content, .es-footer, .es-header { width:100%!important; max-width:600px!important } .es-adapt-td { display:block!important; width:100%!important } .adapt-img { width:100%!important; height:auto!important } .es-m-p0 { padding:0!important } .es-m-p0r { padding-right:0!important } .es-m-p0l { padding-left:0!important } .es-m-p0t { padding-top:0!important } .es-m-p0b { padding-bottom:0!important } .es-m-p20b { padding-bottom:20px!important } .es-mobile-hidden, .es-hidden { display:none!important } tr.es-desk-hidden, td.es-desk-hidden, table.es-desk-hidden { width:auto!important; overflow:visible!important; float:none!important; max-height:inherit!important; line-height:inherit!important } tr.es-desk-hidden { display:table-row!important } table.es-desk-hidden { display:table!important } td.es-desk-menu-hidden { display:table-cell!important } table.es-table-not-adapt, .esd-block-html table { width:auto!important } table.es-social { display:inline-block!important } table.es-social td { display:inline-block!important } .es-m-p5 { padding:5px!important } .es-m-p5t { padding-top:5px!important } .es-m-p5b { padding-bottom:5px!important } .es-m-p5r { padding-right:5px!important } .es-m-p5l { padding-left:5px!important } .es-m-p10 { padding:10px!important } .es-m-p10t { padding-top:10px!important } .es-m-p10b { padding-bottom:10px!important } .es-m-p10r { padding-right:10px!important } .es-m-p10l { padding-left:10px!important } .es-m-p15 { padding:15px!important } .es-m-p15t { padding-top:15px!important } .es-m-p15b { padding-bottom:15px!important } .es-m-p15r { padding-right:15px!important } .es-m-p15l { padding-left:15px!important } .es-m-p20 { padding:20px!important } .es-m-p20t { padding-top:20px!important } .es-m-p20r { padding-right:20px!important } .es-m-p20l { padding-left:20px!important } .es-m-p25 { padding:25px!important } .es-m-p25t { padding-top:25px!important } .es-m-p25b { padding-bottom:25px!important } .es-m-p25r { padding-right:25px!important } .es-m-p25l { padding-left:25px!important } .es-m-p30 { padding:30px!important } .es-m-p30t { padding-top:30px!important } .es-m-p30b { padding-bottom:30px!important } .es-m-p30r { padding-right:30px!important } .es-m-p30l { padding-left:30px!important } .es-m-p35 { padding:35px!important } .es-m-p35t { padding-top:35px!important } .es-m-p35b { padding-bottom:35px!important } .es-m-p35r { padding-right:35px!important } .es-m-p35l { padding-left:35px!important } .es-m-p40 { padding:40px!important } .es-m-p40t { padding-top:40px!important } .es-m-p40b { padding-bottom:40px!important } .es-m-p40r { padding-right:40px!important } .es-m-p40l { padding-left:40px!important } }</style></head><body style="width:100%;font-family:roboto, \'helvetica neue\', helvetica, arial, sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;padding:0;Margin:0"><div class="es-wrapper-color" style="background-color:#F8F9FD"> <!--[if gte mso 9]><v:background xmlns:v="urn:schemas-microsoft-com:vml" fill="t"> <v:fill type="tile" color="#f8f9fd"></v:fill> </v:background><![endif]--><table class="es-wrapper" width="100%" cellspacing="0" cellpadding="0" style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;padding:0;Margin:0;width:100%;height:100%;background-repeat:repeat;background-position:center top"><tr style="border-collapse:collapse"><td valign="top" style="padding:0;Margin:0"><table cellpadding="0" cellspacing="0" class="es-content" align="center" style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%"><tr style="border-collapse:collapse"><td align="center" bgcolor="#ffc700" style="padding:0;Margin:0;background-color:#FFC700"><table bgcolor="#FFFFFF" class="es-content-body" align="center" cellpadding="0" cellspacing="0" style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:transparent;width:600px"><tr style="border-collapse:collapse"><td class="es-m-p40t es-m-p40b es-m-p20r es-m-p20l" align="left" style="padding:0;Margin:0;padding-top:40px;padding-bottom:40px"><table cellpadding="0" cellspacing="0" width="100%" style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px"><tr style="border-collapse:collapse"><td align="center" valign="top" style="padding:0;Margin:0;width:600px"><table cellpadding="0" cellspacing="0" width="100%" bgcolor="#f0f3fe" style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:separate;border-spacing:0px;background-color:#F0F3FE;border-radius:20px" role="presentation"><tr style="border-collapse:collapse"><td align="center" style="padding:0;Margin:0"><p style="Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:50px;font-family:roboto, \'helvetica neue\', helvetica, arial, sans-serif;line-height:75px;color:#131313">SUPER MARIO MAKER 2 DATABASE</p></td></tr></table></td></tr></table></td></tr><tr style="border-collapse:collapse"><td align="left" style="padding:0;Margin:0;padding-top:20px;padding-left:20px;padding-right:20px"><table cellpadding="0" cellspacing="0" width="100%" style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px"><tr style="border-collapse:collapse"><td align="center" valign="top" style="padding:0;Margin:0;width:560px"><table cellpadding="0" cellspacing="0" width="100%" role="presentation" style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px"><tr style="border-collapse:collapse"><td align="left" style="padding:5px;Margin:0"><p style="Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:16px;font-family:roboto, \'helvetica neue\', helvetica, arial, sans-serif;line-height:24px;color:#131313">Please confirm your email with such details:<br><br>Username: ${username}<br>Friend Code: ${fc}<br><br>If the details are correct, click the link below to confirm your email.<br><br><a href='https://smm2db.ml/confirm.php?id=${id}'>Confirm Email Address</a></p></td></tr></table></td></tr></table></td></tr><tr style="border-collapse:collapse"><td align="left" style="padding:0;Margin:0;padding-top:20px;padding-left:20px;padding-right:20px"><table cellpadding="0" cellspacing="0" width="100%" style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px"><tr style="border-collapse:collapse"><td align="center" valign="top" style="padding:0;Margin:0;width:560px"><table cellpadding="0" cellspacing="0" width="100%" role="presentation" style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px"><tr style="border-collapse:collapse"><td align="left" style="padding:10px;Margin:0"><p style="Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:32px;font-family:roboto, \'helvetica neue\', helvetica, arial, sans-serif;line-height:48px;color:#131313">After confirming the email address, your account will be under approval. Please wait until we send you another email.</p></td></tr></table></td></tr></table></td></tr></table></td></tr></table></td></tr></table></div></body></html>`;

	var transporter = nodemailer.createTransport({
    host: 'smtp.gmail.com',
    port: 587,
    secure: false,
    requireTLS: true,
    auth: {
    	user: 'wsyn148@gmail.com',
    	pass: process.env.GPASS
    }
	});

	var mailOptions = {
  	from: 'wsyn148@gmail.com',
  	to: address,
  	subject: title,
  	html: mail
	};

	transporter.sendMail(mailOptions, function(error, info){
		response.sendStatus(200);
  	if (error) {
    	console.error(error);
  	} else {
    	console.realLog('Email sent: ' + info.response);
  	}
	});
});
app.get("/api/krunker/servers/:key", async(request, response) => {
	if(request.params.key != process.env.KEY) return response.json({ err: true, message: "Access denied" });
	try {
		const puppeteer = require("puppeteer");
  	const browser = await puppeteer.launch({ headless: false, args: ['--no-sandbox', '--disable-setuid-sandbox'] });
  	const page = await browser.newPage();
  	await page.goto("https://matchmaker.krunker.io/game-list?hostname=krunker.io");
  	const element = await page.$("pre");
  	const servers = JSON.parse(await (await element.getProperty('textContent')).jsonValue());
		response.json(servers);
		await browser.close();
	} catch(err) {
		console.error(err);
		response.json({ err: true, message: err.message })
	}
});

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

console.realLog = console.log;
console.realError = console.error;
const client = new Discord.Client();

client.login(process.env.TOKEN);

client.once("ready", () => {
  delete console["log"];
  delete console["error"];
	console.log = async function(str) {
  	console.realLog(str);
  	try {
    	var logChannel = await client.channels.fetch("695941416886599690");
  	} catch(err) {
    	return console.realError(err)
  	}
    logChannel.send("`" + str + "`");
	}
  console.error = async function(str) {
    console.realError(str);
  try {
    var logChannel = await client.channels.fetch("695941416886599690");
  } catch(err) {
    return console.realError(err)
  }
    logChannel.send("`ERROR!`\n`" + str.message + "`");
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