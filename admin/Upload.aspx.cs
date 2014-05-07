using ProductsDBModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        //get the extension of our image file
        string extension = (System.IO.Path.GetExtension(fileUploadControl.FileName).ToLower());

        //check the extension is valid
        if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
        {
            //load the image in memory so we can determine it's dimensions
            System.Drawing.Image img = System.Drawing.Image.FromStream(fileUploadControl.PostedFile.InputStream);
            int width = img.Width;
            int height = img.Height;

            //save the image data
            ProductsDBEntities db = new ProductsDBEntities();
            tblImage imageData = new tblImage();
            imageData.AltText = txtAltText.Text;
            imageData.Width = width;
            imageData.Height = height;
            imageData.Extension = extension;
            db.tblImages.AddObject(imageData);
            db.SaveChanges();

            //assemble the filename
            string filename = imageData.Id.ToString() + extension;

            //save the image file (we could have alternatively saved the posted file,
            //but this would save any modifications we may have made to the image)
            img.Save(Server.MapPath("~/UploadedImages/" + filename));

            //inform the user
            litResult.Text = "<p>Your file was uploaded as " + filename + " in the UploadedImages folder</p>";

        }
    }
}