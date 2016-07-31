<%@ page title="Work | Boyga Website Design, Development and Consulting | Omaha, Nebraska" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Work, App_Web_jabpe03d" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
    <link href="App_Files/scripts/jQuery/fancybox/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
<h3>Work</h3>
    <div id="ColumnHolder">
        <div id="Column1">
            <h4>The Union Pizzeria &amp; Sports Bar</h4>
            <a rel="work" href="App_Files/images/work/Union-Sports-Bar.png" title="The Union Pizzeria and Sports Bar<br /><a href='http://www.unionsportsbar.com'>Click Here to Visit UnionSportsBar.com</a>"><img src="App_Files/images/work/thumbs/Union-Sports-Bar-Thumb.png" alt="The Union Pizzeria and Sports Bar" border="0" /></a>
        
            <h4>Gretna Baseball</h4>
            <a rel="work" href="App_Files/images/work/Gretna-Baseball.png" title="Gretna Baseball<br /><a href='http://www.gretnabaseball.com'>Click Here to Visit GretnaBaseball.com</a>"><img src="App_Files/images/work/thumbs/Gretna-Baseball-Thumb.png" alt="Gretna Baseball" border="0" /></a>

            <h4>Frank's Pizzeria</h4>
            <a rel="work" href="App_Files/images/work/Franks-Pizzeria.png" title="Frank's Pizzeria<br /><a href='http://www.franksnewyorkpizza.com'>Click Here to Visit FranksNewYorkPizza.com</a>"><img src="App_Files/images/work/thumbs/Franks-Pizzeria-Thumb.png" alt="Frank's Pizzeria" border="0" /></a>
        </div>
        <div id="Column2">
            <h4>The Union - Mobile Website</h4>
            <a rel="work" href="App_Files/images/work/Union-Sports-Bar-Mobile-Website.png" title="The Union Pizzeria and Sports Bar<br /><a href='http://m.unionsportsbar.com'>Click Here to Visit m.unionsportsbar.com</a>"><img src="App_Files/images/work/thumbs/Union-Sports-Bar-Mobile-Website-Thumb.png" alt="The Union Pizzeria and Sports Bar" border="0" /></a>
        
            <h4>Bellevue Marina</h4>
            <a rel="work" href="App_Files/images/work/Bellevue-Marina.png" title="Bellevue Marina<br /><a href='http://www.bellevue-marina.com'>Click Here to Visit Bellevue-Marina.com</a>"><img src="App_Files/images/work/thumbs/Bellevue-Marina-Thumb.png" alt="Bellevue Marina" border="0" /></a>
        </div>
    </div>
    <div class="clear"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScripts" Runat="Server">
    <script src="App_Files/scripts/jQuery/fancybox/jquery.fancybox-1.3.4.pack.js" type="text/javascript"></script>
    <script src="App_Files/scripts/jQuery/fancybox/jquery.mousewheel-3.0.4.pack.js" type="text/javascript"></script>
    <script src="App_Files/scripts/jQuery/fancybox/jquery.easing-1.3.pack.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("a[rel=work]").fancybox({
                'transitionIn': 'none',
                'transitionOut': 'none',
                'titlePosition': 'inside'
            });
        });
	</script>
</asp:Content>

