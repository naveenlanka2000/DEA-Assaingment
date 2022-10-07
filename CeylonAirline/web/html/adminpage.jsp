<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <!--adminstyles-->
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <!--Navigation-->
    <div class="container">
        <div class="navigation">
            <div class="logo">
                <img src="../media/Phoenixlogo.png" style="width: 200px; height:auto ; top: 0%;" alt="">
            </div>
            <ul>
                <li></li>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                        <span class="title">DashBoard</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                        <span class="title">Customers</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="chatbubble-outline"></ion-icon></span>
                        <span class="title">Messages</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="help-outline"></ion-icon></span>
                        <span class="title">Help</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
                        <span class="title">Settings</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
                        <span class="title">Password</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                        <span class="title">Sign Out</span>
                    </a>
                </li>
               
            </ul>
        </div>
        <!--===========Main=============-->
        <div class="main">
            <div class="topbar">
                <div class="search">
                    
                    <label>
                    <input type="text" placeholder="search Here">
                    <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div>
                <div class="user">
                    <img src="../media/customer1.jpg" alt="">

                </div>

                

            </div>

            <!--=============user management============-->
            <div class="details">
                <div class="recent">
                    <div class="cardheader">
                        <h2>User Management</h2>
                        <a href="#" class="btn">View All</a>
                    </div>

                    <table>
                        <thead>
                            <tr>
                                <td>Name</td>
                                <td>Price</td>
                                <td>Payment</td>
                                <td>Status</td>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>S312</td>
                                <td>$400</td>
                                <td>Paid</td>
                                <td><span class="status clear">Clear</span></td>
                            </tr>
                        </tbody>

                        <tbody>
                            <tr>
                                <td>S317</td>
                                <td>$400</td>
                                <td>Paid</td>
                                <td><span class="status clear">Clear</span></td>
                            </tr>
                        </tbody>

                        <tbody>
                            <tr>
                                <td>S489</td>
                                <td>$400</td>
                                <td>Due</td>
                                <td><span class="status pending">Pending</span></td>
                            </tr>
                        </tbody>

                        <tbody>
                            <tr>
                                <td>S372</td>
                                <td>$400</td>
                                <td>Due</td>
                                <td><span class="status inprogress">In Progress</span></td>
                            </tr>
                        </tbody>

                        <tbody>
                            <tr>
                                <td>S312</td>
                                <td>$400</td>
                                <td>Paid</td>
                                <td><span class="status clear">Clear</span></td>
                            </tr>
                        </tbody>

                        <tbody>
                            <tr>
                                <td>S317</td>
                                <td>$400</td>
                                <td>Due</td>
                                <td><span class="status clear">Clear</span></td>
                            </tr>
                        </tbody>

                        <tbody>
                            <tr>
                                <td>S489</td>
                                <td>$400</td>
                                <td>Due</td>
                                <td><span class="status pending">Pending</span></td>
                            </tr>
                        </tbody>

                        <tbody>
                            <tr>
                                <td>S372</td>
                                <td>$400</td>
                                <td>Due</td>
                                <td><span class="status inprogress">In Progress</span></td>
                            </tr>
                        </tbody>

                    </table>
                </div>
            </div>

        </div>


    </div>
    <!--========scripts=======-->
    <script src="adminmain.js"></script>

    <!--ionicons-->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>