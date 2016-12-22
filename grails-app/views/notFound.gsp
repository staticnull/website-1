<!doctype html>
<html>
    <head>
        <title>Page Not Found</title>
        <meta name="layout" content="main">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
<body>
    <br/>
    <div class="row">
        <div class="col-sm-3 col-xs-hidden"></div>
        <div class="col-sm-6 col-xs-12">
        <pre>
pages.find { it == "${request?.forwardURI?.encodeAsHTML()}" } == null
// Page Not Found (404)</pre>
        </div>
    </div>
</body>
</html>
