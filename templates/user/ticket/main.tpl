<main>

    <section class="ticketBox" id="ticketsSection">

        <section class="ticketsTableSection">

        <div class="backBox">
            <button id="js-btnBack">
                <i class="fas fa-arrow-left"></i>
            </button>
        </div>
        <div class="tableBoxHead">
            <table>
                <thead>
                    <tr class="trHead">
                        <th>ID</th>
                        <th>Dj name</th>
                        <th>Price</th>
                        <th>Date</th>
                        <th>Category</th>
                    </tr>
                </thead>
            </table>
        </div>
        <div class="tableBox">
            <table>
                <tbody>

                {foreach from=$ticketsByCategory item=ticket}    
                                        
                    {if $ticket->id_category == $param_id[':ID']}
                    
                        <tr>
                            <td>{$ticket->id_ticket}</td>
                            <td>{$ticket->name}</td>
                            <td>${$ticket->cat_price} ARS</td>
                            <td>{$ticket->date}</td>
                            <td>{$ticket->cat_name|upper}</td>
                            <td class="tdButton">
                                <!--button class="js-btn-showConfirmBuy" data-id="{$ticket->id_ticket}"-->
                                <button class="js-btn-showTicketDetails" data-id="{$ticket->id_ticket}">
                                    <i class="fas fa-plus"></i>
                                </button>
                            </td>
                        </tr>  
                    
                    {/if}
                
                {/foreach}

                </tbody>
            </table>
        </div>
        <div class="showAllTicketBox">
            <a href="user/tickets-all" id="js-btnShowAllTickets">
                Show all tickets
            </a>
        </div>

        </section>
            
    </section>