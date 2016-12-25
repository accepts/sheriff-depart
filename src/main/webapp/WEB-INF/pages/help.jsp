<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>

<div class="header">
    <h1>Administrator page</h1>

    <h2>Main page with link's on general crud-operation.</h2>
</div>

<div class="content">






<div class="form-style-2">
    <div class="form-style-2-heading">Provide your information</div>
    <form action="" method="post">

        <label for="field1"><span>Name <span class="required">*</span></span>
            <input type="text" class="input-field" name="field1" value="" /></label>

        <label for="field2"><span>Email <span class="required">*</span></span>
            <input type="text" class="input-field" name="field2" value="" /></label>

        <label><span>Telephone</span><input type="text" class="tel-number-field" name="tel_no_1" value="" maxlength="4" />-<input type="text" class="tel-number-field" name="tel_no_2" value="" maxlength="4"  />-<input type="text" class="tel-number-field" name="tel_no_3" value="" maxlength="10"  /></label>

        <label for="field4"><span>Regarding</span><select name="field4" class="select-field">
            <option value="General Question">General</option>
            <option value="Advertise">Advertisement</option>
            <option value="Partnership">Partnership</option>
        </select></label>

        <label for="field5"><span>Message <span class="required">*</span></span>
            <textarea name="field5" class="textarea-field"></textarea></label>

        <label><span>&nbsp;</span><input type="submit" value="Add Person" /><i class="fa fa-plus-square fa-1x" style="color: white"></i></label>

    </form>
</div>


</div>

</body>
</html>



















