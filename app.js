var http = require('http'),
    path = require('path'),
    express = require('express'),
    fs = require('fs'),
    xml2js= require('xml2js'),
    xmlParse = require('xslt-processor').xmlParse,
    xsltProcess = require('xslt-processor').xsltProcess;

var router = express();
var server = http.createServer(router);

router.use(express.static(path.resolve(__dirname, 'views')));

 // POST request to add to JSON & XML files
router.post('/post/json', function(req, res) {

  // Function to read in a JSON file, add to it & convert to XML
  function appendJSON(obj) {
    console.log(obj);
    // Function to read in XML file, convert it to JSON, add a new object and write back to XML file
    xmlFileToJs('Mypuppylist.xml', function(err, result) {
      if (err) throw (err);
      result.puppy.section[obj.sec_n].entree.push({'name': obj.name, 'dog': obj.dog,  'description': obj.description,  'breed': obj.breed,  'age': obj.age,  'sex': obj.sex});
      console.log(result);
      jsToXmlFile('Mypuppylist.xml', result, function(err) {
        if (err) console.log(err);
      })
    })
  }

  // Call appendJSON function and pass in body of the current POST request
  appendJSON(req.body);

  // Re-direct the browser back to the page, where the POST request came from
  res.redirect('back');
 

});

router.use(express.urlencoded({extended: true}));
router.use(express.json());

// Function to read in XML file and convert it to JSON
function xmlFileToJs(filename, cb) {
  var filepath = path.normalize(path.join(__dirname, filename));
  fs.readFile(filepath, 'utf8', function(err, xmlStr) {
    if (err) throw (err);
    xml2js.parseString(xmlStr, {}, cb);
  });
}
//Function to convert JSON to XML and save it
function jsToXmlFile(filename, obj, cb) {
  var filepath = path.normalize(path.join(__dirname, filename));
  var builder = new xml2js.Builder();
  var xml = builder.buildObject(obj);
  fs.writeFile(filepath, xml, cb);
}
router.get('/', function(req, res) {
    // const index = fs.readFileSync('index.html', 'utf-8');
     res.end(index);
     

})

  


router.get('/get/html', function(req, res) {




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