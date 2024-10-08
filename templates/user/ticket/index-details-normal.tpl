{include file='user/welcome/head-normalUser.tpl'}

<div class="backToHome-arrow-box">
    <a href="user" class="color-primary"><i class="fas fa-arrow-left"></i></a>
</div>

<main>

    <section class="ticketBox" id="ticketsSection">    
        <div class="confirm-buy-box">
            <div class="ticketInfoBox">
                <section class="left-ticketInfo-section">
                    <div class="rotateInfoBox">
                        <p class="left-infoTicket-category">{$ticket->cat_name|upper}<span class="id-ticket-detail"> #{$ticket->id_ticket}</span></p>
                        <p class="left-infoTicket-name">{$ticket->name|upper}</p>
                        <p class="left-infoTicket-price">${$ticket->cat_price}.00</p>
                        <p class="left-infoTicket-date">{$ticket->date}</p>
                    </div>
                </section>
                {if $ticket->cat_name == vip}
                    <section class="right-ticketInfo-section bg-vip">
                {elseif $ticket->cat_name == popular}
                    <section class="right-ticketInfo-section bg-popular">
                {else}
                    <section class="right-ticketInfo-section bg-promo">
                {/if}
                    <div class="vipWav">
                        <div class="blackContentCategory">
                            <p>{$ticket->cat_name|upper}<span class="id-ticket-detail"> #{$ticket->id_ticket}</span></p>
                        </div>
                        <div class="wavLogoBox">
                            <img src="img/WAV-logo.svg">
                        </div>
                    </div>
                    <div class="nameTicketInfo">
                        <p>{$ticket->name|upper}</p>
                    </div>
                    <div class="priceDateQr">
                        <div class="priceDateBox">
                            <div class="priceBox">
                                <p>${$ticket->cat_price}.00</p>
                            </div>
                            <div class="dateTicketInfoBox">
                                <p>{$ticket->date}</p>
                            </div>
                        </div>
                        <div class="qrBox">
                            <img src="https://play-lh.googleusercontent.com/ufwUy4SGVTqCs8fcp6Ajxfpae0bNImN1Rq2cXUjWI7jlmNMCsXgQE5C3yUEzBu5Gadkz">
                        </div>
                    </div>
                </section>
            </div>
        </div>
    
    </section>

    <div id="comment-box-ajax">
    
    </div>

    <div id="commentForm-box-ajax">
        <section class="comments-section logBox comment-box">
            <form class="formLogin comment-form">
                <div class="inpBox">
                    <input type="text" name="comment-inp" id="comment-inp" value="" placeholder=".  .  ." class="inp-log">
                    <select name="score-select" id="score-select">
                        <option value="5">5</option>
                        <option value="4">4</option>
                        <option value="3">3</option>
                        <option value="2">2</option>
                        <option value="1">1</option>
                    </select>
                </div>
                <div class="js-show-contain">
                    <input type="text" name="ticket_id" id="ticket_id" value={$ticket->id_ticket}>
                    <input type="text" name="user_id" id="user_id" value={$user->user_id}>
                    <input type="text" name="user_name" id="user_name" value={$user->name}>
                </div>
                <button id="comment-submit-btn">Send comment</button>
            </form>
        </section>
    </div>

{include file='../../public/footer.tpl'}