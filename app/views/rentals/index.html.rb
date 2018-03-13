<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Size</th>
            <th>Price</th>
            <th>Color</th>
            <th>Amount</th>
            <th>Action</th>
        </tr>
    </thead>
    <%= link_to  "new ", new_rental_path %>
        <tbody>
            <% @rentals.each do |rental| %>
                <tr>
                    <td>
                        <%= rental.name %>
                    </td>
                    <td>
                        <%= rental.size %>
                    </td>
                    <td>
                        <%= rental.price %>
                    </td>
                    <td>
                        <%= rental.color %>
                    </td>
                    <td>
                        <%= rental.amount %>
                    </td>
                    <td>
                        <%= link_to  "show  ", rental_path(rental.id) %>
                    </td>
                </tr>
                <% end %>
        </tbody>
</table>