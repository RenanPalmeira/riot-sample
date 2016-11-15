<fl-list-users>
    <script>
        // http://www.tutorialsavvy.com/2015/05/getting-started-with-riot-js-part4.html/
        var self = this
        this.planets = []

        this.on('mount', function() {
            $.get({
                url: 'http://swapi.co/api/planets/?limit=3',
            }).done(function(data) {
                self.planets = data.results
                self.update(this.planets)
            })
        });
    </script>

    <table class="table">
        <thead class="thead-inverse">
            <tr>
                <th>#</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Username</th>
            </tr>
        </thead>
        <tbody>
            <tr each="{ planet, index in planets }">
                <td>
                    { index + 1 }
                </td>
                <td>
                    { planet.name }
                </td>
                <td>
                    { planet.climate }
                </td>
                <td>
                    { planet.terrain }
                </td>
            </tr>
        </tbody>
    </table>
</fl-list-users>