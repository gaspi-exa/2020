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
        window.location.href='https://soundcloud.com/electronicfloor/exclusive-podcast-07-by-paul-deep-ar';
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
        window.location.href='user/tickets-all';
    }

// Go to ADMIN

    document.querySelector('#js-btn-goToAdmin').addEventListener('click', () => {
        window.location.href='admin';
    })
    
// Show Table / Show Cards

    let cards = document.querySelectorAll(".ticketCardArticle");
    for(let tCard of cards) {
        tCard.addEventListener('click', () => {
            showTableOrCards(tCard);
        });
    }

    function showTableOrCards(btnEdit) {
        let id = btnEdit.dataset.id;
        window.location.href=`user/tickets-category/${id}`;
    }
    
    document.getElementById('js-btnBack').addEventListener('click', ()=> {
        window.location.href='user';
    });
    

// Show Ticket Details

    let btnsShowTicketDetails = document.querySelectorAll('.js-btn-showTicketDetails');
    for(let btn of btnsShowTicketDetails) {
        btn.addEventListener('click', () => {
            window.location.href='user/ticket-detail/'+btn.dataset.id;
        })
    }

    document.querySelector('#js-btnClose-advertence').addEventListener('click', () => {
        window.location.href='user';
    })



    
});