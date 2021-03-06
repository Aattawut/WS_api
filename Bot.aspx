<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bot.aspx.cs" Inherits="WS_api.Bot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Health Helper Voicebot" />
    <meta name="author" content="Aattawut Nutlamyong and Sirasit Boonklang" />
    <title>Health Helper Voicebot</title>
    <link
        rel="canonical"
        href="https://getbootstrap.com/docs/5.0/examples/navbar-fixed/" />

    <!-- Bootstrap core CSS -->
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>

    <!-- Custom styles for this template -->
    <link href="/css/chatbotstyle.css" rel="stylesheet" />
</head>
<body class="d-flex flex-column h-100">
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-lg">
            <a class="navbar-brand" href="#">Health Helper Chatbot</a>
            <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarCollapse"
                aria-controls="navbarCollapse"
                aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/home.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/chatbot.html">Talk-with-Bot</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/speechtotext.html">Speech-to-Text</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about.html">About Us</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input
                        class="form-control me-2"
                        type="search"
                        placeholder="Search"
                        aria-label="Search" />
                    <button class="btn btn-outline-success" type="submit">
                        Search
                    </button>
                </form>
            </div>
        </div>
    </nav>
    <!--Chatbot-->
 
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="txtK" OnTextChanged="txtK_TextChanged"></asp:TextBox>
            <asp:Label runat="server" ID="lblShow"></asp:Label>
            <asp:Button runat="server" ID="btnShow" OnClick="btnShow_Click" />
        </div>
    </form>

    <div class="container-fluid">
        <section class="main-01">
            <div class="container-md">
                <div class="user-area" runat="server">

                    <img src="images/boy.png" />
                </div>
            </div>
            <div class="chatarea-main">
                <div class="chatarea-outer">
                    <div class="chatarea-inner chatbot">
                        สวัสดีครับ นี่คือระบบคัดกรองโรคเบื้องต้นอัตโนมัติ
                    </div>
                    <div class="chatarea-inner chatbot">คุณชื่ออะไรครับ</div>
                </div>
            </div>
            <div class="chatbot-area">
                <img src="images/bot.png" />
            </div>
            <button id="mic"><i class="flaticon-microphone"></i></button>
        </section>
    </div>
    <script src="js/main.js"></script>
    <!--Chatbot-->

    <footer
        class="footer mt-auto py-2"
        style="background-color: rgba(0, 0, 0, 0.3)">
        <div class="container-lg">
            <span class="text-muted"></span>
            Copyright ©2021
        <a class="text-white" href="https://getbootstrap.com/">Bootstrap.com</a>
        </div>
    </footer>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="tts.js"></script>
</body>
</html>
