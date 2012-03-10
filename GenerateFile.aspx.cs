using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class GenerateFile : System.Web.UI.Page {
  protected void Page_Load(object sender, EventArgs e) {
    string region = Request.QueryString["Region"];

    string documentPath = string.Format("/Documents/{0}.doc", region);
    string attachmentHeader = String.Format("attachment; filename={0}.doc", region);

    Response.AppendHeader("content-disposition", attachmentHeader);
    Response.ContentType = "application/octet-stream";
    Response.WriteFile(documentPath);

    Response.End();
  }
}
