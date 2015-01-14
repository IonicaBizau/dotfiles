// ==UserScript==
// @name         Ionică Bizău's Client Scripts
// @namespace    http://your.homepage/
// @version      0.1
// @description  This JavaScript file is ran on all websites.
// @author       Ionică Bizău
// @match        */*
// @grant        none
// ==/UserScript==


(function (window) {
    var Hosts = {
        "octicons.github.com": function () {
            var ACTIVE = "navigation-focus";
            $(window).on("keydown", function (e) {
              
              console.log(e.which)
              if (!/^40|38|13$/.test(e.which.toString())) { return; }
              
              var $dropdown = $(".search-results.js-results.is-showing");
              if (!$dropdown.length) { return; }
              var $selected = $("." + ACTIVE, $dropdown);
              S = $selected
              if (!$selected.length) {
                $selected = $(".js-search-result:not(.is-hidden)", $dropdown)[e.which === 40 ? "first" : "last"]();
                $selected.addClass(ACTIVE);
              }
        
              switch (e.which) {
                case 40:
                  var $next = $selected.nextAll(":not(.is-hidden):first");
                  $selected.removeClass(ACTIVE);
                  $next.length
                    ? $next.addClass(ACTIVE)
                    : $(".js-search-result:first:not(.is-hidden)", $dropdown).addClass(ACTIVE)
                    ;
                  break;
                case 38:
                  var $prev = $selected.prevAll(":not(.is-hidden):first");
                  $selected.removeClass(ACTIVE);
                  $prev.length
                  ? $prev.addClass(ACTIVE)
                  : $(".js-search-result:last", $dropdown).addClass(ACTIVE)
                  ;
                  break;
                case 13:
                  window.location = $selected.attr("href");
                  break;
              }
              return false;
            });
        }
    };
    Hosts[location.host] && Hosts[location.host]();
})(window);
