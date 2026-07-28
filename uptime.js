/* TIA — self-computing production counter
 *
 * D133. The site had said "70+ days in production" for sixty-three days. That
 * understated the record by half, and worse: a number that stops moving reads as
 * an abandoned site, not a modest one. So the number is no longer written down.
 * It is derived, once per page load, from a single fixed date.
 *
 * Two rules this follows:
 *   1. Nothing here invents a figure. PRODUCTION_START is the project's own
 *      day-zero, the same epoch its clock uses. Change that constant and every
 *      number on the site moves together.
 *   2. Crawlers do not run JavaScript. So every element carries a static
 *      fallback in its own markup, and meta/og text is worded so it never ages
 *      ("since March 2026") rather than relying on this file.
 *
 * Usage:
 *   <span data-uptime="days">133</span>       -> 133
 *   <span data-uptime="days-plus">130+</span> -> 130+   (rounded down to 10)
 *   <span data-uptime="months">4</span>       -> 4
 */
(function () {
  "use strict";

  var PRODUCTION_START = "2026-03-17T00:00:00Z";

  function daysSince(iso) {
    var start = new Date(iso).getTime();
    if (isNaN(start)) return null;
    var days = Math.floor((Date.now() - start) / 86400000);
    return days > 0 ? days : null;   // never render a negative or zero count
  }

  function render() {
    var days = daysSince(PRODUCTION_START);
    if (days === null) return;       // bad constant -> leave the fallback alone

    var values = {
      "days": String(days),
      "days-plus": String(Math.floor(days / 10) * 10) + "+",
      "months": String(Math.floor(days / 30.44))
    };

    var nodes = document.querySelectorAll("[data-uptime]");
    for (var i = 0; i < nodes.length; i++) {
      var key = nodes[i].getAttribute("data-uptime");
      if (values.hasOwnProperty(key)) nodes[i].textContent = values[key];
    }
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", render);
  } else {
    render();
  }
})();
