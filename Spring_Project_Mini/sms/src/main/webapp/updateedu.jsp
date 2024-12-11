<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Education Registration</title>
<style>
    /* General Reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Arial', sans-serif;
    }

    /* Body Styling */
    body {
        background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
        color: #333;
        line-height: 1.6;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    /* Form Container */
    .container {
        background-color: white;
        max-width: 500px;
        width: 100%;
        margin: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        padding: 30px;
    }

    .container h2 {
        text-align: center;
        margin-bottom: 20px;
        font-size: 24px;
        font-weight: bold;
        color: #4a90e2;
        text-transform: uppercase;
    }

    /* Form Fields */
    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;
        font-weight: bold;
        margin-bottom: 8px;
        color: #444;
    }

    .form-group input,
    .form-group select {
        width: 100%;
        padding: 12px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: border-color 0.3s ease;
    }

    .form-group input:focus,
    .form-group select:focus {
        border-color: #4a90e2;
        outline: none;
        box-shadow: 0 0 5px rgba(74, 144, 226, 0.5);
    }

    /* Submit Button */
    .form-group button {
        width: 100%;
        padding: 12px;
        font-size: 16px;
        font-weight: bold;
        color: white;
        background: #4a90e2;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s ease, transform 0.2s ease;
    }

    .form-group button:hover {
        background: #357ab8;
        transform: scale(1.02);
    }

    /* Footer */
    footer {
        text-align: center;
        font-size: 14px;
        color: #555;
        margin-top: 20px;
    }

    footer a {
        color: #4a90e2;
        text-decoration: none;
        font-weight: bold;
    }

    footer a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Education Registration</h2>
    <form action="updateedu" method="post">
    	
    	<div class="form-group">
            <label for="id">Id</label>
            <input type="text" id="id" name="id" value="${e.getId() }" placeholder="Enter Id" required>
        </div>
        <div class="form-group">
            <label for="uname">University Name</label>
            <input type="text" id="uname" name="uname" value="${e.getUname() }" placeholder="Enter University Name" required>
        </div>
        <div class="form-group">
            <label for="cname">College Name</label>
            <input type="text" id="cname" name="cname" value="${e.getCname() }" placeholder="Enter College Name" required>
        </div>
        <div class="form-group">
		    <label for="degree">Degree</label>
		    <select id="degree" name="degree" required>
		        <option value="" ${e.getDegree() == null || e.getDegree() == "" ? "selected" : ""}>Select Degree</option>
		        <option value="B.Tech" ${e.getDegree() == "B.Tech" ? "selected" : ""}>B.Tech</option>
		        <option value="B.Sc" ${e.getDegree() == "B.Sc" ? "selected" : ""}>B.Sc</option>
		        <option value="B.Com" ${e.getDegree() == "B.Com" ? "selected" : ""}>B.Com</option>
		        <option value="M.Tech" ${e.getDegree() == "M.Tech" ? "selected" : ""}>M.Tech</option>
		        <option value="M.Sc" ${e.getDegree() == "M.Sc" ? "selected" : ""}>M.Sc</option>
		        <option value="MBA" ${e.getDegree() == "MBA" ? "selected" : ""}>MBA</option>
		    </select>
		</div>

        <div class="form-group">
		    <label for="department">Department</label>
		    <select id="department" name="department" required>
		        <option value="" ${e.getDepartment() == null || e.getDepartment() == "" ? "selected" : ""}>Select Department</option>
		        <option value="CSE" ${e.getDepartment() == "CSE" ? "selected" : ""}>Computer Science</option>
		        <option value="ECE" ${e.getDepartment() == "ECE" ? "selected" : ""}>Electronics and Communication</option>
		        <option value="EEE" ${e.getDepartment() == "EEE" ? "selected" : ""}>Electrical Engineering</option>
		        <option value="Mechanical" ${e.getDepartment() == "Mechanical" ? "selected" : ""}>Mechanical Engineering</option>
		        <option value="Civil" ${e.getDepartment() == "Civil" ? "selected" : ""}>Civil Engineering</option>
		        <option value="Others" ${e.getDepartment() == "Others" ? "selected" : ""}>Others</option>
		    </select>
		</div>
        <div class="form-group">
		    <label for="qualification">Highest Qualification</label>
		    <select id="qualification" name="qualification" required>
		        <option value="" ${e.getQualification() == null || e.getQualification() == "" ? "selected" : ""}>Select Yes or No</option>
		        <option value="Yes" ${e.getQualification() == "Yes" ? "selected" : ""}>Yes</option>
		        <option value="No" ${e.getQualification() == "No" ? "selected" : ""}>No</option>
		    </select>
		</div>
        <div class="form-group">
            <label for="yop">Year of Passing</label>
            <input type="number" id="yop" name="yop" value="${e.getYop() }" placeholder="Enter Year of Passing" min="1900" max="2099" required>
        </div>
        <div class="form-group">
            <label for="cgpa">CGPA</label>
            <input type="text" id="cgpa" name="cgpa" value="${e.getCgpa() }" placeholder="Enter CGPA" pattern="^\d+(\.\d{1,2})?$" title="Enter a valid CGPA (e.g., 9.5)" required>
        </div>
        <div class="form-group">
            <button type="submit">Update</button>
        </div>
    </form>
</div>
</body>
</html>
