<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Account | Home</title>

    <link rel="stylesheet" href="index.css">

    <style>
        main {
            padding: 2rem 10rem;
        }
    </style>

    <script>
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFFlBw8HfCJo="
        crossorigin="anonymous"
    </script>

    <script type="text/javascript">
        src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"
    </script>

</head>

<body>
    <nav>
        <h1 class="title">AccountPage</h1>
        <ul class="links">
            <li><a href="index.html" style="text-decoration: none; color: white">Home</a></li>
            <li><a href="contact.html" style="text-decoration: none; color: white">Contact</a></li>
            <li><a href="history.html" style="text-decoration: none; color: white">History</a></li>
        </ul>
        <ul class="icons">
            <li><a href="search.html"><img src="NavIcons/search-icon.svg" alt="" class="top-icon"></a></li>
            <li><a href="Account.html"><img src="NavIcons/profile-icon.svg" alt="" class="top-icon" id="entry"></a></li>
            <li><a href="Shop.html"><img src="NavIcons/cart-icon.svg" alt="" class="top-icon"></a></li>
        </ul>
    </nav>
    <main>
        <div class="login">
            <form action="edit.html">
                <h1>Login</h1>
                <br>
                <label><b>Username:</b></label><br>
                <input type="text" placeholder="Enter username..." id="username" required>
                <br><br>
                <label><b>Password:</b></label><br>
                <input type="password" placeholder="Enter Password..." id="password" required>
                <br>${message}
                <br><br>
                <button type="submit" id="submit">Edit Account</button>
                <br><br>
            </form>
            <form action="createAcct.html">
                <button type="submit" id="create">Create An Account</button>
            </form>
            <a href="forgot.html">I Forgot My Password</a>
        </div>
    </main>
    <footer>Copyright &copy; 2021</footer>
</body>

<script type="text/javascript">
    $(document).ready(function () {
        $("#loginForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },

                password: "required",
            },
            messages: {
                email: {
                    required: "Please enter email",
                    email: "Please enter a valid email address"
                },

                password: "Please enter password"
            }
        });
    });
</script>

</html>