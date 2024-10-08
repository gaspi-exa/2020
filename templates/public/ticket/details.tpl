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