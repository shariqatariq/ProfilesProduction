﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;
using System.Globalization;
using System.Text;
using System.Xml;
using System.Xml.Xsl;

using Profiles.Framework.Utilities;
using Profiles.Profile.Utilities;


namespace Profiles.Proxy.Modules.ManageProxies
{
    public partial class ManageProxies : BaseModule
    {
        SessionManagement sm;
        protected void Page_Load(object sender, EventArgs e)
        {
            sm = new SessionManagement();

            DrawProfilesModule();
        }

        public ManageProxies() { }
        public ManageProxies(XmlDocument pagedata, List<ModuleParams> moduleparams, XmlNamespaceManager pagenamespaces)
        {


        }
        private void DrawProfilesModule()
        {

            if (sm.Session().UserID == 0)
                Response.Redirect(Root.Domain + "/search");

            Utilities.DataIO data = new Profiles.Proxy.Utilities.DataIO();

            imgAdd.ImageUrl = Root.Domain + "/framework/images/icon_roundArrow.gif";


            litBackLink.Text = "<b>Manage Proxies</b>";

            SqlDataReader reader;
            List<Proxy> proxies = new List<Proxy>();

            reader = data.ManageProxies("GetAllUsersWhoCanEditMyNodes");

            while (reader.Read())
            {

                proxies.Add(new Proxy(reader["UserID"].ToString(), reader["DisplayName"].ToString(), reader["PersonURI"].ToString(), reader["Institution"].ToString()
                    , reader["Department"].ToString(), reader["EmailAddr"].ToString(), Convert.ToBoolean(reader["CanDelete"])));
            }
            reader.Close();

            gvMyProxies.DataSource = proxies;
            gvMyProxies.DataBind();
            gvMyProxies.CellPadding = 2;
            proxies = null;
            proxies = new List<Proxy>();
            reader = data.ManageProxies("GetDesignatedUsersWhoseNodesICanEdit");

            while (reader.Read())
            {

                proxies.Add(new Proxy(reader["DisplayName"].ToString(), reader["PersonURI"].ToString(), reader["Institution"].ToString() 
                    , "", reader["EmailAddr"].ToString(), ""));
            }
            reader.Close();

            gvWhoCanIEdit.DataSource = proxies;
            gvWhoCanIEdit.DataBind();
            gvWhoCanIEdit.CellPadding = 2;

            proxies = null;
            proxies = new List<Proxy>();
            reader = data.ManageProxies("GetDefaultUsersWhoseNodesICanEdit");
            string yorn = string.Empty;           
            
            while (reader.Read())
            {
                if (Convert.ToBoolean(reader["isVisible"]))
                    yorn = "Y";
                else
                    yorn = "N";

                proxies.Add(new Proxy(reader["Institution"].ToString()
                    , reader["Department"].ToString(), yorn));
            }

            gvYouCanEdit.DataSource = proxies;
            gvYouCanEdit.DataBind();
            gvYouCanEdit.CellPadding = 2;
            reader.Close();


            if (sm.Session().NodeID > 0)
            {
                pnlAddProxy.Visible = true;
                string url = Root.Domain + "/proxy/default.aspx?method=search&subject=" + HttpContext.Current.Request.QueryString["subject"];
                lnkAddProxyTmp.Text = "<a href='" + url + "'>Add A Proxy</a>";

                if (proxies.Capacity != 0)
                {
                    url = Root.Domain + "/proxy/default.aspx?method=supersearch&subject=" + HttpContext.Current.Request.QueryString["subject"]; 
                    lnkAddSuperProxy.Text = "<a href='" + url + "'>Add A Super Proxy</a>";
                    imgsuper.ImageUrl = Root.Domain + "/framework/images/icon_roundArrow.gif";

                    proxies = null;
                    proxies = new List<Proxy>();
                    reader = data.ManageProxies("GetAllDefaultProxies");

                    while (reader.Read())
                    {
                        proxies.Add(new Proxy(reader["UserID"].ToString(), reader["DisplayName"].ToString(), reader["PersonURI"].ToString(), reader["Institution"].ToString(), reader["Department"].ToString(), "", false));
                    }
                    superProxyGrid.DataSource = proxies;
                    superProxyGrid.DataBind();
                    superProxyGrid.CellPadding = 2;
                    reader.Close();
                }
            }
        }

        protected void lnkDelete_OnClick(object sender, EventArgs e)
        {
            ImageButton lb = (ImageButton)sender;

            Utilities.DataIO data = new Profiles.Proxy.Utilities.DataIO();
            data.DeleteProxy(lb.CommandArgument); 

            DrawProfilesModule();
        }

        protected void lnkDelete_OnClick_SuperProxies(object sender, EventArgs e)
        {
            ImageButton lb = (ImageButton)sender;
            Utilities.DataIO data = new Profiles.Proxy.Utilities.DataIO();
            string useridToDelete = lb.CommandArgument;

            if (data.doesCurrentUserHavePermissionsOverInputtedUserID(useridToDelete))
            {
                data.DeleteSuperProxy(useridToDelete);
            }

            DrawProfilesModule();
        }
      
        protected void gvMyProxies_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Proxy proxy = (Proxy)e.Row.DataItem;

                Literal litName = (Literal)e.Row.FindControl("litName");
                Literal litEmail = (Literal)e.Row.FindControl("litEmail");
                ImageButton lnkDelete = (ImageButton)e.Row.FindControl("lnkDelete");

                if (proxy.PersonURI != "")
                    litName.Text = "<a href='" + proxy.PersonURI + "'>" + proxy.Name + "</a>";
                else
                    litName.Text = proxy.Name;


                if (proxy.Email != null)
                    litEmail.Text = "<a href='mailto:" + proxy.Email + "'>" + proxy.Email + "</a>";
                else
                    litEmail.Visible = false;

                if (proxy.CanDelete)
                {
                    lnkDelete.CommandArgument = proxy.UserID;
                    lnkDelete.CommandName = "UserID";
                }
                else
                    lnkDelete.Visible = false;


            }
        }


        protected void gvWhoCanIEdit_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                Proxy proxy = (Proxy)e.Row.DataItem;

                Literal litName = (Literal)e.Row.FindControl("litName");
                Literal litEmail = (Literal)e.Row.FindControl("litEmail");
                Literal litDelete = (Literal)e.Row.FindControl("litDelete");

                if (proxy.PersonURI != null)
                    litName.Text = "<a href='" + proxy.PersonURI + "'>" + proxy.Name + "</a>";
                else
                    litName.Text = proxy.Name;

                if (proxy.Email != null)
                    litEmail.Text = "<a href='mailto:" + proxy.Email + "'>" + proxy.Email + "</a>";
                else
                    litEmail.Visible = false;
            }
        }
        protected void gvYouCanEdit_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[0].HorizontalAlign = HorizontalAlign.Left;
                e.Row.Cells[1].HorizontalAlign = HorizontalAlign.Center;
                e.Row.Cells[2].HorizontalAlign = HorizontalAlign.Center;
                // e.Row.Cells[3].HorizontalAlign = HorizontalAlign.Center;
            }        
        }

        protected void superProxyGrid_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Utilities.DataIO data = new Profiles.Proxy.Utilities.DataIO();
                Proxy proxy = (Proxy)e.Row.DataItem;

                Literal litName = (Literal)e.Row.FindControl("litName");
                Literal litDeparment = (Literal)e.Row.FindControl("litDepartment");
                Literal litInstitution = (Literal)e.Row.FindControl("litInstitution");

                if (proxy.PersonURI != null)
                    litName.Text = "<a href='" + proxy.PersonURI + "'>" + proxy.Name + "</a>";
                else
                    litName.Text = proxy.Name;

                if (proxy.Department.Equals(String.Empty))
                {
                    litDeparment.Text = "All";
                }
                else
                {
                    litDeparment.Text = proxy.Department;
                }                      

                if (proxy.Institution.Equals(String.Empty))
                {
                    litInstitution.Text = "All";
                }
                else
                {
                    litInstitution.Text = proxy.Institution;
                }
                                
                ImageButton lnkDelete = (ImageButton)e.Row.FindControl("lnkDeleteSuperProxy");

                // Do not show the link to the trash can if the current user does not have proper permissions
                if (data.doesCurrentUserHavePermissionsOverInputtedUserID(proxy.UserID))
                {                    
                    lnkDelete.CommandArgument = proxy.UserID;
                    lnkDelete.CommandName = "UserID";
                }
                else
                {
                    lnkDelete.Visible = false;
                    //TODO: put some sort of indiciation text here for clarity of why they cannot delete
                }


                e.Row.Cells[0].HorizontalAlign = HorizontalAlign.Left;
                e.Row.Cells[1].HorizontalAlign = HorizontalAlign.Center;
                e.Row.Cells[2].HorizontalAlign = HorizontalAlign.Center;
                // e.Row.Cells[3].HorizontalAlign = HorizontalAlign.Center;
            }
        }



        public string GetURLDomain()
        {
            return Root.Domain;
        }
        class Proxy
        {
            public Proxy(string userid, string name, string personuri, string institution, string department, string email, bool candelete)
            {
                this.UserID = userid;
                this.Name = name;
                this.PersonURI = personuri;
                this.Institution = institution;
                this.Department = department;
                this.Email = email;
                this.CanDelete = candelete;
            }

            public Proxy(string name, string personuri, string institution, string department, string email, string visible)
            {
                this.Name = name;
                this.Institution = institution;
                this.Department = department;
                this.Email = email;
                this.PersonURI = personuri;
                this.Visible = visible;
            }

            public Proxy(string institution, string department, string visible)
            {
                this.Institution = institution;
                this.Department = department;
                this.Visible = visible;
            }
            
            public string UserID { get; set; }
            public string Name { get; set; }
            public string Institution { get; set; }
            public string Department { get; set; }
            public string Email { get; set; }
            public string PersonURI { get; set; }
            public bool CanDelete { get; set; }
            public string Visible { get; set; }
        }

    }
}