using ProductsDBModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class components : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProductsDBEntities db = new ProductsDBEntities();

        //located the image
        var imageData = db.tblImages.FirstOrDefault();

        //build the filename
        string filename = imageData.Id.ToString() + imageData.Extension;

        //set the image control's attributes
        imageControl.AlternateText = imageData.AltText;
        imageControl.Width = (Unit)imageData.Width;
        imageControl.Height = (Unit)imageData.Height;
        imageControl.ImageUrl = "UploadedImages/" + filename;
    }
}