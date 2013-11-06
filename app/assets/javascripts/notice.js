function exist(id) {
    if ($("#" + id).length > 0) {
        return true;
    }
    else {
        return false;
    }
}
function showTips(tips, height, time) {
    var windowWidth = document.documentElement.clientWidth;
    var tipsDiv = '<div class="tipsClass">' + tips + '</div>';
    $('body').append(tipsDiv);
    $('div.tipsClass').css({
        'top': height + 'px',
        'left': (windowWidth / 2) + 'px',
        'position': 'absolute',
        'padding': '6px 10px',
        'background': '#8FBC8F',
        'font-size': '12px',
        'margin': '0 auto',
        'text-align': 'center',
        'width': 'auto',
        'z-index': '500',
        'color': '#fff',
        'opacity': '0.8'
    }).show();
    setTimeout(function () {
        $('div.tipsClass').fadeOut();
    }, ( time * 1000 ));
}