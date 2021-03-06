/* ============================================================
 * bootstrap-dropdown.js v2.3.1
 * http://twitter.github.com/bootstrap/javascript.html#dropdowns
 * ============================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ============================================================ */
!function(o){"use strict";function n(){o(e).each(function(){t(o(this)).removeClass("open")})}function t(n){var t,e=n.attr("data-target");return e||(e=n.attr("href"),e=e&&/#/.test(e)&&e.replace(/.*(?=#[^\s]*$)/,"")),t=e&&o(e),t&&t.length||(t=n.parent()),t}var e="[data-toggle=dropdown]",d=function(n){var t=o(n).on("click.dropdown.data-api",this.toggle);o("html").on("click.dropdown.data-api",function(){t.parent().removeClass("open")})};d.prototype={constructor:d,toggle:function(){var e,d,a=o(this);if(!a.is(".disabled, :disabled"))return e=t(a),d=e.hasClass("open"),n(),d||e.toggleClass("open"),a.focus(),!1},keydown:function(n){var d,a,r,i,p;if(/(38|40|27)/.test(n.keyCode)&&(d=o(this),n.preventDefault(),n.stopPropagation(),!d.is(".disabled, :disabled"))){if(r=t(d),i=r.hasClass("open"),!i||i&&27==n.keyCode)return 27==n.which&&r.find(e).focus(),d.click();a=o("[role=menu] li:not(.divider):visible a",r),a.length&&(p=a.index(a.filter(":focus")),38==n.keyCode&&p>0&&p--,40==n.keyCode&&p<a.length-1&&p++,~p||(p=0),a.eq(p).focus())}}};var a=o.fn.dropdown;o.fn.dropdown=function(n){return this.each(function(){var t=o(this),e=t.data("dropdown");e||t.data("dropdown",e=new d(this)),"string"==typeof n&&e[n].call(t)})},o.fn.dropdown.Constructor=d,o.fn.dropdown.noConflict=function(){return o.fn.dropdown=a,this},o(document).on("click.dropdown.data-api",n).on("click.dropdown.data-api",".dropdown form",function(o){o.stopPropagation()}).on("click.dropdown-menu",function(o){o.stopPropagation()}).on("click.dropdown.data-api",e,d.prototype.toggle).on("keydown.dropdown.data-api",e+", [role=menu]",d.prototype.keydown)}(window.jQuery);