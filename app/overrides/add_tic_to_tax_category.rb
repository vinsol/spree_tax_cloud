Deface::Override.new(:virtual_path  => 'spree/admin/tax_categories/_form',
                     :name          => 'add_tic_to_tax_category',
                     :insert_bottom => "[data-hook='admin_tax_category_form_fields']",
                     :text => %q{
                                <div class="five columns">
                                <%= f.field_container :tic do %>
                                  <%= f.label :tic, Spree.t(:tic) %><br>
                                  <%= f.text_field :tic, :class => 'fullwidth' %>
                                <% end %>
                                </div>
                                <%= javascript_include_tag 'tax_cloud/tic_drop_down' %>
                     })



Deface::Override.new(:virtual_path  => 'spree/admin/tax_categories/index',
                     :name          => 'add_tic_column_on_tax_categories_index',
                     :insert_after => "[data-hook='tax_header'] th:eq(3)",
                     :text => %q{
                       <th><%= Spree.t(:tic) %></th>
                     })

Deface::Override.new(:virtual_path  => 'spree/admin/tax_categories/index',
                     :name          => 'show_tic_on_tax_categories_index',
                     :insert_after => "tbody tr td:eq(3)",
                     :text => %q{
                       <td class="align-center"><%= tax_category.tic %></td>
                     })