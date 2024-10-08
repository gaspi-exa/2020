{include file='public/head.tpl'}

<div class="backToHome-arrow-box">
    <a href="home" class="color-primary"><i class="fas fa-arrow-left"></i></a>
</div>

<main>

    <section class="ticketBox" id="ticketsSection">    
    
        {include file='public/ticket/details.tpl'}
    
    </section>

    <div id="comment-box-ajax">
    
    </div>
    <div class="js-show-contain">
        <input type="text" name="ticket_id" id="ticket_id" value={$ticket->id_ticket}>
        <input type="text" name="user_id" id="user_id" value={$user->user_id}>
        <input type="text" name="user_name" id="user_name" value={$user->name}>
    </div>
    
{include file='public/footer.tpl'}
    