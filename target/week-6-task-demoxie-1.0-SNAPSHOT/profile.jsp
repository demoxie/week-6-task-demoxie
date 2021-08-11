<%@ page import="com.example.week6taskdemoxie.model.User" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: t
  Date: 11/08/2021
  Time: 9:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<% User user = (User) session.getAttribute("user");
    String name = user.getFirstName() + " " + user.getLastName();
    Date dob = user.getDateOfBirth();
    String gender = user.getGender();
    String email = user.getUserName();
    String phone = user.getPhoneNumber();
    String address = user.getAddress();
    String bio = user.getStatus();

%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Profile </title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
        $("#avatar").click(function() {
            $("#photo").trigger("click");
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

    <style>
        body {
            background: #f7f7ff;
            margin-top: 20px;
        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 0 solid transparent;
            border-radius: .25rem;
            margin-bottom: 1.5rem;
            box-shadow: 0 2px 6px 0 rgb(218 218 253), 0 2px 6px 0 rgb(206 206 238);
        }

        .me-2 {
            margin-right: .5rem !important;
        }


        body {
            margin-top: 20px;
            background: #eee;
        }



        .profile-header {
            position: relative;
            overflow: hidden;

        }

        .profile-header .profile-header-cover {
            background-image: url(https://bootdey.com/img/Content/bg1.jpg);
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            position: absolute;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0
        }

        .profile-header .profile-header-cover:before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0, rgba(0, 0, 0, .75) 100%)
        }

        .profile-header .profile-header-content {
            color: #fff;
            padding: 25px;


        }

        .profile-header-img {
            float: left;
            width: 130px;
            height: 130px;
            overflow: hidden;
            position: relative;
            z-index: 10;
            margin: 0 0 -20px;
            padding: 3px;
            border-radius: 4px;

        }

        .profile-header-img img {
            max-width: 100%
        }

        .profile-header-info h4 {
            font-weight: 500;
            color: #fff
        }

        .profile-header-img+.profile-header-info {
            margin-left: 140px
        }

        .profile-header .profile-header-content,
        .profile-header .profile-header-tab {
            position: relative
        }

        .b-minus-1,
        .b-minus-10,
        .b-minus-2,
        .b-minus-3,
        .b-minus-4,
        .b-minus-5,
        .b-minus-6,
        .b-minus-7,
        .b-minus-8,
        .b-minus-9,
        .b-plus-1,
        .b-plus-10,
        .b-plus-2,
        .b-plus-3,
        .b-plus-4,
        .b-plus-5,
        .b-plus-6,
        .b-plus-7,
        .b-plus-8,
        .b-plus-9,
        .l-minus-1,
        .l-minus-2,
        .l-minus-3,
        .l-minus-4,
        .l-minus-5,
        .l-minus-6,
        .l-minus-7,
        .l-minus-8,
        .l-minus-9,
        .l-plus-1,
        .l-plus-10,
        .l-plus-2,
        .l-plus-3,
        .l-plus-4,
        .l-plus-5,
        .l-plus-6,
        .l-plus-7,
        .l-plus-8,
        .l-plus-9,
        .r-minus-1,
        .r-minus-10,
        .r-minus-2,
        .r-minus-3,
        .r-minus-4,
        .r-minus-5,
        .r-minus-6,
        .r-minus-7,
        .r-minus-8,
        .r-minus-9,
        .r-plus-1,
        .r-plus-10,
        .r-plus-2,
        .r-plus-3,
        .r-plus-4,
        .r-plus-5,
        .r-plus-6,
        .r-plus-7,
        .r-plus-8,
        .r-plus-9,
        .t-minus-1,
        .t-minus-10,
        .t-minus-2,
        .t-minus-3,
        .t-minus-4,
        .t-minus-5,
        .t-minus-6,
        .t-minus-7,
        .t-minus-8,
        .t-minus-9,
        .t-plus-1,
        .t-plus-10,
        .t-plus-2,
        .t-plus-3,
        .t-plus-4,
        .t-plus-5,
        .t-plus-6,
        .t-plus-7,
        .t-plus-8,
        .t-plus-9 {
            position: relative !important
        }

        .profile-header .profile-header-tab {
            background: #fff;
            list-style-type: none;
            margin: -10px 0 0;
            padding: 0 0 0 140px;
            white-space: nowrap;
            border-radius: 0
        }

        .text-ellipsis,
        .text-nowrap {
            white-space: nowrap !important
        }

        .profile-header .profile-header-tab>li {
            display: inline-block;
            margin: 0
        }

        .profile-header .profile-header-tab>li>a {
            display: block;
            color: #929ba1;
            line-height: 20px;
            padding: 10px 20px;
            text-decoration: none;
            font-weight: 700;
            font-size: 12px;
            border: none
        }

        .profile-header .profile-header-tab>li.active>a,
        .profile-header .profile-header-tab>li>a.active {
            color: #242a30
        }

        .profile-content {
            padding: 25px;
            border-radius: 4px
        }

        .profile-content:after,
        .profile-content:before {
            content: '';
            display: table;
            clear: both
        }

        .profile-content .tab-content,
        .profile-content .tab-pane {
            background: 0 0
        }

        .profile-left {
            width: 200px;
            float: left
        }

        .profile-right {
            margin-left: 240px;
            padding-right: 20px
        }

        .profile-image {
            height: 175px;
            line-height: 175px;
            text-align: center;
            font-size: 72px;
            margin-bottom: 10px;
            border: 2px solid #E2E7EB;
            overflow: hidden;
            border-radius: 4px
        }

        .profile-image img {
            display: block;
            max-width: 100%
        }

        .profile-highlight {
            padding: 12px 15px;
            background: #FEFDE1;
            border-radius: 4px
        }

        .profile-highlight h4 {
            margin: 0 0 7px;
            font-size: 12px;
            font-weight: 700
        }

        .table.table-profile>thead>tr>th {
            border-bottom: none !important
        }

        .table.table-profile>thead>tr>th h4 {
            font-size: 20px;
            margin-top: 0
        }

        .table.table-profile>thead>tr>th h4 small {
            display: block;
            font-size: 12px;
            font-weight: 400;
            margin-top: 5px
        }

        .table.table-profile>tbody>tr>td,
        .table.table-profile>thead>tr>th {
            border: none;
            padding-top: 7px;
            padding-bottom: 7px;
            color: #242a30;
            background: 0 0
        }

        .table.table-profile>tbody>tr>td.field {
            width: 20%;
            text-align: right;
            font-weight: 600;
            color: #2d353c
        }

        .table.table-profile>tbody>tr.highlight>td {
            border-top: 1px solid #b9c3ca;
            border-bottom: 1px solid #b9c3ca
        }

        .table.table-profile>tbody>tr.divider>td {
            padding: 0 !important;
            height: 10px
        }

        .profile-section+.profile-section {
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #b9c3ca
        }

        .profile-section:after,
        .profile-section:before {
            content: '';
            display: table;
            clear: both
        }

        .profile-section .title {
            font-size: 20px;
            margin: 0 0 15px
        }

        .profile-section .title small {
            font-weight: 400
        }

        body.flat-black {
            background: #E7E7E7
        }

        .flat-black .navbar.navbar-inverse {
            background: #212121
        }

        .flat-black .navbar.navbar-inverse .navbar-form .form-control {
            background: #4a4a4a;
            border-color: #4a4a4a
        }

        .flat-black .sidebar,
        .flat-black .sidebar-bg {
            background: #3A3A3A
        }

        .flat-black .page-with-light-sidebar .sidebar,
        .flat-black .page-with-light-sidebar .sidebar-bg {
            background: #fff
        }

        .flat-black .sidebar .nav>li>a {
            color: #b2b2b2
        }

        .flat-black .sidebar.sidebar-grid .nav>li>a {
            border-bottom: 1px solid #474747;
            border-top: 1px solid #474747
        }

        .flat-black .sidebar .active .sub-menu>li.active>a,
        .flat-black .sidebar .nav>li.active>a,
        .flat-black .sidebar .nav>li>a:focus,
        .flat-black .sidebar .nav>li>a:hover,
        .flat-black .sidebar .sub-menu>li>a:focus,
        .flat-black .sidebar .sub-menu>li>a:hover,
        .sidebar .nav>li.nav-profile>a {
            color: #fff
        }

        .flat-black .sidebar .sub-menu>li>a,
        .flat-black .sidebar .sub-menu>li>a:before {
            color: #999
        }

        .flat-black .page-with-light-sidebar .sidebar .active .sub-menu>li.active>a,
        .flat-black .page-with-light-sidebar .sidebar .active .sub-menu>li.active>a:focus,
        .flat-black .page-with-light-sidebar .sidebar .active .sub-menu>li.active>a:hover,
        .flat-black .page-with-light-sidebar .sidebar .nav>li.active>a,
        .flat-black .page-with-light-sidebar .sidebar .nav>li.active>a:focus,
        .flat-black .page-with-light-sidebar .sidebar .nav>li.active>a:hover {
            color: #000
        }

        .flat-black .page-sidebar-minified .sidebar .nav>li.has-sub:focus>a,
        .flat-black .page-sidebar-minified .sidebar .nav>li.has-sub:hover>a {
            background: #323232
        }

        .flat-black .page-sidebar-minified .sidebar .nav li.has-sub>.sub-menu,
        .flat-black .sidebar .nav>li.active>a,
        .flat-black .sidebar .nav>li.active>a:focus,
        .flat-black .sidebar .nav>li.active>a:hover,
        .flat-black .sidebar .nav>li.nav-profile,
        .flat-black .sidebar .sub-menu>li.has-sub>a:before,
        .flat-black .sidebar .sub-menu>li:before,
        .flat-black .sidebar .sub-menu>li>a:after {
            background: #2A2A2A
        }

        .flat-black .page-sidebar-minified .sidebar .sub-menu>li:before,
        .flat-black .page-sidebar-minified .sidebar .sub-menu>li>a:after {
            background: #3e3e3e
        }

        .flat-black .sidebar .nav>li.nav-profile .cover.with-shadow:before {
            background: rgba(42, 42, 42, .75)
        }

        .bg-white {
            background-color: #fff !important;
        }

        .p-10 {
            padding: 10px !important;
        }

        .media.media-xs .media-object {
            width: 32px;
        }

        .m-b-2 {
            margin-bottom: 2px !important;
        }

        .media>.media-left,
        .media>.pull-left {
            padding-right: 15px;
        }

        .media-body,
        .media-left,
        .media-right {
            display: table-cell;
            vertical-align: top;
        }

        select.form-control:not([size]):not([multiple]) {
            height: 34px;
        }

        .form-control.input-inline {
            display: inline;
            width: auto;
            padding: 0 7px;
        }


        .timeline {
            list-style-type: none;
            margin: 0;
            padding: 0;
            position: relative
        }

        .timeline:before {
            content: '';
            position: absolute;
            top: 5px;
            bottom: 5px;
            width: 5px;
            background: #2d353c;
            left: 20%;
            margin-left: -2.5px
        }

        .timeline>li {
            position: relative;
            min-height: 50px;
            padding: 20px 0
        }

        .timeline .timeline-time {
            position: absolute;
            left: 0;
            width: 18%;
            text-align: right;
            top: 30px
        }

        .timeline .timeline-time .date,
        .timeline .timeline-time .time {
            display: block;
            font-weight: 600
        }

        .timeline .timeline-time .date {
            line-height: 16px;
            font-size: 12px
        }

        .timeline .timeline-time .time {
            line-height: 24px;
            font-size: 20px;
            color: #242a30
        }

        .timeline .timeline-icon {
            left: 15%;
            position: absolute;
            width: 10%;
            text-align: center;
            top: 40px
        }

        .timeline .timeline-icon a {
            text-decoration: none;
            width: 20px;
            height: 20px;
            display: inline-block;
            border-radius: 20px;
            background: #d9e0e7;
            line-height: 10px;
            color: #fff;
            font-size: 14px;
            border: 5px solid #2d353c;
            transition: border-color .2s linear
        }

        .timeline .timeline-body {
            margin-left: 23%;
            margin-right: 17%;
            background: #fff;
            position: relative;
            padding: 20px 25px;
            border-radius: 6px
        }

        .timeline .timeline-body:before {
            content: '';
            display: block;
            position: absolute;
            border: 10px solid transparent;
            border-right-color: #fff;
            left: -20px;
            top: 20px
        }

        .timeline .timeline-body>div+div {
            margin-top: 15px
        }

        .timeline .timeline-body>div+div:last-child {
            margin-bottom: -20px;
            padding-bottom: 20px;
            border-radius: 0 0 6px 6px
        }

        .timeline-header {
            padding-bottom: 10px;
            border-bottom: 1px solid #e2e7eb;
            line-height: 30px
        }

        .timeline-header .userimage {
            float: left;
            width: 34px;
            height: 34px;
            border-radius: 40px;
            overflow: hidden;
            margin: -2px 10px -2px 0
        }

        .timeline-header .username {
            font-size: 16px;
            font-weight: 600
        }

        .timeline-header .username,
        .timeline-header .username a {
            color: #2d353c
        }

        .timeline img {
            max-width: 100%;
            display: block
        }

        .timeline-content {
            letter-spacing: .25px;
            line-height: 18px;
            font-size: 13px
        }

        .timeline-content:after,
        .timeline-content:before {
            content: '';
            display: table;
            clear: both
        }

        .timeline-title {
            margin-top: 0
        }

        .timeline-footer {
            background: #fff;
            border-top: 1px solid #e2e7ec;
            padding-top: 15px
        }

        .timeline-footer a:not(.btn) {
            color: #575d63
        }

        .timeline-footer a:not(.btn):focus,
        .timeline-footer a:not(.btn):hover {
            color: #2d353c
        }

        .timeline-likes {
            color: #6d767f;
            font-weight: 600;
            font-size: 12px
        }

        .timeline-likes .stats-right {
            float: right
        }

        .timeline-likes .stats-total {
            display: inline-block;
            line-height: 20px
        }

        .timeline-likes .stats-icon {
            float: left;
            margin-right: 5px;
            font-size: 9px
        }

        .timeline-likes .stats-icon+.stats-icon {
            margin-left: -2px
        }

        .timeline-likes .stats-text {
            line-height: 20px
        }

        .timeline-likes .stats-text+.stats-text {
            margin-left: 15px
        }

        .timeline-comment-box {
            background: #f2f3f4;
            margin-left: -25px;
            margin-right: -25px;
            padding: 20px 25px
        }

        .timeline-comment-box .user {
            float: left;
            width: 34px;
            height: 34px;
            overflow: hidden;
            border-radius: 30px
        }

        .timeline-comment-box .user img {
            max-width: 100%;
            max-height: 100%
        }

        .timeline-comment-box .user+.input {
            margin-left: 44px
        }

        .lead {
            margin-bottom: 20px;
            font-size: 21px;
            font-weight: 300;
            line-height: 1.4;
        }

        #bio {
            resize: none;
        }

        .text-danger,
        .text-red {
            color: #ff5b57 !important;
        }
    </style>
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div id="content" class="content content-full-width">
                <!-- begin profile -->
                <div class="profile">
                    <div class="profile-header">
                        <!-- BEGIN profile-header-cover -->
                        <div class="profile-header-cover"></div>
                        <!-- END profile-header-cover -->
                        <!-- BEGIN profile-header-content -->
                        <div class="profile-header-content">
                            <!-- BEGIN profile-header-img -->
                            <div class="profile-header-img">
                                <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="" id="avatar"
                                     class="rounded-circle p-1 bg-success" width="510">
                            </div>
                            <!-- END profile-header-img -->
                            <!-- BEGIN profile-header-info -->
                            <div class="profile-header-info">
                                <h4 class="m-t-10 m-b-5"><% out.print(name);%></h4>
                                <p class="m-b-10">Decagon<br><% out.print(bio);%></p>
                                <a href="#" class="btn btn-sm btn-info mb-2">Edit Profile</a>
                            </div>
                            <!-- END profile-header-info -->
                        </div>
                        <!-- END profile-header-content -->
                        <!-- BEGIN profile-header-tab -->
                        <ul class="profile-header-tab nav nav-tabs">
                            <li class="nav-item"><a href="#profile-post" class="nav-link active show" data-toggle="tab">POSTS</a></li>
                            <li class="nav-item"><a href="#profile-about" class="nav-link" data-toggle="tab">ABOUT</a></li>
                            <li class="nav-item"><a href="#profile-photos" class="nav-link" data-toggle="tab">PHOTOS</a></li>
                            <li class="nav-item"><a href="#profile-videos" class="nav-link" data-toggle="tab">VIDEOS</a></li>
                            <li class="nav-item"><a href="#profile-friends" class="nav-link" data-toggle="tab">FRIENDS</a></li>
                        </ul>
                        <!-- END profile-header-tab -->
                    </div>
                </div>
                <!-- end profile -->
                <br>
                <div class="main-body">
                    <div class="row">


                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="Admin"
                                             class="rounded-circle p-1 bg-primary" width="110">
                                        <div class="mt-3">
                                            <h4><% out.print(name);%></h4>
                                            <p class="text-secondary mb-1">Decadev <br><% out.print(bio);%></p>
                                            <p class="text-muted font-size-sm"><% out.print(bio);%></p>
                                            <button class="btn btn-primary">Follow</button>
                                            <button class="btn btn-outline-primary">Message</button>
                                        </div>
                                    </div>
                                    <hr class="my-4">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                            <h6 class="mb-0">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-globe me-2 icon-inline">
                                                    <circle cx="12" cy="12" r="10"></circle>
                                                    <line x1="2" y1="12" x2="22" y2="12"></line>
                                                    <path
                                                            d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path>
                                                </svg>
                                                Website
                                            </h6>
                                            <span class="text-secondary">https://bootdey.com</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                            <h6 class="mb-0">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-github me-2 icon-inline">
                                                    <path
                                                            d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path>
                                                </svg>
                                                Github
                                            </h6>
                                            <span class="text-secondary">bootdey</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                            <h6 class="mb-0">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-twitter me-2 icon-inline text-info">
                                                    <path
                                                            d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path>
                                                </svg>
                                                Twitter
                                            </h6>
                                            <span class="text-secondary">@bootdey</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                            <h6 class="mb-0">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-instagram me-2 icon-inline text-danger">
                                                    <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect>
                                                    <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                                    <line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>
                                                </svg>
                                                Instagram
                                            </h6>
                                            <span class="text-secondary">bootdey</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                            <h6 class="mb-0">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-facebook me-2 icon-inline text-primary">
                                                    <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path>
                                                </svg>
                                                Facebook
                                            </h6>
                                            <span class="text-secondary">bootdey</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>



                        <div class="col-lg-8">
                            <form role="form" enctype="multipart/form-data" method="POST" action="<%request.getContextPath();%>/week_6_task_demoxie_war_exploded/update-profile">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Full Name</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" class="form-control" name="name" value="<% out.print(name);%>">
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Date Of Birth</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="date" class="form-control" name="dob" value="<% out.print(dob);%>">
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Gender</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <select name="gender" class="form-control">
                                                    <option tabindex="0"><% out.print(gender);%></option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Email</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" class="form-control" name="username" value="<% out.print(email);%>">
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Phone</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" class="form-control" value="<% out.print(phone);%>">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Address</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" class="form-control" value="<% out.print(address);%>">
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Bio</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <textarea id="bio" class="form-control"><% out.print(bio);%></textarea>
                                                <input type="file" name="photo" id="photo" style="display: none">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="submit" class="btn btn-primary px-4" value="Save Changes">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>






                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="d-flex align-items-center mb-3">Project Status</h5>
                                            <p>Web Design</p>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80"
                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <p>Website Markup</p>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-danger" role="progressbar" style="width: 72%" aria-valuenow="72"
                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <p>One Page</p>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-success" role="progressbar" style="width: 89%" aria-valuenow="89"
                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <p>Mobile Template</p>
                                            <div class="progress mb-3" style="height: 5px">
                                                <div class="progress-bar bg-warning" role="progressbar" style="width: 55%" aria-valuenow="55"
                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                            <p>Backend API</p>
                                            <div class="progress" style="height: 5px">
                                                <div class="progress-bar bg-info" role="progressbar" style="width: 66%" aria-valuenow="66"
                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
