<#assign pageType="tools">
<#include "/common/head.ftl">

<div class="row">
    <div class="col-xs-12">
        <div class="alert alert-success" role="alert">
          <h4 class="alert-heading">We have launched!</h4>
          <p> Hey there! We have launched our brand new codedrills site and have our own online judge now.
          You can visit and start solving at <a href="https://codedrills.io/">codedrills.io</a>.
          This site will remain at this new address <a href="https://recommender.codedrills.io">recommender.codedrills.io</a> and will continue to work as before.
           The old address will redirect here. Write to <a href="mailto:hello@codedrills.io" target="_top">hello@codedrills.io</a> for feedback and concerns </p>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-12">
        <h2> Practice problems recommender </h2>
    </div>
</div>

<div class="row">
    <div class="col-xs-12">
        Analyze your profile on various competitive programming sites and get practice problem recommendations based on your past submissions
    </div>
</div>

<br>

<div class="row">
    <div class="col-xs-12">
        <form method="GET" action="/profile">
            <div class="form-group">
                <label for="handles">
                    <i class="fa fa-users"></i>
                    Enter handle(s) with site prefix
                </label>
                <div class="input-group input-group-lg">
                    <input required pattern = "${handlesRegex}" type="text" class="form-control" id="handles" name="handles" placeholder="Single handle or space separated handles">
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-primary" id="handles-submit">
                            <i class="fa fa-list-ul" id="analyze_icon"></i>
                            Analyze
                        </button>
                    </span>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="row">
    <div class="col-xs-12">
        <h3>
            <small><i class="fa fa-terminal"></i></small>
            Input format
        </h3>
    </div>
</div>
<div id="input-format">
    <#include "/partial/input.ftl">
</div>

<script>
    $(document).ready(function() {
        $("#handles-submit").closest("form").on("submit", function(e) {
            var icon = $("#analyze_icon");
            icon.removeClass("fa-list-ul");
            icon.addClass("fa-spinner fa-spin");
            var button = $("#handles-submit");
            button.prop("disabled", true);
            var html = button.html();
            button.html(html.replace("Analyze", "Analyzing..."));
        });
    });
</script>

<#include "/common/tail.ftl">
