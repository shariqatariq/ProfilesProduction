﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditPropertyList.ascx.cs"
    Inherits="Profiles.Edit.Modules.EditPropertyList.EditPropertyList" %>
<asp:Literal runat="server" ID="litBackLink"></asp:Literal>

<script type="text/javascript">
    //Edit Page link hack
    var currPath = window.location.pathname;
    var profileLink = currPath.replace("edit", "display");
    $("h2 :last").wrap("<a href=\'"+ profileLink + "\'></a>");
</script>


<br />
<br />
Below are the types of content that can be included on this profile. Locked items
<asp:Image runat="server" ID="imgLock" />
can be viewed but not edited. To edit information on locked items, please email <a href="mailto:triservices@uams.edu">TRI Services</a>. <br />
Information in the Address section of your profile,
including your titles, affiliations, telephone, fax, and email are managed by your
Human Resources office; however, you may upload a custom photo to your profile using
this website.
<br />
<br />
<asp:Repeater runat="server" ID="repPropertyGroups" OnItemDataBound="repPropertyGroups_OnItemDataBound">
    <ItemTemplate>
        <asp:GridView runat="server" ID="grdSecurityGroups" AutoGenerateColumns="false" OnRowDataBound="grdSecurityGroups_OnDataBound"
            Width="100%">
            <HeaderStyle BorderStyle="None" CssClass="EditMenuTopRow" />
            <RowStyle BorderColor="#ccc" Width="1px" VerticalAlign="Middle" />
            <AlternatingRowStyle CssClass="evenRow" />
            <Columns>
                <asp:BoundField HeaderStyle-CssClass="padding" ItemStyle-CssClass="padding" HeaderStyle-HorizontalAlign="Left"
                    ItemStyle-HorizontalAlign="Left" DataField="item" HeaderText="Item" />
                <asp:TemplateField HeaderStyle-HorizontalAlign="Center"
                    HeaderText="Items" >
                    <ItemTemplate>
                        <asp:Image runat="server" ID="imgBlank" Visible="false" ImageUrl="~/Edit/Images/icons_blank.gif" />
                        <asp:Label runat="server" ID="lblItems"></asp:Label>
                        <asp:Image runat="server" ID="imgLock" Visible="false" ImageUrl="~/Edit/Images/icons_lock.gif" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" 
                    HeaderText="Privacy" >
                    <ItemTemplate>
                        <asp:HiddenField ID="hfPropertyURI" runat="server" />
                        <asp:DropDownList AutoPostBack="true" Visible="false" OnSelectedIndexChanged="updateSecurity" runat="server"
                            ID="ddlPrivacySettings">
                        </asp:DropDownList>
                        <asp:Literal runat="server" ID="litSetting"></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
    </ItemTemplate>
</asp:Repeater>
<div style="display:block">
<%--
<table width='100%'>
    <tr>
        <td>
--%>            <table width="100%">
                <tr>
                    <td>
                        <h2>Privacy Levels</h2>
                    </td>
                    <td align="right">
                        <%-- <b>Set All</b>&nbsp;
                            <asp:DropDownList runat="server" ID="ddlSetAll" AutoPostBack="true" OnSelectedIndexChanged="ddlSetAll_IndexChanged">
                            </asp:DropDownList>--%>
                    </td>
                </tr>
            </table>
            <div style='border: solid 1px #ccc; margin-bottom: 2px; width: 100%'>
                <asp:Literal runat="server" ID="litSecurityKey"></asp:Literal>
            </div>
<%--        </td>
    </tr>
</table>
--%>
</div>
<div style="clear:left">
  <br />
  <h3>Add-ons:</h3>
</div>
<%-- Profiles OpenSocial Extension by UCSF --%>    
<asp:Panel ID="pnlOpenSocial" runat="server" Visible="false">
    <div id="gadgets-edit" class="gadgets-gadget-parent"></div>
</asp:Panel>