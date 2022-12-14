<h3>Agregar redes sociales por país</h3>

  <div class="field">
    <%= form.fields_for :social_networks, @country.social_networks.build do |builder| %>
      <%# render 'social_networks_fields' %>
      <%= builder.label :url %>
      <%= builder.text_field :url %>
<br />
      <%= builder.label :icon %>
      <%= builder.file_field :icon %>
<br />
      <%= builder.label :description %>
      <%= builder.text_area :description %>
<br />
      <%= builder.label :_destroy %>
      <%= builder.check_box :_destroy %>

      <div class="links">
        <%= link_to_add_association 'add task', form, :social_networks, partial: 'social_networks_fields' %>
      </div>

      <%= link_to_remove_association "remove task", form, class: 'btn btn-primary btn-xs text-white' %>
    <% end %>



video: https://www.youtube.com/watch?v=R2iw5BAKBNA&t=2035s

