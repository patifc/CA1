<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

	<html> 
		<head>
			<title> Puppy's Adoption </title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
                <link href="Mypuppylist.css" rel="stylesheet" type="text/css" />

                
               
                <!-- Include the JavaScript code for processing the XML data -->
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
    <h3> Select your puppy from the list below. To check if it still available, click the Adopte this puppy button.</h3>
    <table id="puppylist" border="2" class="indent">
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
             
             <button id="adopt this puppy"> Adopt this puppy </button>
             </td>
             <td>
              <xsl:value-of select="dog" />
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

    </tbody>
    </table>
    <form class="indent">
   	
    	
    		 	</form>
    </body>
	</html>
    
</xsl:template>
</xsl:stylesheet>




