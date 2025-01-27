<!-- LOG IN -->

<div class="formLogInBox">
    <button class="btnClose" id="js-btnClose-login"></button>

    <form action="welcome" class="formLogin" method="post">
        <label class="color-primary" for="userName">{$msgName}</label>
        <input name="userName" class="inp-log" type="text" placeholder="User" required>
        <label class="color-primary" for="userPassword">{$msgPass}</label>
        <input name="userPassword" class="inp-log" type="password" placeholder="Password" required>
        <button type="submit">Log In</button>

    </form>
</div>

<!-- SIGN UP -->

<div class="formSignUpBox js-show-contain">
    <button class="btnClose" id="js-btnClose-signup"></button>

    <form action="verify" class="formSignUp" method="post">

        <input class="inp-log" type="text" name="userName" placeholder="User" required>
        <input class="inp-log" type="email" name="userEmail" placeholder="Email" required>
        <input class="inp-log" type="password" name="userPassword" placeholder="Password" required>
        <button type="submit">Sign Up</button>

    </form>
</div>