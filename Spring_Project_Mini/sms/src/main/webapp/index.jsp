<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navbar Example</title>
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

        /* Section Styling */
        main {
            padding: 20px;
            text-align: center;
        }

        main h1 {
            font-size: 36px;
            color: #4a90e2;
            margin-bottom: 10px;
        }

        main p {
            font-size: 18px;
            color: #555;
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
            text-align: center;
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

    <main>
        <section id="home">
            <h1>Welcome Student Insights</h1>
            <table>
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Roll No</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>YOP</th>
                       
                        <th colspan="2">Action</th>
                    </tr>
                </thead>
                <c:forEach var="s" items="${ std }">
                    <tbody>
                        <tr>
                            <td>${ s.getId() }</td>
                            <td>${ s.getName() }</td>
                            <td>${ s.getRollNo() }</td>
                            <td>${ s.getEmail() }</td>
                            <td>${ s.getPhone() }</td>
                            <td>${ s.getYop() }</td>
                            
                            <td><a href="updatepage?id=${s.getId() }"><button>Update</button></a></td>
                            <td><a href="delete?id=${s.getId() }"><button>Delete</button></a></td>
                        </tr>
                    </tbody>
                </c:forEach>
            </table>
        </section>
    </main>
</body>
</html>
