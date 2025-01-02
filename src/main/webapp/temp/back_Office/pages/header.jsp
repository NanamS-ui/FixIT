<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FixPC Admin</title>
    <head>
        <link rel="stylesheet" href="<%= request.getContextPath()%>/temp/back_Office/assets/dashboard.css">
        <link rel="icon" type="image/png" href="<%= request.getContextPath()%>/temp/back_Office/images/logoAdmin.webp">
    </head>
</head>
<body>
<div class="sidebar">
    <div class="logo">
        <img src="<%= request.getContextPath()%>/temp/back_Office/images/logoAdmin.png" alt="Logo" style="max-width: 100%; height: auto;">
        <ul class="menu">
            <li class="active">
                <a href="#">
                    <i class="fas fa-tachometer-alt"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fas fa-user"></i>
                    <span>Profile</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fas fa-chart-bar"></i>
                    <span>Statistics</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fas fa-cog"></i>
                    <span>Settings</span>
                </a>
            </li>
            <li class="logout">
                <a href="#">
                    <i class="fas fa-sign-out-alt"></i>
                    <span>Log out</span>
                </a>
            </li>
        </ul>
    </div>
</div>

<!-- main content body-->
<div class="main--content">
    <div class="header--wrapper">
        <div class="header--title">
            <span>Primary</span>
            <h2>Dashboard</h2>
        </div>
        <div class="user--info">
            <div class="search--box">
                <i class="fa-solid fa-search"></i>
                <input type="text" placeholder="Search">
            </div>
            <img src="<%= request.getContextPath()%>/temp/back_Office/images/logoAdmin.webp" alt="">
        </div>
    </div>