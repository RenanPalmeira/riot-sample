<fl-search-box>
    <form class="form-inline float-xs-right">
        <input class="form-control" type="text" placeholder="Search">
        <button type="button" class="btn btn-success">{ name }</button>
    </form>

    <script>
        this.name = 'Search';
        if(opts.name)
        {
            this.name = opts.name;
        }
    </script>

</fl-search-box>