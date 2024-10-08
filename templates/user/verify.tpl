
<!-- LOG IN -->

<div class="formLogInBox">
    <button class="btnClose" id="js-btnClose-login"></button>

    <div class="logBox">
    
        <a href="home" class="btn-exit-backHome" >
            <i class="fas fa-arrow-left"></i> back
        </a>
        
        <form action="welcome" class="formLogin" method="post"> 
    
            <input name="userName" class="inp-log color-primary" type="text" placeholder="User" value="{$message}" required>
            <input name="userPassword" class="inp-log" type="password" placeholder="Password" required>
            <button type="submit">Log In</button>
            
        </form>
    </div>

</div>