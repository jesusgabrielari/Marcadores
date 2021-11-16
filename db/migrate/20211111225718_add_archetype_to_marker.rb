class AddArchetypeToMarker < ActiveRecord::Migration[5.2]
  def change
    add_reference :markers, :archetype, foreign_key: true
  end
end
