1. Installer Postgresql sur sa machine
⋅⋅brew install postgresql
⋅⋅brew services start postgresql

2. git clone git@github.com:briceth/miewer.git

3. cd miewer

4. bundle install

5.rails db:create db:migrate

6. Cloudinary
⋅⋅Créer un dossier application.yml
⋅⋅Ouvrir un compte sur cloudinary
⋅⋅Récupérer la clef d'API et la mettre dans le dossier application.YML
..CLOUDINARY_URL: "cloudinary://............."

7. rails s
