class HomeController < ApplicationController
  def index
    @categories = Category.all
    @archetypes = Archetype.all
    @markers = Marker.all
    @marker_archetype = @markers.map { |marker| marker.archetype_id}
    @marker_archetype_name = @marker_archetype.map {|k, archetype_id| Archetype.find(archetype_id).name}
    @marker_graph = @marker_archetype_name.group(:name).count

  end

end
