<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <form action="addedu?id=${id }" method="post">
        <div class="form-group">
            <label for="uname">University Name</label>
            <input type="text" id="uname" name="uname" placeholder="Enter University Name" required>
        </div>
        <div class="form-group">
            <label for="cname">College Name</label>
            <input type="text" id="cname" name="cname" placeholder="Enter College Name" required>
        </div>
        <div class="form-group">
            <label for="degree">Degree</label>
            <input type="text" id="degree" name="degree" placeholder="Enter Degree" required>
        </div>
        <div class="form-group">
            <label for="department">Department</label>
            <input type="text" id="department" name="department" placeholder="Enter department" required>
        </div>
        <div class="form-group">
            <label for="qualification">Highest Qualification</label>
            <select id="qualification" name="qualification" required>
                <option value="">Select Yes or No</option>
                <option value="Yes">Yes</option>
                <option value="No">No</option>
            </select>
        </div>
        <div class="form-group">
            <label for="yop">Year of Passing</label>
            <input type="number" id="yop" name="yop" placeholder="Enter Year of Passing" min="1900" max="2099" required>
        </div>
        <div class="form-group">
            <label for="cgpa">CGPA</label>
            <input type="text" id="cgpa" name="cgpa" placeholder="Enter CGPA" pattern="^\d+(\.\d{1,2})?$" title="Enter a valid CGPA (e.g., 9.5)" required>
        </div>
        <div class="form-group">
            <button type="submit">Submit</button>
        </div>
    </form>
</div>
</body>
</html>
