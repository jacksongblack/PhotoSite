/**
 * Created with JetBrains RubyMine.
 * User: jack
 * Date: 13-8-30
 * Time: 下午3:49
 * To change this template use File | Settings | File Templates.
 */
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
function show ($) {
    // we only want these styles applied when javascript is enabled
    $('div.content').css('display', 'block');
    // initially set opacity on thumbs and add additional styling for hover effect on thumbs
    var onMouseOutOpacity = 0.67;
    $('#thumbs ul.thumbs li, div.navigation a.pageLink').opacityrollover({
        mouseOutOpacity: onMouseOutOpacity,
        mouseOverOpacity: 1.0,
        fadeSpeed: 'fast',
        exemptionSelector: '.selected'
    });
    // initialize advanced galleriffic gallery
    var gallery = $('#thumbs').galleriffic({
        delay: 3500,
        numThumbs: 10,
        preloadAhead: 10,
        enableTopPager: false,
        enableBottomPager: false,
        imageContainerSel: '#slideshow',
        controlsContainerSel: '#controls',
        captionContainerSel: '#caption',
        loadingContainerSel: '#loading',
        renderSSControls: true,
        renderNavControls: true,
        playLinkText: '播幻幻灯片',
        pauseLinkText: '暂停幻灯片',
        prevLinkText: '&lsaquo; 上一张',
        nextLinkText: '下一张 &rsaquo;',
        nextPageLinkText: '下一页 &rsaquo;',
        prevPageLinkText: '&lsaquo; 上一页',
        enableHistory: true,
        autoStart: false,
        syncTransitions: true,
        defaultTransitionDuration: 900,
        onSlideChange: function (prevIndex, nextIndex) {
            // 'this' refers to the gallery, which is an extension of $('#thumbs')
            this.find('ul.thumbs').children()
                .eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
                .eq(nextIndex).fadeTo('fast', 1.0);

            // update the photo index display
            this.$captionContainer.find('div.photo-index')
                .html('Photo ' + (nextIndex + 1) + ' of ' + this.data.length);
        },
        onPageTransitionOut: function (callback) {
            this.fadeTo('fast', 0.0, callback);
        },
        onPageTransitionIn: function () {
            var prevPageLink = this.find('a.prev').css('visibility', 'hidden');
            var nextPageLink = this.find('a.next').css('visibility', 'hidden');
            // show appropriate next / prev page links
            if (this.displayedPage > 0)
                prevPageLink.css('visibility', 'visible');
            var lastPage = this.getNumPages() - 1;
            if (this.displayedPage < lastPage)
                nextPageLink.css('visibility', 'visible');
            this.fadeTo('fast', 1.0);
        }
    });
    // event handlers for custom next / prev page links
    gallery.find('a.prev').click(function (e) {
        gallery.previousPage();
        e.preventDefault();
    });
    gallery.find('a.next').click(function (e) {
        gallery.nextPage();
        e.preventDefault();
    });
};