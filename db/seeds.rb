
Stadium.destroy_all
Team.destroy_all
Game.destroy_all



atl = Stadium.find_or_create_by(name: "Mercedes-Benz Stadium", address: "Dribling Alley", capacity: 82000)
chi = Stadium.find_or_create_by(name: "Seat-Geek Stadium", address: "Soccer Avenue", capacity: 20000)
lan = Stadium.find_or_create_by(name: "Dignity-Health-Park", address:"Nutmeg Road", capacity: 27000)
phi = Stadium.find_or_create_by(name: "Subaru-Park", address: "Panenca Lane", capacity: 18500)
col = Stadium.find_or_create_by(name: "Mapfre Stadium", address: "Golazo Highway", capacity: 20145)

team_AtlantaUnited = Team.find_or_create_by(name: "Atlanta United")
team_ChicagoFire = Team.find_or_create_by(name: "Chicago Fire")
team_LAGalaxy = Team.find_or_create_by(name: "LA Galaxy")
team_PhiladelphiaUnion = Team.find_or_create_by(name: "Philadelphia Union")
team_ColumbusCrew = Team.find_or_create_by(name: "Columbus Crew")


game_1 = Game.find_or_create_by(team_id: team_AtlantaUnited.id, stadium_id: atl.id)
game_2 = Game.find_or_create_by(team_id: team_ChicagoFire.id, stadium_id: chi.id)
game_3 = Game.find_or_create_by(team_id: team_LAGalaxy.id, stadium_id: lan.id)
game_4 = Game.find_or_create_by(team_id: team_PhiladelphiaUnion.id, stadium_id: phi.id)
game_5 = Game.find_or_create_by(team_id: team_ColumbusCrew.id, stadium_id: col.id)
binding.pry