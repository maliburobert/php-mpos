      <form action="{$smarty.server.SCRIPT_NAME}?page=login" method="post" id="loginForm" data-ajax="false">
        <input type="hidden" name="to" value="{($smarty.request.to|default:"{$smarty.server.SCRIPT_NAME}?page=dashboard")|escape}" />
        {if $GLOBAL.csrf.enabled && $GLOBAL.csrf.forms.login}<input type="hidden" name="ctoken" value="{$CTOKEN}" />{/if}
        <p><label for="userForm">Email</label><input type="text" name="username" value="" id="userForm"></p>
        <p><label for="passForm">Password</label><input type="password" name="password" value="" id="passForm"></p>
        <center>{nocache}{$RECAPTCHA|default:"" nofilter}{/nocache}</center>
        <center><p><input type="submit" value="Login"></p></center>
      </form>
      <center><p><a href="{$smarty.server.SCRIPT_NAME}?page=password"><font size="1">Forgot your password?</font></a></p></center>
