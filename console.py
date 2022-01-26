import pdb 
from models.album import Album
import repositories.album_repository as album_repository  

album1 = Album("WoW", "plain")
album_repository.save(album1)
album2 = Album("OK Computer", "rock")
album_repository.save(album2)

result = album_repository.select_all()



for album in result:
    print(album.__dict__)

pdb.set_trace()