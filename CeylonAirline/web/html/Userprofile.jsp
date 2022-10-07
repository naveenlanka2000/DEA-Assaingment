<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <!--Main css-->
    <link rel="stylesheet" href="../css/main.css">
    <!-- page css -->
    <link rel="stylesheet" href="../css/userprofile.css">
</head>
<body>
    <!--Navigation-->
    <div class="container">
        <div class="navigation">
            <div class="logo">
                <img src="../media/Phoenixlogo.png" style="width: 200px; height:auto ; padding-top:1vh;" alt="">
            </div>
            <ul>
                <li></li>
            <li>
                <a href="../html/Userflights.html">
                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                    <span class="title">Filght Informations</span>
                </a>
            </li>
            <li>
                <a href="../html/Reservations.html">
                    <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                    <span class="title">Reservation</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="icon"><ion-icon name="chatbubble-outline"></ion-icon></span>
                    <span class="title">Messages</span>
                </a>
            </li>
            <li>
                <a href="../html/Userprofile.html">
                    <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                    <span class="title">Profile</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
                    <span class="title">Settings</span>
                </a>
            </li>
            <!-- <li>
                <a href="#">
                    <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
                    <span class="title">Password</span>
                </a>
            </li> -->
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
            <h2 style="text-align: center; padding-top: 18vh; font-weight: 400;">W.K.J.Samith Sankalpa</h2>
            <div class="user-row">
                <div class="profile-pic">
                </div>
                <div class="personal-info">
                    <div class="left-column">
                        <table>
                            <tbody>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 80px;">First Name :</td>
                                    <td>Samith</td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 80px;">Last Name :</td>
                                    <td>Sankalpa</td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 80px;">Address :</td>
                                    <td>No.189/A, Uduwana, Homagama.</td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 80px;">Birthday :</td>
                                    <td>12.08.1980</td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 80px;">Gender :</td>
                                    <td>Male</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="right-column">
                        <table>
                            <tbody>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 100px;">Email :</td>
                                    <td>samithsankalpa@gmail.com</td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 100px;">NIC Number :</td>
                                    <td>801240132411V</td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 100px;">Phone Number :</td>
                                    <td>+94 753 333 333</td>
                                </tr>
                                <tr>
                                    <td style="color: grey; font-size: 12px; width: 120px;">Passport Number :</td>
                                    <td>22156751</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="history-row">
                <div class="bio">
                    <h2 style="color: rgb(130, 1, 1);">Biography</h2><br>   
                    <span style="font-family: arial; line-height:20px">I remember sitting in his backyard in his garden, one day, and he started talking about God. He [Jobs] said, “ Sometimes I believe in God, sometimes I don’t. I think it’s 50/50, maybe. But ever since I’ve had cancer, I’ve been thinking about it more, and I find myself believing a bit more, maybe it’s because I want to believe in an afterlife, that when you die, it doesn’t just all disappear. The wisdom you’ve accumulated, somehow it lives on.”</span>
                </div>
                <div class="history">
                    <h2 style="color: rgb(130, 1, 1);">History</h2><br> 
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