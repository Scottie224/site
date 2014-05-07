<%@ Page Title="Si Solutions | Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="imgslider_pholder" runat="Server">

            <div id="slider">
                <img id="Img1" src="slider_images/nvidealogo.png" alt="Nvidea logo, black background with white text spelling Nvidea GeForce GTX" width="910" height="258" runat="server" />
                <img id="Img2" src="slider_images/intelprocess_slide.png" alt="Intel logo with new 4th generation processors, i3, i5 and i7" width="910" height="258" runat="server" />
                <img id="Img3" src="slider_images/intelinfo_slide.png" alt="Specifications of new 4th generation intel processors" width="910" height="258" runat="server" />
                <img id="Img4" src="slider_images/amdfx_slide.png" alt="AMD logo with new FX processor for sale" width="910" height="258" runat="server" />
            </div>

</asp:Content>

<%-- Placeholder for maincontent1--%>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontent1pholder" runat="Server">
   
    <h1>Welcome!</h1>
    <p>
        Welcome to the Si Solutions website. Here you can view the latest offers for new and upcoming content. To navigate simply click the links above to go to the appropriate section of the website. Please note that you will need to create a free account on the login page in order to add items to your basket.
    </p>
    <h2>About Us</h2>
    <p>Si Solutions provides customers with the latest hardware and software at competitive prices. We are dedicated to helping you get the most from your system. If you have any queries do not hesitate to <a href="contact.aspx">contact us</a> by submitting a form or by visiting us in store.</p>
    <h2>Follow us!</h2>
    <p>
        To recieve further news and updates you can follow us on <a href="http://www.twitter.com">Twitter</a>, join our <a href="http://www.facebook.com">Facebook</a> fan page or subscribe to our channel on <a href="http://www.youtube.com">YouTube</a>! 
    </p>

    <h2>New content!</h2>
    <p>Introducing the new Intel Haswell 4th generation processors, preorder now!</p>
       <video controls="controls" id="videoPlayer" width="640" height="360" poster="images/thumbnail.png">
        <source src="video/Intel.mp4" type='video/mp4' />
        <source src="video/Intel.ogv" type='video/ogg; codecs="theora, vorbis"'/>
        <p>This video player is not supported by your browser, please update</p>
    </video>


</asp:Content>





