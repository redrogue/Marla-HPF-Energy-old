<%@ Page Language="VB" MasterPageFile="~/website.master" AutoEventWireup="false"
    CodeFile="manufacturing-with-precision.aspx.vb" Inherits="_Default" Title="Manufacturing with precision - HPF Energy Services - Total Support for all your Pipeline Product requirements from the highest of Quality Sources." %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<meta name="description" content="HPF Energy Services is a worldwide supplier of pipe, fittings, flanges with the highest levels of quality and service." />
<meta name="keywords" content="pipe, flange, fitting, carbon steel, stainless steel, alloy steel, high yield, molybdenum steel, duplex, ferric alloy, super duplex, ASTM, API, A106B, A333, 5LB, 5L X42, 5l X52, A335, UNS 31254, A312, S31803, A234 WPB, A420 WPL6, MSS SP-75, A403, ANSI, A694, A105, A105N, UNS 31803, A182, LF2, HPF, HPF Energy Services, A403, A350, A312, low temperature steel, top-side fabrication, FPSO, skid mounted, module, process plant, engineering, EPC contractor, oil & gas, spool, isometric, oilfield equipment, control systems, mechanical, structural, installation, pipework, onshore, offshore, petrochemical, chemical, pharmaceutical, power generation, pressure vessel, heat exchanger, construction, LNG, LPG, refinery, compressor station, flowline, platform, spar, piping bulks" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--START banner -->
    <div id="banner">
        <img src="~/services/images/manufacturingPrecision.jpg" width="960" height="271" alt="Products"
            runat="server" id="imgBw" />
    </div>
    <!--END banner -->
    <!--START mainWrapper -->
    <div id="mainWrapper">
        <!--START subNav -->
        <!-- InstanceBeginEditable name="SubNav" -->
        <div id="subNav">
            <h2 class="productIcon">
                SERVICES</h2>
            <ul>
                <li><a href="~/services/supply-chain-management.html" runat="server" id="lnkChain">&nbsp;&raquo;
                    Supply Chain Management</a></li>
                <li><a href="~/services/ensuring-seamless-service.html" runat="server" id="lnkSeam">
                    &nbsp;&raquo; Ensuring a Seamless Service</a></li>
                <li class="current"><a href="~/services/manufacturing-with-precision.html" runat="server"
                    id="lnkMan">&nbsp;&raquo; Manufacturing with Precision</a></li>
                <li><a href="~/services/continous-improvement.html" runat="server" id="lnkImp">&nbsp;&raquo;
                    Continous Improvement</a></li>
                <li><a href="~/services/working-with-us.html" runat="server" id="lnkUs">&nbsp;&raquo;
                    Working with Us</a></li>
            </ul>
             <div class="clearfix">
            </div>
            
       
        </div>
        <!--END subNav -->
        <!--START homeLinks -->
        <div id="content">
            <h1>
              [2.3]  MANUFACTURING WITH PRECISION</h1>
            <p>
                HPF's machining centre is fully equipped to offer precision engineering solutions
                including specials.</p>
            <p>
                We use the latest CNC production machinery to finish our extensive stocks of raw
                forgings and modify existing stocks to each customer's specific requirements.</p>
            <p>
                Our range of in-house testing procedures includes magnetic particle examination,
                chemical analysis, spectrotest JR, ultrasonic thickness metering utilising Sonagauge
                II 5MHz transducers and dye penetrant testing.</p>
        </div>
        <div id="sidebar">
            <!--<img src="~/products/images/branch-sideImg.jpg" width="211" height="191" alt="Products"
                runat="server" id="imgLp" />-->
            
            <hpf:newsFeed ID="newsFeed" runat="server" />
            <hpf:ourProjects ID="projects" runat="server" />
        </div>
        <!--END homeAbout -->
        <div class="clearfix">
        </div>
    </div>
    <!--END mainWrapper -->
</asp:Content>
