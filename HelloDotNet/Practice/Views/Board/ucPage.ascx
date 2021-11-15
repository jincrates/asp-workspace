<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucPage.ascx.cs" Inherits="HelloDotNet.Practice.Views.Board.ucPage" %>
<script type="text/javascript">
    $(document).ready(function () {

    });
</script>
<div class="">
    <button type="button" id="preEnd" class="first"><<</button>
    <button type="button" id="pre" class="prev"><</button>

    <span id="spPage">
        <asp:Repeater ID="rptPage" runat="server">
            <ItemTemplate>
                <a class="" id=""></a>
            </ItemTemplate>
        </asp:Repeater>
    </span>
    <asp:HiddenField ID="hdnPageCnt" runat="server" />
    <asp:HiddenField ID="hdnBtnPageCnt" runat="server" />
    <button type="button" id="next" class="next">></button>
	<button type="button" id="nextEnd" class="last">>></button>
</div>