var http = require('http'),
    path = require('path'),
    express = require('express'),
    fs = require('fs'),
    xmlParse = require('xslt-processor').xmlParse,
    xsltProcess = require('xslt-processor').xsltProcess;
var router = express();
var server = http.createServer(router);

router.use(express.static(path.resolve(__dirname, 'views')));

router.get('/', function(req, res) {
   

  
     //to add new dogs
  //  app.get("/adddogs", function(req, res){
   // var dogs = ["lala"];
    //res.render("dogs", {dogs: dogs});
   
  

    res.writeHead(200, {'Content-Type': 'text/html'});

    var xml = fs.readFileSync('Mypuppylist.xml', 'utf8');
    var xsl = fs.readFileSync('Mypuppylist.xsl', 'utf8');


    console.log(xml);
    var doc = xmlParse(xml);
    var stylesheet = xmlParse(xsl);

    var result = xsltProcess(doc, stylesheet);

    res.end(result.toString());
  });

server.listen(process.env.PORT || 3000, process.env.IP, function(){
var addr = server.address();
console.log("Server is listening at", addr.address + ":" + addr.port)
});