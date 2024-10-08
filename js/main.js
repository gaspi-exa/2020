document.addEventListener('DOMContentLoaded', function() {
    'use strict';

// Parallax effect, header background

    let elems = document.querySelectorAll('.parallax');
    let instances = M.Parallax.init(elems);

// Show / hide Nav

    document.getElementById('js-btnMenu').addEventListener('click', showNav);
    document.getElementById('js-btnHiddenMenu').addEventListener('click', showNav);

    function showNav() {
        document.querySelector('.hiddenNav').classList.toggle('js-show-contain');
        document.querySelector('.navButtonsSection').classList.toggle('js-show-contain');
    }

// Show Register Form

    document.getElementById('js-showLogin').addEventListener('click', showFormLog);
    document.getElementById('js-btnshowLogin').addEventListener('click', showFormLog);
    document.getElementById('js-showSingUp').addEventListener('click', showFormLog);
    document.getElementById('js-btnshowSignUp').addEventListener('click', showFormLog);
    document.getElementById('js-btnClose-login').addEventListener('click', showFormLog);
    document.getElementById('js-btnClose-signup').addEventListener('click', showFormLog);

    function showFormLog(e) {
        e.preventDefault();
        if( this == document.getElementById('js-showLogin') || this == document.getElementById('js-btnshowLogin')) {
            document.querySelector('.formLogInBox').classList.remove('js-show-contain');
            if(!document.querySelector('.formSignUpBox').classList.contains('js-show-contain'))
                document.querySelector('.formSignUpBox').classList.add('js-show-contain');
        }
        else if(this == document.getElementById('js-showSingUp') || this == document.getElementById('js-btnshowSignUp')) {
            document.querySelector('.formSignUpBox').classList.remove('js-show-contain');
            if(!document.querySelector('.formLogInBox').classList.contains('js-show-contain'))
                document.querySelector('.formLogInBox').classList.add('js-show-contain');
        }
        else if(this == document.getElementById('js-btnClose-login'))
            document.querySelector('.formLogInBox').classList.toggle('js-show-contain');
        else if(this == document.getElementById('js-btnClose-signup'))
            document.querySelector('.formSignUpBox').classList.toggle('js-show-contain');
    }
    
// Show / hide info Dj

    document.getElementById('js-btnInfo').addEventListener('click', showInfoDj);

    function showInfoDj() {
        document.querySelector('.h1DjName').classList.toggle('js-show-contain');
        document.querySelector('.info-paragraph').classList.toggle('js-show-contain');
        document.querySelector('.iconInfo').classList.toggle('fa-info-circle');
        document.querySelector('.iconInfo').classList.toggle('fa-arrow-left');
    }

// Redirections:

// 1. Go to Soundcloud iFrame

    document.getElementById('js-btnPlay').addEventListener('click', () => {
        window.location.href='#iframeSoundcloud';
    });
    
// 3. Go to Home: Logo WAV

    document.getElementById('js-logo-ShowHome').addEventListener('click', () => {
        window.location.href='';
    });

// 4. Go to Tickets Cards
    
    document.getElementById('js-showTickets').addEventListener('click', goToTicketCards);
    document.getElementById('js-btnshowTickets').addEventListener('click', goToTicketCards);
    
    function goToTicketCards(e) {
        e.preventDefault();       
        window.location.href='#ticketsSection';
        if( !document.querySelector('.formSignUpBox').classList.contains('js-show-contain'))
            document.querySelector('.formSignUpBox').classList.add('js-show-contain');
        else if(!document.querySelector('.formLogInBox').classList.contains('js-show-contain'))
            document.querySelector('.formLogInBox').classList.add('js-show-contain');
    }
    
// Show Table / Show Cards

    let cards = document.querySelectorAll(".ticketCardArticle");
    for(let tCard of cards) {
        tCard.addEventListener('click', () => {
            showTableOrCards(tCard);
        });
    }

    function showTableOrCards(btnEdit) {
        let id = btnEdit.dataset.id;
        window.location.href=`tickets-category/${id}`;
    }
    
    document.getElementById('js-btnBack').addEventListener('click', ()=> {
        window.location.href='home';
    });
    

// Show Ticket Details

    let btnsShowTicketDetails = document.querySelectorAll('.js-btn-showTicketDetails');
    for(let btn of btnsShowTicketDetails) {
        btn.addEventListener('click', () => {
            window.location.href='ticket-detail/'+btn.dataset.id;
        })
    }
    
});