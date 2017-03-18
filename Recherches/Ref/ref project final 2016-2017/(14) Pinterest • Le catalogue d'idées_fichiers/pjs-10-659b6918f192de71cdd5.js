webpackJsonp([10],{1016:function(e,t,a){"use strict";function s(e){return e&&e.__esModule?e:{"default":e}}function r(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function n(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function o(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}t.__esModule=!0;var l=a(1),p=s(l),u=a(11),i=s(u),c=a(9),d=s(c),y=a(7),m=s(y),f=a(5),h=s(f),g=a(4),T=s(g),b=a(278),v=s(b),P=a(59),E=s(P),N=a(20),_=s(N),S=["Typeahead"],O=function(e){function t(){var a,s,o;r(this,t);for(var l=arguments.length,p=Array(l),u=0;l>u;u++)p[u]=arguments[u];return a=s=n(this,e.call.apply(e,[this].concat(p))),s.handleKeyDown=function(e){var t=void 0,a=s.props.hoverItem,r=s.state.typeaheadSuggestions;return e.keyCode===d["default"].KeyCode.UP&&(t=a?0===r.indexOf(a)?void 0:r[r.indexOf(a)-1]:r[r.length-1]),t},s.handleOnClick=function(e){s.props.onTypeaheadItemSelected(e,s.props.value)},s.handleRemoveRecentQuery=function(e,t){if(e){var a=T["default"].create("TypeaheadClearRecentResource",{query:e});a.callDelete().then(s.props.refreshData());var r=s.props.emptySuggestions.items.slice(),n=r.findIndex(function(e){return e.resultIndex===t});r.splice(n,1),s.props.updateEmptySuggestions(r)}},o=a,n(s,o)}return o(t,e),t.prototype.componentWillReceiveProps=function a(e){e.emptySuggestions&&this.props.emptySuggestions!==e.emptySuggestions&&e.emptySuggestions.items&&this.props.updateEmptySuggestions(e.emptySuggestions.items),E["default"].mark("visible_progress_elapsed_ms",null)},t.prototype.render=function s(){var e=this,t=this.props,a=t.className,s=t.emptySuggestions,r=t.focused,n=t.hoverItem,o=t.typeaheadSuggestions,l=t.value,u=(0,m["default"])(S,a,"typeaheadWithTitles",{open:r}),c=void 0,d=this.props.maxHeight;r&&d&&(c={maxHeight:d,overflowY:"auto"});var y=["query","user","board","recent_query","trending"],f={board:h["default"]._("Boards"),recent_query:h["default"]._("Recent searches"),trending:h["default"]._("Trending ideas"),user:h["default"]._("People")},g=!l&&s&&s.items?s.items:o,T=i["default"].groupBy(g,function(e){return e.type}),b=[],P=0;return y.forEach(function(t){T[t]&&("query"!==t&&(b.push(p["default"].createElement("li",{key:P,onMouseDown:function a(e){e.preventDefault()}},p["default"].createElement("a",{className:"titleItem",style:{cursor:"default",backgroundColor:"inherit"}},p["default"].createElement("span",{className:"typeaheadName"},f[t])))),P+=1),T[t].forEach(function(a){a.resultIndex=a.resultIndex||P;var s=void 0,r={backgroundColor:n===a?"#f1f1f1":"inherit",color:a.color?a.color:""};switch(t){case"query":var o=l.toLowerCase(),u=void 0,i=void 0;0===a.label.indexOf(l)?(u=o,i=a.label.slice(o.length)):i=a.label,s=p["default"].createElement("a",{style:r},p["default"].createElement("span",{className:"typeaheadName"},p["default"].createElement("span",{className:"darkText"},u),p["default"].createElement("span",{className:"lightText"},i)));break;case"user":s=p["default"].createElement("a",{className:"user",style:r},p["default"].createElement("span",{className:"typeaheadImg"},p["default"].createElement("img",{alt:"",role:"presentation",src:a.image_small_url})),p["default"].createElement("span",{className:"typeaheadName"},p["default"].createElement("div",{className:"label"},a.label),p["default"].createElement("div",{className:"subLabel"},a.subLabel)));break;case"board":s=p["default"].createElement("a",{className:"board",style:r},p["default"].createElement("span",{className:"typeaheadImg"},p["default"].createElement("img",{alt:"",role:"presentation",src:a.image_thumbnail_url})),p["default"].createElement("span",{className:"typeaheadName"},p["default"].createElement("div",{className:"label"},a.label),p["default"].createElement("div",{className:"subLabel"},a.subLabel)));break;case"recent_query":s=p["default"].createElement("a",{className:"recentQuery",style:r},p["default"].createElement("span",{className:"remove",onClick:function c(t){t.stopPropagation(),t.preventDefault(),e.handleRemoveRecentQuery(a.label,a.resultIndex)},role:"button"}),p["default"].createElement("span",{className:"typeaheadName"},a.label));break;case"trending":s=p["default"].createElement("a",{className:a.class_name,style:r},p["default"].createElement("span",{className:"typeaheadName"},p["default"].createElement("span",{className:"darkText"},a.label)))}b.push(p["default"].createElement("li",{key:P,onBlur:function d(){},onClick:function y(t){t.stopPropagation(),e.handleOnClick(a)},onFocus:function m(){return e.props.onHover(a)},onMouseDown:function f(e){e.preventDefault()},onMouseOut:function h(e){e.preventDefault()},onMouseOver:function g(){return e.props.onHover(a)},role:"listitem"},s)),P+=1}))}),p["default"].createElement(v["default"],{onTypeaheadSuggestionsChange:this.props.onTypeaheadSuggestionsChange,resourceName:"AdvancedTypeaheadResource",resourceOptions:{pin_scope:this.props.pinScope},allowSearchOnMount:!0,value:l},p["default"].createElement("div",{className:u,onKeyDown:this.handleKeyDown},p["default"].createElement("ul",{className:"results",onBlur:this.props.onTypeaheadMouseOut,onMouseOut:this.props.onTypeaheadMouseOut,style:c},b)))},t}(l.Component);O.propTypes={className:l.PropTypes.string.isRequired,pinScope:l.PropTypes.oneOf(["pins","my_pins","buyable_pins"]).isRequired,emptySuggestions:l.PropTypes.shape({items:l.PropTypes.arrayOf(l.PropTypes.shape({class_name:l.PropTypes.string,label:l.PropTypes.string,query:l.PropTypes.string,type:l.PropTypes.string,url:l.PropTypes.string}))}),focused:l.PropTypes.bool.isRequired,hoverItem:l.PropTypes.shape({class_name:l.PropTypes.string,label:l.PropTypes.string,query:l.PropTypes.string,type:l.PropTypes.string,url:l.PropTypes.string}),maxHeight:l.PropTypes.number,onHover:l.PropTypes.func.isRequired,onTypeaheadItemSelected:l.PropTypes.func.isRequired,onTypeaheadMouseOut:l.PropTypes.func.isRequired,onTypeaheadSuggestionsChange:l.PropTypes.func.isRequired,refreshData:l.PropTypes.func,typeaheadSuggestions:l.PropTypes.arrayOf(l.PropTypes.shape({class_name:l.PropTypes.string,label:l.PropTypes.string,query:l.PropTypes.string,type:l.PropTypes.string,url:l.PropTypes.string})).isRequired,updateEmptySuggestions:l.PropTypes.func.isRequired,value:l.PropTypes.string.isRequired},t["default"]=(0,_["default"])({name:"AdvancedTypeaheadResource",key:"emptySuggestions",options:function R(e){var t=e.pinScope;return{term:"",pin_scope:t}}})(O)}});