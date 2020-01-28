<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"href="./assets/style.css">
<title>Profile</title>
</head>
<body>

    <div class="form-style-10">
    <h1>Export to Pdf Demo <a href="${pageContext.request.contextPath}/report">Click Here</a></h1>

        <h1>Create your Profile!<span>Fill your details and download your Profile!</span></h1>
        <form>
            <div class="section"><span>1</span>First Name & Address</div>
            <div class="inner-wrap">
                <label>Your Full Name <input type="text" name="field1" /></label>
                <label>Address <textarea name="field2"></textarea></label>
            </div>
        
            <div class="section"><span>2</span>Email & Phone</div>
            <div class="inner-wrap">
                <label>Email Address <input type="email" name="field3" /></label>
                <label>Phone Number <input type="text" name="field4" /></label>
            </div>
        
            <div class="section"><span>3</span>Educational Qualification</div>
                <div class="inner-wrap">
                <label>Post Graduate <input type="text" name="field5" placeholder="Degree-Branch"/></label>
                <label>Under Graduate <input type="text" name="field6" placeholder="Degree-Branch"/></label>
                <label>HSC <input type="text" name="field7" placeholder="Board-Name of the school"/></label>
                <label>SSLC <input type="text" name="field8" placeholder="Board-Name of the school"/></label>
            </div>
            <div class="section"><span>4</span>BIO</div>
            <div class="inner-wrap">
                <label>Husband/Father's Name <input type="text" name="field9" /></label>
                <label>Country <input type="text" name="field10" /></label>
                <label>Nationality <input type="text" name="field11" /></label>
                <label>Marital Status <input type="text" name="field12" /></label>
                <label>Gender</label>
                <input type="radio" name="field13" value="Male"/>Male
                <input type="radio" name="field14" value="Female"/>Female
                <input type="radio" name="field15" value="Other"/>Other
            </div>
            <div class="button-section">
             <input type="submit" name="Sign Up" />
             <span class="privacy-policy">
             <input type="checkbox" name="field7">You agree to our Terms and Policy. 
             </span>
            </div>
        </form>
        </div>   
</body>
</html>