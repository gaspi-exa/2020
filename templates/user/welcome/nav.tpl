<nav class="fixedNav">
    <div class="navBox">

        <div class="logoBox">                  
            <img id="js-logo-ShowHome" src="img/WAV-logo.svg" alt="WAV logo">
        </div>

        <section class="navButtonsSection">
            <div class="defaultButtonsNavBox">
                <ul>
                    <li>
                        <a href="#ticketsSection" id="js-showTickets">
                            TICKETS
                        </a>
                    </li>
                    <li>
                        <label id="js-showSingUp" class="js-show-contain">userName</label>
                        <a class="color-primary">
                            {$userName}
                        </a>
                    </li>
                    <li>
                        <a href="logout">
                            LOG OUT
                        </a>
                    </li>
                </ul>
            </div>
            <div class="burguerMenuBox">
                <button id="js-btnMenu">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
        </section>

    </div>
</nav>

<nav class="hiddenNav js-show-contain">

    <button class="invisibleBtnToHideNav" id="js-btnHiddenMenu">

    </button>
    <section class="buttonsHiddenNavSection">
        <button class="color-primary">{$userName}</button>
        <button id="js-btnshowTickets"> TICKETS </button>
        <button id="js-btn-goToAdmin"> ADMIN </button>
        <button> EVENTS </button>
        <button><a href="logout">LOG OUT</a></button>
    </section>

</nav>