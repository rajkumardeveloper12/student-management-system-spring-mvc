<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
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
		
        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background: #4a90e2;
            color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        /* Logo Section */
        .logo {
            display: flex;
            align-items: center;
        }

        .logo img {
            height: 40px;
            margin-right: 10px;
        }

        .logo span {
            font-size: 20px;
            font-weight: bold;
        }

        /* Navigation Links */
        .nav-links a {
            margin: 0 15px;
            text-decoration: none;
            color: white;
            font-size: 18px;
            font-weight: 500;
            transition: color 0.3s ease-in-out;
        }

        .nav-links a:hover {
            color: #fdd835;
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

        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border-color 0.3s ease;
        }

        .form-group input:focus {
            border-color: #4a90e2;
            outline: none;
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

		/* Table Styling */
        table {
            width: 80%;
            margin:auto;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #4a90e2;
            color: white;
            font-size: 16px;
            font-weight: bold;
        }

        table td {
            font-size: 14px;
            color: #555;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }

        table a button {
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 6px 12px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        table a button:hover {
            background-color: #45a049;
        }
        
        /* Footer */
        footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #555;
        }
        .btn-edu a button{
       	 	background-color: #4CAF50; /* Green */
            color: white;
            padding: 6px 12px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease;
            margin-left: 80%;
        }
        .edu-head h1{
        	margin-left: 40%;
        	color:#4a90e2;
        	font-size: 35px;
        	
        }
        .address-head h1{
        	margin-left: 45%;
        	color:#4a90e2;
        	font-size: 35px;
        }
    </style>
</head>
<body>
	<header class="navbar">
        <div class="logo">
            <img src="https://cdn.pixabay.com/photo/2023/09/12/20/42/ai-generated-8249565_1280.png" alt="Logo">
            <span>Student Insights</span>
        </div>
        <nav class="nav-links">
            <a href="home">Home</a>
            <a href="add">Add Student</a>
            <a href="#about">About</a>
            <a href="#contact">Contact</a>
            <a href="logout">Logout</a>
        </nav>
    </header>
	
    <div class="container">
        <h2>Registration Form</h2>
        <form action="updatestd" method="post">
        	<div class="form-group">
                <label for="id">Id:</label>
                <input type="text" id="id" name="id" value="${s.getId() }" placeholder="Enter your id" required>
            </div>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${s.getName() }" placeholder="Enter your name" required>
            </div>
            <div class="form-group">
                <label for="rollNo">Roll No:</label>
                <input type="text" id="rollNo" name="rollNo" value="${s.getRollNo() }" placeholder="Enter your roll number" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${s.getEmail() }" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone" value="${s.getPhone() }" placeholder="Enter your phone number" required>
            </div>
            <div class="form-group">
                <label for="yop">Year of Passing:</label>
                <input type="number" id="yop" name="yop" value="${s.getYop() }" placeholder="Enter your year of passing" required>
            </div>
            <div class="form-group">
                <button type="submit">Update</button>
            </div>
        </form>
    </div>
    <div class="edu-head"><h1>Education Details</h1></div>
    <div class="btn-edu">
    	<a href="education?id=${s.getId() }"><button>Add Education</button></a>
    </div>
    <div>
    	<table>
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>University Name</th>
                        <th>College Name</th>
                        <th>Degree</th>
                        <th>Department</th>
                        <th>Qualification</th>
                        <th>YOP</th>
                        <th>CGPA</th>
                        <th colspan="1">Action</th>
                    </tr>
                </thead>
                <c:forEach var="e" items="${ education }">
                    <tbody>
                        <tr>
                            <td>${ e.getId() }</td>
                            <td>${ e.getUname() }</td>
                            <td>${ e.getCname() }</td>
                            <td>${ e.getDegree() }</td>
                            <td>${ e.getDepartment() }</td>
                            <td>${ e.getQualification() }</td>
                            <td>${ e.getYop() }</td>
                            <td>${ e.getCgpa() }</td>
                            
                            <td><a href="deleteedu?id=${e.getId() }&sid=${s.getId() }"><button>Delete</button></a></td>
                        </tr>
                    </tbody>
                </c:forEach>
            </table>
    <br><br>
     <div class="address-head"><h1>Address</h1></div>
    <div class="btn-edu">
    	<a href="address?id=${s.getId() }"><button>Add Address</button></a>
    </div>
    <div>
    	<table>
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>House No</th>
                        <th>Street Name</th>
                        <th>City</th>
                        <th>State</th>
                        <th>Country</th>
                        <th>Pin Code</th>
                        <th>Address Status</th>
                        <th>Phone</th>
                        <th colspan="1">Action</th>
                    </tr>
                </thead>
                <c:forEach var="a" items="${ address }">
                    <tbody>
                        <tr>
                            <td>${ a.getId() }</td>
                            <td>${ a.getHouseNo() }</td>
                            <td>${ a.getStreet() }</td>
                            <td>${ a.getCity() }</td>
                            <td>${ a.getState() }</td>
                            <td>${ a.getCountry() }</td>
                            <td>${ a.getPincode() }</td>
                            <td>${ a.getAddressStatus() }</td>
                            <td>${ a.getPhone() }</td>
                            
                            <td><a href="deleteaddress?id=${a.getId() }&sid=${ s.getId() }"><button>Delete</button></a></td>
                        </tr>
                    </tbody>
                </c:forEach>
            </table>
    
    </div>
    <footer>
        &copy; 2024 My Website. All rights reserved.
    </footer>
</body>
</html>