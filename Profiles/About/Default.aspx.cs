/*  
 
    Copyright (c) 2008-2012 by the President and Fellows of Harvard College. All rights reserved.  
    Profiles Research Networking Software was developed under the supervision of Griffin M Weber, MD, PhD.,
    and Harvard Catalyst: The Harvard Clinical and Translational Science Center, with support from the 
    National Center for Research Resources and Harvard University.


    Code licensed under a BSD License. 
    For details, see: LICENSE.txt 
  
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Xml;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.UI.HtmlControls;

using Profiles.Framework.Utilities;

namespace Profiles.About
{
    public partial class Default : System.Web.UI.Page
    {
        Profiles.Framework.Template masterpage;

        public void Page_Load(object sender, EventArgs e)
        {
            masterpage = (Framework.Template)base.Master;
            this.LoadAssets();

            masterpage.Tab = "";
            masterpage.RDFData = null;
            XmlDocument presentationxml = new XmlDocument();
            presentationxml.LoadXml(System.IO.File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + "/About/PresentationXML/AboutPresentation.xml"));
            masterpage.PresentationXML = presentationxml;

        }

        private void LoadAssets()
        {
            HtmlLink Aboutcss = new HtmlLink();
            Aboutcss.Href = Root.Domain + "/About/CSS/about.css";
            Aboutcss.Attributes["rel"] = "stylesheet";
            Aboutcss.Attributes["type"] = "text/css";
            Aboutcss.Attributes["media"] = "all";
            Page.Header.Controls.Add(Aboutcss);

            /*HtmlLink AboutBScss = new HtmlLink();
            AboutBScss.Href = Root.Domain + "/About/CSS/bootstrap.css";
            AboutBScss.Attributes["rel"] = "stylesheet";
            AboutBScss.Attributes["type"] = "text/css";
            AboutBScss.Attributes["media"] = "all";
            Page.Header.Controls.Add(AboutBScss);*/

            HtmlLink AboutBSMincss = new HtmlLink();
            AboutBSMincss.Href = Root.Domain + "/About/CSS/bootstrap.min.css";
            AboutBSMincss.Attributes["rel"] = "stylesheet";
            AboutBSMincss.Attributes["type"] = "text/css";
            AboutBSMincss.Attributes["media"] = "all";
            Page.Header.Controls.Add(AboutBSMincss);

            HtmlGenericControl jsscript = new HtmlGenericControl("script");
            jsscript.Attributes.Add("type", "text/javascript");
            jsscript.Attributes.Add("src", Root.Domain + "/About/js/jquery-1.10.2.min.js");
            Page.Header.Controls.Add(jsscript);

            HtmlGenericControl jsBSscript = new HtmlGenericControl("script");
            jsBSscript.Attributes.Add("type", "text/javascript");
            jsBSscript.Attributes.Add("src", Root.Domain + "/About/js/bootstrap.js");
            Page.Header.Controls.Add(jsBSscript);

            HtmlGenericControl jsBSMinscript = new HtmlGenericControl("script");
            jsBSscript.Attributes.Add("type", "text/javascript");
            jsBSscript.Attributes.Add("src", Root.Domain + "/About/js/bootstrap.min.js");
            Page.Header.Controls.Add(jsBSscript);
        }
    }
}
