<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    }

    /* Form Container */
    .container {
        max-width: 400px;
        margin: 50px auto;
        background: white;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
    }

    .container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #4a90e2;
    }

    /* Form Fields */
    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #333;
    }

    .form-group input, 
    .form-group select {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: border-color 0.3s ease;
    }

    .form-group input:focus, 
    .form-group select:focus {
        border-color: #4a90e2;
        outline: none;
    }

    /* Dropdown Styling */
    .form-group select {
        appearance: none;
        background: #fff;
        cursor: pointer;
    }

    /* Submit Button */
    .form-group button {
        width: 100%;
        padding: 10px;
        font-size: 18px;
        color: white;
        background: #4a90e2;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    .form-group button:hover {
        background: #357ab8;
    }

    /* Footer */
    footer {
        text-align: center;
        margin-top: 20px;
        font-size: 14px;
        color: #555;
    }
</style>
	
</head>
<body>
	<div class="container">
    <h2>Address Form</h2>
    <form action="addaddress?id=${id }" method="post">
        <div class="form-group">
            <label for="houseNo">House No:</label>
            <input type="text" id="houseNo" name="houseNo" placeholder="Enter your house number" required>
        </div>
        <div class="form-group">
            <label for="street">Street:</label>
            <input type="text" id="street" name="street" placeholder="Enter your street" required>
        </div>
        <div class="form-group">
            <label for="city">City:</label>
            <input type="text" id="city" name="city" placeholder="Enter your city" required>
        </div>
        <div class="form-group">
            <label for="state">State:</label>
            <input type="text" id="state" name="state" placeholder="Enter your state" required>
        </div>
        <div class="form-group">
            <label for="country">Country:</label>
            <input type="text" id="country" name="country" placeholder="Enter your country" required>
        </div>
        <div class="form-group">
            <label for="pincode">Pincode:</label>
            <input type="number" id="pincode" name="pincode" placeholder="Enter your pincode" required>
        </div>
        <div class="form-group">
            <label for="addressStatus">Address Status:</label>
            <select id="addressStatus" name="addressStatus" required>
                <option value="" disabled selected>Select address type</option>
                <option value="current">Current Address</option>
                <option value="permanent">Permanent Address</option>
            </select>
        </div>
        <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
        </div>
        <div class="form-group">
            <button type="submit">Submit Address</button>
        </div>
    </form>
</div>
<footer>
    &copy; 2024 My Website. All rights reserved.
</footer>
	
</body>
</html>