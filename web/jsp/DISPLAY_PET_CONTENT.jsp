<%--
  Created by IntelliJ IDEA.
  User: benjaminhowland
  Date: 11/23/15
  Time: 2:17 PM
  To change this template use File | Settings | File Templates.
--%>
<div id="content">
  <div id="posts">
    <div class="post">
      <h2 class="title">Just listing out all the pets</h2>
      <div class="story">
        <p>This page may not work if battle.net is down, sad face.</p>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>

        <script>
          var apikey = "f3ebrq7wgwak8ksbr2r9r9u3ytuga37s";
          var baseUrl = "https://us.api.battle.net/wow";

          // construct the uri with our apikey
          var petSearchUrl = baseUrl + '/pet/?locale=en_US&apikey=' + apikey;

          $(document).ready(function() {

            // send off the query
            $.ajax({
              url: petSearchUrl,
              dataType: "json",
              success: searchCallback
            });
          });

          // callback for when we get back the results
          function searchCallback(data) {
            //$(document.body).append('Found ' + data.total);
            var pets = data.pets;
            $.each(pets, function(index, pet) {
              $(document.body).append('<h4>' + pet.name + '</h4>');
              $(document.body).append('Can this pet battle? '+ pet.canBattle + '<br />');
              $(document.body).append('Type or Family of pet: ' + pet.family + '<br />');
              $(document.body).append('Best used to beat: ' + pet.strongAgainst + '<br />');
              $(document.body).append('Avoid using verus: ' + pet.weakAgainst + '<br />');
              //maybe add in the pet skills
              //use the bliz api for each ability?

            });
          }
          </script>
        </div>
      </div>
  </div>
</div>