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
            <li class="dropdown">
                <a href="#" class="dropdown-toggle">
                    <i class="fas fa-file-alt"></i>
                    <span>Pages</span>
                    <i class="fas fa-chevron-down"></i> <!-- Icône pour indiquer le menu déroulant -->
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">Insertion</a></li>
                    <li><a href="#">Tables</a></li>
                </ul>
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
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const dropdown = document.querySelector(".dropdown");
        const dropdownToggle = dropdown.querySelector(".dropdown-toggle");
        const dropdownMenu = dropdown.querySelector(".dropdown-menu");

        // Ajout d'un gestionnaire d'événement pour le clic
        dropdownToggle.addEventListener("click", function (event) {
            event.preventDefault(); // Empêcher le comportement par défaut du lien
            const isOpen = dropdownMenu.classList.contains("show");

            // Ajouter ou supprimer la classe 'show' pour afficher/masquer le menu
            dropdownMenu.classList.toggle("show", !isOpen);

            // Ajouter un style dynamique lorsque le menu est affiché
            if (!isOpen) {
                dropdownMenu.style.display = "block";
            } else {
                dropdownMenu.style.display = "none";
            }
        });

        // Optionnel : Masquer le menu si l'utilisateur clique en dehors
        document.addEventListener("click", function (event) {
            if (!dropdown.contains(event.target)) {
                dropdownMenu.classList.remove("show");
                dropdownMenu.style.display = "none";
            }
        });
    });

</script>
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