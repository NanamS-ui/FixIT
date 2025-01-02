<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin dashboard</title>
    <head>
        <link rel="stylesheet" href="../assets/dashboard.css">
    </head>
</head>
<body>
    <div class="sidebar">
        <div class="logo">
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
                <img src="../images/isaia1.jpg" alt="">
            </div>
        </div>

        <!-- card container-->
        <div class="card--container">
            <h3 class=".main--title">Today's data</h3>
            <div class="card--wrapper">
                <div class="payment--card light-red ">
                    <div class="card--header">
                        <div class="amount">
                            <span class="title">
                                Payment amount
                            </span>
                            <span class="amount--value">$500.00</span>
                        </div>
                        <i class="fas fa-dollar-sign icon"></i>
                    </div>
                    <span class="card-detail">**** **** **** 3484</span>
                </div>

                <div class="payment--card light-purple ">
                    <div class="card--header">
                        <div class="amount">
                            <span class="title">
                                Payment order
                            </span>
                            <span class="amount--value">$200.00</span>
                        </div>
                        <i class="fas fa-list icon dark-purple"></i>
                    </div>
                    <span class="card-detail">**** **** **** 5412</span>
                </div>

                <div class="payment--card light-purple ">
                    <div class="card--header">
                        <div class="amount">
                            <span class="title">
                                Payment customer
                            </span>
                            <span class="amount--value">$350.00</span>
                        </div>
                        <i class="fas fa-users icon dark-blue"></i>
                    </div>
                    <span class="card-detail">**** **** **** 8896</span>
                </div>

                <div class="payment--card light-purple ">
                    <div class="card--header">
                        <div class="amount">
                            <span class="title">
                                Payment proceed
                            </span>
                            <span class="amount--value">$150.00</span>
                        </div>
                        <i class="fas fa-solid fa-check icon dark-green"></i>
                    </div>
                    <span class="card-detail">**** **** **** 7745</span>
                </div>
            </div>
        </div>

        <div class="tabular--wrapper">
            <h3 class="main--title">Finance data</h3>
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Transaction Type</th>
                            <th>Description</th>
                            <th>Amount</th>
                            <th>Category</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>2024-05-10</td>
                            <td>Expenses</td>
                            <td>Office Supplies</td>
                            <td>$500</td>
                            <td>Office Expenses</td>
                            <td>Pending</td>
                            <td><button>Edit</button></td>
                        </tr>
                        <tr>
                            <td>2024-05-15</td>
                            <td>Expenses</td>
                            <td>Office Supplies</td>
                            <td>$250</td>
                            <td>Office Expenses</td>
                            <td>Pending</td>
                            <td><button>Edit</button></td>
                        </tr>
                        <tr>
                            <td>2024-05-19</td>
                            <td>Expenses</td>
                            <td>Office Supplies</td>
                            <td>$250</td>
                            <td>Office Expenses</td>
                            <td>Pending</td>
                            <td><button>Edit</button></td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <td colspan="7">Total : $1.000</td>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>

    
</body>
</html>