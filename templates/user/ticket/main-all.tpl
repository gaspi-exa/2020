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

                    {foreach from=$allTickets item=ticket}    
                        
                        <tr>
                            <td>{$ticket->id_ticket}</td>
                            <td>{$ticket->name}</td>
                            <td>${$ticket->cat_price} ARS</td>
                            <td>{$ticket->date}</td>
                            <td>{$ticket->cat_name|upper}</td>
                            <td class="tdButton">
                                <button class="js-btn-showTicketDetails" data-id="{$ticket->id_ticket}">
                                   <i class="fas fa-plus"></i>
                                </button>
                            </td>
                        </tr>  
                        
                    {/foreach}

                    </tbody>
                </table>
            </div>
            <div class="showAllTicketBox">
                <a id="js-btnShowAllTickets">
                    Available: {count($allTickets)} tickets
                </a>
            </div>

        </section>

    </section>
        
    <!--div class="confirm-buy-box js-show-contain">
        <h2>
            Confirm your purchase
        </h2>
        <button type="submit" class="btn-confirmBuy">
            Buy
        </button>
        <button class="btn-cancelBuy">
            Cancel
        </button>
    </div-->