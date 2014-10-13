<#import "template.ftl" as layout>
<@layout.mainLayout active='apikey' bodyClass='apikey'; section>

    <div class="row">
        <div class="col-md-10">
            <h2>Your API Key</h2>
        </div>
        <div class="col-md-2 subtitle">
            <span class="subtitle">All fields required</span>
        </div>
    </div>

    <form action="${url.apikeyUrl}" class="form-horizontal" method="post">
     

        <div class="form-group">
            <div class="col-sm-2 col-md-2">
                <label for="apikey" class="control-label">${rb.apikey}</label>
            </div>

            <div class="col-sm-10 col-md-10">
                <input type="text" class="form-control" id="apikey" name="apikey" readonly value="${apikey.key!''}">
            </div>
        </div>


        <div class="form-group">
            <div id="kc-form-buttons" class="col-md-offset-2 col-md-10 submit">
                <div class="">
                    <button type="submit" class="btn btn-primary btn-lg" name="submitAction" value="Save">Regenerate API Key</button>
                </div>
            </div>
        </div>
    </form>

</@layout.mainLayout>