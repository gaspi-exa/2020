
<main class="admin-main-main">

    <h1>Welcome admin {$userName}</h1>

    <div class="showAllTicketBox admin-showAllTicketBox">
        <a id="js-btnShowAllTickets">{count($allTickets)} tickets</a>
        <a id="js-btnShowAllTickets">{count($ticketsData[1])} categories</a>
    </div>

    <section class="ticketBox admin-main" id="ticketsSection">
        
        <section class="ticketsTableSection">

<!-- TICKETS -->

            <h2>TICKETS</h2>

            <div class="tableBoxHead">
                <table>
                    <thead>
                        <tr class="trHead">
                            <th>ID</th>
                            <th>Dj name</th>
                            <th>Price</th>
                            <th>Date</th>
                            <th>Category</th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                </table>
            </div>
            <div class="tableBox">

            <table class="tableAdmin1">
                <tbody>
                    {foreach from=$allTickets item=ticket}

                        <tr>
                            <td>{$ticket->id_ticket}</td>
                            <td>{$ticket->name}</td>
                            <td>${$ticket->cat_price} ARS</td>
                            <td>{$ticket->date}</td>
                            <td>{$ticket->cat_name|upper}</td>
                            <td class="tdButton"><button class="js-btn-deleteTicket" data-id="{$ticket->id_ticket}"><i class="fas fa-times"></i></button></td>
                        </tr>      

                    {/foreach}
                </tbody>
            </table>        

            </div>

            <section class="adminSection">

                <label for="">ADD</label>
                <form action="addTicket" class="admin-form" method="POST">
                    <div>
                        <label for="count">Nº</label>
                        <select name="count">
                            {for $i=1 to 100}
                                <option value="{$i}">{$i}</option>
                            {/for}
                        </select>
                        <label for="name">Name</label>
                        <select name="name" id="">
                            <option value="Paul Deep">Paul Deep</option>
                            <option value="Dig Weed">Dig Weed</option>
                            <option value="Latmun">Latmun</option>
                        </select>
                        <label for="date">Date</label>
                        <select name="date" id="">
                            <option value="2020-11-15">2020-11-15</option>
                            <option value="2020-11-05">2020-11-05</option>
                            <option value="2020-11-04">2020-11-04</option>
                            <option value="2020-10-15">2020-10-15</option>
                        </select>
                        <label for="category">Category</label>
                        <select name="category" id="">
                            {for $i=0 to count($ticketsData[1])-1}
                                {foreach from=$ticketsData item=category}
                                    {if $category[1]->id_category == 2} 
                                    <option value="{$category[$i]->id_category}">{$category[$i]->name|upper}</option>
                                    {/if}
                                {/foreach}
                            {/for}
                        </select>                
                    </div>
                    <button type="submit"><i class="fas fa-plus"></i></button>
                </form>

                <label for="">UPDATE</label>
                <form action="updateTicket" class="admin-form" method="POST">
                    <div>
                        <label for="id_ticket">ID</label>
                        <select name="id_ticket">
                        {foreach from=$allTickets item=ticket}
                               <option value="{$ticket->id_ticket}">{$ticket->id_ticket}</option>
                        {/foreach}
                        </select>
                        <label for="name">Name</label>
                        <select name="name">
                            <option value="Paul Deep">Paul Deep</option>
                            <option value="Dig Weed">Dig Weed</option>
                            <option value="Nicholas Van Orton">Nicholas Van Orton</option>
                        </select>
                        <label for="date">Date</label>
                        <select name="date">
                            <option value="2020-11-15">2020-11-15</option>
                            <option value="2020-11-05">2020-11-05</option>
                            <option value="2020-11-04">2020-11-04</option>
                            <option value="2020-10-15">2020-10-15</option>
                        </select>
                        <label for="category">Category</label>
                        <select name="category">
                            {for $i=0 to count($ticketsData[1])-1}
                                {foreach from=$ticketsData item=category}
                                    {if $category[1]->id_category == 2} 
                                    <option value="{$i+1}">{$category[$i]->name|upper}</option>
                                    {/if}
                                {/foreach}
                            {/for}
                        </select>
                    </div>
                    <button type="submit"><i class="fas fa-check"></i></button>
                </form>

            </section>

<!-- CATEGORIES -->

            <h2>CATEGORIES</h2>

            <div class="tableBoxHead">
                <table>
                    <thead>
                        <tr class="trHead">
                            <th>ID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                </table>
            </div>
            <div class="tableBox">
                <table>
                    <tbody>

                    {for $i=0 to count($ticketsData[1])-1}
                        {foreach from=$ticketsData item=category}
                            {if $category[1]->id_category == 2}
                        
                                <tr>
                                    <td>{$category[$i]->id_category}</td>
                                    <td>{$category[$i]->name|upper}</td>
                                    <td>${$category[$i]->price} ARS</td>
                                    <td class="tdButton">
                                        <button class="js-btn-deleteCategory" data-id="{$category[$i]->id_category}">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </td>
                                </tr>
                        
                            {/if}
                        {/foreach}
                    {/for}

                    </tbody>
                </table>
            </div>

            <section class="adminSection">
                <label for="">ADD</label>
                <form action="addCategory" class="admin-form" method="POST">
                    <div>
                        <label for="">Name</label>
                        
                        <select name="name">
                            <option value="vip">VIP</option>
                            <option value="popular">Popular</option>
                            <option value="promo">Promo</option>
                            <option value="sale">Sale</option>
                        </select>
                        <label for="">Price</label>
                        <select name="price">
                            {for $i=0 to 20}
                                <option value="{$i*50}">${$i*50} ARS</option>
                            {/for}
                        </select>
                        
                        <input name="id_category" type="number" value="{count($ticketsData[1])+1}" class="js-show-contain">  

                    </div>
                    <button type="submit"><i class="fas fa-plus"></i></button>
                </form>

                <label for="">UPDATE</label>
                <form action="updateCategory" class="admin-form" method="POST">
                    <div>

                        <label for="id_category">ID</label>
                        <select name="id_category">
                            {for $i=0 to count($ticketsData[1])-1}
                                {foreach from=$ticketsData item=category}
                                    {if $category[1]->id_category == 2} 
                                        <option value="{$category[$i]->id_category}">{$category[$i]->id_category}</option>
                                    {/if}
                                {/foreach}
                            {/for}
                        </select>

                        <label for="name">Name</label>
                        <select name="name">
                            {for $i=0 to count($ticketsData[1])-1}
                                {foreach from=$ticketsData item=category}
                                    {if $category[1]->id_category == 2} 
                                        <option value="{$category[$i]->name}">{$category[$i]->name|upper}</option>
                                    {/if}
                                {/foreach}
                            {/for}
                        </select>

                        <label for="price">Price</label>
                        <select name="price">
                            {for $i=0 to 20}
                                <option value="{$i*50}">${$i*50} ARS</option>
                            {/for}
                        </select> 

                    </div>
                    <button type="submit" id="js-btn-updateCategory"><i class="fas fa-check"></i></button>
                </form>

            </section>

<!-- USERS -->

            <h2>USERS</h2>

            <div class="tableBoxHead">
                <table>
                    <thead>
                        <tr class="trHead">
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Clearence</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$allUsers item=user}
                            <tr>
                                <td>{$user->user_id}</td>
                                <td>{$user->name|upper}</td>
                                <td>{$user->email}</td>
                                <td>{$user->clearence}</td>
                                <td class="tdButton">
                                    <button class="js-btn-deleteUser" data-id="{$user->user_id}"><i class="fas fa-times"></i></button>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>

            <section class="adminSection">
                <label for="">UPDATE</label>
                <form action="updateUser" class="admin-form" method="POST">
                    <div>

                        <label for="user_id">Name</label>
                        <select name="user_id">
                            {foreach from=$allUsers item=user}
                                <option value="{$user->user_id}">{$user->name}</option>
                            {/foreach}
                        </select>

                        <label for="clearence">Clearence</label>
                        <select name="clearence">
                            <option value="admin">admin</option>
                            <option value="null">null</option>
                        </select>

                    </div>
                    <button type="submit" id="js-btn-updateUser"><i class="fas fa-check"></i></button>
                </form>

            </section>

        </section>

    </section>

</main>