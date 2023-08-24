<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Support System</title>
    <link href="css/style1.css" rel="stylesheet" />
</head>
<body>
    <header>
        <div class="logo">
        <nav>
         
          
            <img src="assets/img/logo.jpg" align="right" alt= "Farmer Support System Logo">
            
           
            </nav>
        </div>
        
        <nav class="navigation">
       
            <ul >          
                  <li><a href="#services">SERVICES</a></li>
                <li><a href="#news">NEWS</a></li>
             
                <li><a href="#forum">DISCUSSION</a></li>
                <li><a href="#resources">RESOURCES</a></li>
                   <li><a href="login.jsp">LOGOUT</a></li>
                  <marquee> <h4>Hello!  <%=session.getAttribute( "name") %> </h4></marquee>
               
             
            </ul>
        </nav>
    </header>
    <main>
    <div class = "content ">
        <h1><i>WELCOME TO FARMICAZA</i></h1>
        <h3><i>"The life of a farmer is very tough as he works very hard day and night in all seasons for us.<br>

SolutionWeb sincerely thanks to farmers all around the globe who are supporting everyone to live a good and healthy life</i></h3>
        </div>
       
            <div class="slideshow">
                <img src="images/farm12.jpg" height="80%" width ="170%"alt="Slide 1" >
               
            </div>
      
        <section id="services">
            <h2>Our Services</h2>
             <div class="service">
                <h3>Apply For Government Loan</h3>
                 <form action= "LoanServlet" method= "post"id="f" >
                 
        <label for="name">Name:</label>
      <input type="text" id="name" name="name">

      <label for="address">Address:</label>
      <input type="text" id="address" name="address">

      <label for="phone">Phone Number:</label>
      <input type="tel" id="phone" name="phone">

      <label for="email">Email:</label>
      <input type="email" id="email" name="email">

      <label for="loan_amount">Loan Amount:</label>
      <input type="number" id="loan_amount" name="loan_amount">

      <label for="loan_purpose">Loan Purpose:</label>
      <textarea id="loan_purpose" name="loan_purpose"></textarea>

     <label for="gender">gender</label>
<select id="gender" name="gender">
                <option value="male">male</option>
                <option value="female">female</option>
                <option value="other">other</option>
               
                </select> <br>
                
                <level for="term">Accepet term and condition</level>
                <input type="checkbox" value="checked" name="condition"/>
                
                
                 <br><br>
                <input type="submit" value="Submit">
                <input type="Reset" value="Reset">
                              
               </form>
              
            </div>
            <div class="service">
             
           
                <h3>Weather Information</h3>
               <img src="images/farm7.jpg"  width ="400" alt="News 1">
                <h5><i>When we remark on the crucial role of weather in agriculture, we are not exaggerating; in fact, we may be understating its significance. If you want to maximize your agricultural output and increase crop yields, you must work in conjunction with the meteo conditions.

Weather has a significant impact on the prevalence of pests and diseases, the availability of water, and the amount of fertilizer needed to grow crops. Farmers rely on climate patterns and weather forecasting in agriculture to determine which crops to cultivate and when to sow them. The majority of farming techniques depend on favorable meteorological conditions. As an illustration, precision irrigation relies on the amount of rain that falls on a field, soil solarization requires high temperatures, etc.</i></h5>
            </div>
         
            <div class="service">
                <h3>Market Information</h3>
                <p>Get real-time market data for different crops, including current prices, supply and demand trends, and more.</p>
            </div>
            <div class="service">
                <h3>Farming Tips and Advice</h3>
                <p>Get expert advice and tips on various farming techniques, sustainability practices, and policy developments.</p>
            </div>
        </section>
        <section id="news">
            <h2>Latest News</h2>
            <div class="article">
                <img src="images/farm6.jpg"  width ="500" alt="News 1">
                <h3>Scientists develop new drought-resistant crop</h3>
                <p>Scientists have developed a new crop that can withstand extreme drought conditions. Learn more about this breakthrough.</p>
            </div>
            <div class="article">
                <img src="images/farm4.jpg"  width ="500" alt="News 2">
                <h3>New government support program for small farmers</h3>
                <p>The government has announced a new support program for small farmers, including subsidies for equipment and training. Find out more.</p>
            </div>
            <div class="article">
                <img src="images/farm5.jpg"  width ="500" alt="News 3">
                <h3>New study reveals benefits of sustainable farming practices</h3>
                <p>A new study has shown that sustainable farming practices can lead to increased yields and reduced costs. Read more about this research.</p>
            </div>
        </section>
     
                <section id="forum">
                <h2>Discussion Forum</h2>
                <p>Connect with other farmers and experts to ask questions, share advice, and discuss the latest developments in the industry.</p>
                <a href="#">Join the Discussion</a>
                </section>
                <section id="resources">
                
                <div class="resource">
                <h2>Resources</h2>
                <img src="images/farm3.jpg"  width ="500"alt="Resource 1">
                <h3>Agricultural Extension Services</h3>
                <p>Find agricultural extension services in your area that offer resources and support for farmers.</p>
                <a href="#">Learn More</a>
                </div>
                <div class="resource">
                <img src="images/ag_ex.jpg" width ="500" alt="Resource 2">
                <h3>Farmer's Almanac</h3>
                <p>Access the latest weather predictions, planting and harvesting dates, and other useful information for farmers.</p>
                <a href="#">Learn More</a>
                </div>
                <div class="resource">
                <img src="images/ala.png"  width ="500 alt="Resource 3">
                <h3>Indian Farm Service Agency</h3>
                <p>Learn about the different programs and services offered by the Indian Farm Service Agency, including loans, subsidies, and disaster relief.</p>
                <a href="#">Learn More</a>
                </div>
                </section>
                </main>
                <footer>
                <div class="footer-logo">
                <img src="images/logo.jpg" align= "left" height="50" width= "80"><br><br><br>
                </div>
               
               
                <div class="footer-contact">
                <h3>Contact Us</h3>
                <ul>
                <li>Email: support@farmersupportsystem.com</li>
                <li>Phone: 555-555-5555</li>
                <li>Address: LPU, Jalandar, Punjab ,IN</li>
                </ul>  
                </div>
                </footer>
                
                </body>
                </html>
