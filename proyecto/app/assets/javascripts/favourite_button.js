function like_button_clicked(user_id, document_id) {

        $.ajax({
            type:"GET",
            url:"<%= favourite_button_documents_path %>",
            dataType:"json",
            data: {person_id: person_id, id: document_id},
            success: function(result){
                disable_like_button(result.liked);
                enable_like_count(result.count);
            }
        });
    }

    function disable_like_button(liked) {
        var icon = $('#like_button_icon');
        var icon_class = 'glyphicon glyphicon-heart';
        if (!liked) {
            icon_class += '-empty';
        }
        icon.attr('class', icon_class);
    }

    function enable_like_count(count) {
        var indicator = $('#like_count_indicator');
        indicator.html(count)
    }
