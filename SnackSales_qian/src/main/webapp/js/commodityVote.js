/********************************************************************************
** auth： luojianguang
** date： 2015/5/19 15:09:12
** desc： 商品评价相关
** Ver.:  V1.0.0
*********************************************************************************/

var CommodityVote = (function ($) {
    return {
        init: function (args) {
            this.options = $.extend(true, {}, { userId: '' }, args);
            this.bindEvent();
            $('.commodityVoteList').click();
            util.Upload.init({
                usage: YGUpload.UPLOAD_USAGE.THUMBNAIL,
                uploadMaxNum: 3,
                userId: this.options.userId,
                fileUploadError: function () {
                },
                fileUploadSuccess: function (usage, tag, file) {
                    var json = $.parseJSON(file);
                    //var scr = json.FileURL;
                    var scr = json.Thumbs.W;
                    //上传插件有Bug，在弹出的上传框上第二次点上传，json.Thumbs不返回数据
                    if (typeof(scr) == 'undefined') {
                        scr = json.FileURL;
                    }
                    var pictureId = json.FileId;
                    var html = '<div class="pic-upload-img"><a href="javascript:void(0)"><img src="' + json.FileURL + '" data-src="' + scr + '" data-id="' + pictureId + '" width="55" height="55" /></a></div>';
                    //只能上传三张
                    var commentBox = $("#" + tag).closest('.comment-box');
                    var count = commentBox.find('.pic-upload-img').length;
                    if (count >= 2) {
                        commentBox.find('.pic-upload-btn').hide();
                        var queuedCount = YGUpload.instance.swfUpload.getStats().files_queued;
                        if (queuedCount > 0) {
                            util.Dialog.alert('最多只能上传3张图片');
                        }
                        YGUpload.instance.ygCancelQueue();
                        YGUpload.instance.hideDialog();
                    }
                    if (count <= 2) {
                        $("#" + tag).closest('.pic-upload-btn').before(html);
                    }
                }
            });
        },
        bindEvent: function () {
            //tab
            $('.myyg-tab span').click(function() {
                $(this).addClass('on').siblings('span').removeClass('on');
                $('.myyg-tab-con:eq(' + $(this).index() + ')').show().siblings('.myyg-tab-con').hide();
            });
            
            $(document).delegate('.pic-upload-img', 'mouseover', function () {
                $(this).addClass("pic-upload-bigimg");
            });
            $(document).delegate('.pic-upload-img', 'mouseout', function () {
                $(this).removeClass("pic-upload-bigimg");
            });
            $(document).delegate('.comment_score .stars b', 'mouseover', function () {
                $(this).addClass('hover').prevAll('b').addClass('hover');
                $(this).nextAll('b').removeClass('hover');
            });
            $(document).delegate('.comment_score .stars b', 'mouseout', function () {
                $(this).removeClass('hover').prevAll('b').removeClass('hover');
            });
            $(document).delegate('.comment_score .stars b', 'click', function () {
                $(this).addClass('cur').prevAll('b').addClass('cur');
                $(this).nextAll('b').removeClass('cur');
            });

            //商品评价
            $(document).delegate('.comments-list .pro-info .btn-wgn', 'click', function () {
                var commentBox = $(this).parents('.comments-list li').find('.comment-box');
                var solidComments = commentBox.data('solidComments') || false;
                if (solidComments == false) {
                    commentBox.slideDown('slow');
                    $(this).text('收起评论');
                } else {
                    commentBox.slideUp('slow');
                    $(this).text('发表评论');
                }
                commentBox.data('solidComments', !solidComments);
            });

            $(document).delegate('.pic-upload-btn', 'click', function () {
                var id = $(this).find('input[type=button]').eq(0).attr('id');
                util.Upload.upload(this, id);
            });

            $(document).delegate('.comment-input textarea', 'keyup', function () {
                var value = $.trim(this.value);
                var len = value.length;
                if (len > 200) {
                    this.value = value.substr(0, 200);
                    len = 200;
                }
                $('.comment-input .LimiterMsg b').html(len);
            });

            //待评论列表
            $(document).delegate('.commodityVoteList', 'click', function () {
                util.Pager.init({
                    Url: '/Trade/GetCommodityList',
                    Pager: 'j_pages',
                    Container: '.comments-list ul',
                    HandlebarID: '#commodityVoteRow'
                });
            });
            //已评论列表
            $(document).delegate('.commodityVoteList1', 'click', function () {
                util.Pager.init({
                    Url: '/Trade/GetCommodityList',
                    Pager: 'j_pages1',
                    Container: '#commodityVoteList1 ul',
                    HandlebarID: '#commodityVoteRow1',
                    state: 1
                });
            });

            //发表
            $(document).delegate('.comment-btn .btn-gn', 'click', function () {
                var commentBox = $(this).closest('.comment-box');
                var productEvaluate = commentBox.find('.ProductEvaluate .stars .cur').length;
                var deliveryEvaluate = commentBox.find('.DeliveryEvaluate .stars .cur').length;
                var serviceEvaluate = commentBox.find('.ServiceEvaluate .stars .cur').length;
                var buyEvaluate = commentBox.find('.BuyEvaluate .stars .cur').length;
                var commentContent = $.trim(commentBox.find('.comment-input textarea').eq(0).val()).replace(/<\/?[^>]*>/g,'');

                var commentEvaluateError = commentBox.find('.CommentEvaluate');
                commentEvaluateError.hide();
                var commentContentError = commentBox.find('.CommentContent');
                commentContentError.hide();
                if (productEvaluate == 0) {
                    commentEvaluateError.html('请选择商品质量满意度。');
                    commentEvaluateError.show();
                    return;
                }
                if (deliveryEvaluate == 0) {
                    commentEvaluateError.html('请选择配送速度满意度。');
                    commentEvaluateError.show();
                    return;
                }
                if (serviceEvaluate == 0) {
                    commentEvaluateError.html('请选择服务质量满意度。');
                    commentEvaluateError.show();
                    return;
                }
                
                if (commentContent == '') {
                    commentContentError.html('请输入评论');
                    commentContentError.show();
                    return;
                }
                if (commentContent.length > 200) {
                    commentContentError.html('评论内容长度不能超过200');
                    commentContentError.show();
                    return;
                }
                var isAnonymous = commentBox.find('.comment-btn input[type=checkbox]').eq(0).prop('checked');
                var commodityId = commentBox.find('input[name=CommodityId]').val();
                var orderId = commentBox.find('input[name=OrderId]').val();
                var orderCreateTime = commentBox.find('input[name=OrderCreateTime]').val();
                var picList = [];
                commentBox.find('.pic-upload-img img').each(function () {
                    var pictrueId = $(this).data('id');
                    var pictrueUrl = $(this).data('src');
                    picList.push({
                        PictrueId: pictrueId,
                        PictrueUrl: pictrueUrl
                    });
                });
                var data = {
                    ProductEvaluate: productEvaluate,
                    DeliveryEvaluate: deliveryEvaluate,
                    ServiceEvaluate: serviceEvaluate,
                    BuyEvaluate: buyEvaluate,
                    CommentContent: commentContent,
                    IsAnonymous: isAnonymous,
                    CommodityId: commodityId,
                    OrderId: orderId,
                    CommentPictrues: picList,
                    VoteDate: orderCreateTime
                };
                util.Ajax.post('/Trade/AddCommodity', data, function (result) {
                    if (result.IsSuccess) {
                        window.location.reload();
                    } else {
                        util.Dialog.alert(result.ErrorMsg);
                    }
                });
            });
        }
    };
})(jQuery);