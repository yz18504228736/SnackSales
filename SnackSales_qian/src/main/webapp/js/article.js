
var Article = (function ($) {
    return {
        init: function () {
            this.bindEvent();
        },
        bindEvent: function () {
            $(document).delegate('.ArticleVote', 'click', function () {
                var id = $(this).data('id');
                var that = $(this);
                util.Ajax.post('/Article/ArticleVote', { id: id }, function (result) {
                    if (result.IsSuccess) {
                        var count = parseInt(that.find('.VoteCount').eq(0).html());
                        that.find('.VoteCount').html(count + 1);
                    } else {
                        util.Dialog.alert(result.ErrorMsg);
                    }
                });
            });
        }
    };
})(jQuery);