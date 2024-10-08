<main>

    <section class="ticketBox" id="ticketsSection">

        <section class="ticketSection">

            {for $i=0 to count($ticketsData[1])-1}
                {foreach from=$ticketsData item=data}
                    {if $data[2]->name == 'promo'}

                        <article class="ticketCardArticle" data-id="{$data[$i]->id_category}">

                            <section class="imgCardSection card-{$i}">
                                <h4>{$data[$i]->name|upper}</h4>
                            </section>

                            <section class="priceCardSection">
                                {if $data[$i]->price == 0}
                                    <h4>Free</h4>
                                {else}
                                    <h4>${$data[$i]->price}</h4>
                                {/if}
                            </section>

                            <section class="stockCardSection">
                                <p>Available: <span> {$countTickets[$i]} </span> tickets</p>
                            </section>

                        </article>

                    {/if}
                {/foreach}
            {/for}

        </section>

</section>