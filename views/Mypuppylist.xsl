<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

	<html> 
		<head>
			<title> Puppy's Adoption </title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
       <link href="Mypuppylist.css" rel="stylesheet" type="text/css" />
       
                <!-- Include the JavaScript code for processing the XML data -->
               <!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>-->
                <script src="views/Mypuppylist.js"></script>
               <script>
			        window.addEventListener("load", function() {
			            
			            document.querySelector("#button").addEventListener("click", function() {
			                document.forms[0].txtAdoptPuppy.value = calculateBill('puppylist');
			            });
			            document.querySelector("#button").addEventListener("click", function() {
			                highlightAvailable('puppylist', this.checked);
			            });
                    });
                    
                    
			    </script>

</head>
	<body>
    <h1> My puppy's Adoption</h1>
    <h2>
         <img src="https://cdn-04.independent.ie/regionals/newrossstandard/lifestyle/article38571541.ece/70abc/AUTOCROP/w620/2019-10-08_wex_53943643_I1.JPG" width="100" height="100"></img>
    </h2>
    <h3> Select your puppy from the list below. To check if it still available, click the Adopte this puppy button.</h3>
    <table id="puppylist" border="1" class="indent">
	<thead>
	<tr>
      <th>Name</th>
      <th> Dog </th>
      <th>Description</th>
	  <th>Breed</th>
	  <th>Age</th>
	  <th>Sex</th>	
 
	  </tr>	
	</thead>
	 	
     <tbody>

	  <xsl:for-each select="puppyListing/puppy">
	  	<tr>
              
	  		<td align="right">
              <xsl:value-of select="name" />
             
             <button id="button1"> Adopt this puppy </button>
             </td>
             <td>
              <xsl:value-of select="dog" />
              <img src="https://cdn-04.independent.ie/regionals/newrossstandard/lifestyle/article38571541.ece/70abc/AUTOCROP/w620/2019-10-08_wex_53943643_I1.JPG" width="100" height="100"></img>
        </td>	
	  	<td>
	  		<xsl:value-of select="description" />
        </td>>
	  	<td align="right">
	  		<xsl:value-of select="breed" />
	  	</td>
	  	<td>
	  		<xsl:value-of select="age" />
	  	</td>

	  	<td>
	  	 <xsl:value-of select="sex" />
          </td>
          
	  </tr>
    </xsl:for-each>
    <!--> <script type="text/javascript" src="Mypuppylist.js"></script>>-->
        </tbody>
    </table>
    <form class="indent">
    </form>
    </body>
	</html>
    
</xsl:template>
</xsl:stylesheet>




