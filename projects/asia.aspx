<%@ Page Language="VB" MasterPageFile="~/website.master" AutoEventWireup="false"
    CodeFile="asia.aspx.vb" Inherits="_Default" Title="Asia Projects - HPF Energy Services - Total Support for all your Pipeline Product requirements from the highest of Quality Sources." %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="description" content="HPF Energy Services is a worldwide supplier of pipe, fittings, flanges with the highest levels of quality and service." />
    <meta name="keywords" content="pipe, flange, fitting, carbon steel, stainless steel, alloy steel, high yield, molybdenum steel, duplex, ferric alloy, super duplex, ASTM, API, A106B, A333, 5LB, 5L X42, 5l X52, A335, UNS 31254, A312, S31803, A234 WPB, A420 WPL6, MSS SP-75, A403, ANSI, A694, A105, A105N, UNS 31803, A182, LF2, HPF, HPF Energy Services, A403, A350, A312, low temperature steel, top-side fabrication, FPSO, skid mounted, module, process plant, engineering, EPC contractor, oil & gas, spool, isometric, oilfield equipment, control systems, mechanical, structural, installation, pipework, onshore, offshore, petrochemical, chemical, pharmaceutical, power generation, pressure vessel, heat exchanger, construction, LNG, LPG, refinery, compressor station, flowline, platform, spar, piping bulks" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--START banner -->
    <div id="banner">
        <img src="~/images/projects.jpg" width="960" height="271" alt="Products" runat="server"
            id="imgBw" />
    </div>
    <!--END banner -->
    <!--START mainWrapper -->
    <div id="mainWrapper">
        <!--START subNav -->
        <!-- InstanceBeginEditable name="SubNav" -->
        <div id="subNav">
            <hpf:ourProjects ID="projects" runat="server" />
        </div>
        <!--END subNav -->
        <!--START homeLinks -->
        <div id="content">
            <h1>
                [3.2] PROJECTS - ASIA</h1>
            <p>
                Over the last 20 years HPF Energy Services has supplied the complete range of pipeline
                components to most areas of the world.</p>
            <div class="projectWrapper">
                <div id="contentFormProjects">
                    <h2>
                        Projects - Asia Region
                    </h2>
                    <asp:UpdatePanel ID="upProjects" runat="server">
                        <ContentTemplate>
                            <div id="contentFormFilters">
                                <p>
                                    <asp:DropDownList ID="ddlLocation" runat="server" DataSourceID="accDSRegion" AppendDataBoundItems="true"
                                        DataTextField="Location" DataValueField="Location" AutoPostBack="true">
                                        <asp:ListItem Text="-- Select Country --" Value="" />
                                    </asp:DropDownList>
                                </p>
                                <p>
                                    <asp:DropDownList ID="ddlOrderBy" runat="server" AutoPostBack="true">
                                        <asp:ListItem Text="-- Order By --" Value="Region" />
                                        <asp:ListItem Text="Contractor" Value="Contractor" />
                                        <asp:ListItem Text="Country" Value="Location" />
                                        <asp:ListItem Text="Project Name" Value="Title" />
                                        <asp:ListItem Text="User/Operator" Value="User/Operator" />
                                    </asp:DropDownList>
                                </p>
                            </div>
                            <asp:Repeater ID="rptProjects" runat="server" DataSourceID="accDS">
                                <ItemTemplate>
                                    <h3 style="margin-top: 20px;">
                                        <asp:Literal ID="litTitle" runat="server" Text='<%# Eval("Title") %>' /><a style="float: right;"
                                            class='example10' href='<%# Eval("[ID]", "~/popup.aspx?pid={0}") %>' runat="server"
                                            id="lnkViewBtn" title="">
                                            <img src="~/images/viewBtn.jpg" width="44" height="17" alt="View Project" runat="server"
                                                id="imgViewBtn" /></a>
                                    </h3>
                                    <ul>
                                        <li class="header">User/Operator</li>
                                        <li class="header">Contractor</li>
                                        <li class="header">Project Location</li>
                                    </ul>
                                    <ul>
                                        <li class="info">
                                            <asp:Literal ID="litUO" runat="server" Text='<%# Eval("[User/Operator]") %>' /></li>
                                        <li class="info">
                                            <asp:Literal ID="litContractor" runat="server" Text='<%# Eval("Contractor") %>' /></li>
                                        <li class="info">
                                            <asp:Literal ID="litProjectLocation" runat="server" Text='<%# Eval("[Location]") %>' /></li>
                                    </ul>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Literal ID="litEmpty" runat="server" Text="<p style='clear:both; float: left; display: block;'><strong>We currently have no projects in this region.</strong></p>"
                                        Visible="false" />
                                </FooterTemplate>
                            </asp:Repeater>
                            <asp:AccessDataSource ID="accDSRegion" DataFile="~/App_Data/hpf_updateable.mdb" runat="server"
                                SelectCommand="SELECT DISTINCT Location FROM contracts WHERE [World Region] = 'Asia' ORDER BY Location asc">
                            </asp:AccessDataSource>
                            <asp:AccessDataSource ID="accDS" DataFile="~/App_Data/hpf_updateable.mdb" runat="server"
                                SelectCommand="SELECT [ID], [Title], [User/Operator], [Contractor], [Location], [World Region], [Products Supplied], [Contract Type], [Complete] FROM contracts WHERE [World Region] = 'Asia' AND [Location] LIKE '%' + @Location + '%'">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlLocation" Name="@Location" Type="String" PropertyName="SelectedValue"
                                        ConvertEmptyStringToNull="false" />
                                </SelectParameters>
                            </asp:AccessDataSource>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        <div id="sidebar">
            <hpf:newsFeed ID="newsFeed" runat="server" />
        </div>
        <!--END homeAbout -->
        <div class="clearfix">
        </div>
    </div>
    <!--END mainWrapper -->
    </div>
</asp:Content>
