using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Graduation_Student_Party
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // this code hide admin menu from all other users
            if (!Roles.IsUserInRole("admin"))
            {
                MenuItemCollection menuItems = NavigationMenu.Items;
                MenuItem adminItem = new MenuItem();
                foreach (MenuItem menuItem in menuItems)
                {
                    if (menuItem.Text == "Admin")// to hide specific menu put  the name here ... Warning, case sensitive 
                        adminItem = menuItem;
                }
                menuItems.Remove(adminItem);
            }
            //if (!Roles.IsUserInRole("intern"))
            //{
            //    MenuItemCollection menuItems = NavigationMenu.Items;
            //    MenuItem adminItem = new MenuItem();
            //    foreach (MenuItem menuItem in menuItems)
            //    {
            //        if (menuItem.Text == "Interns")// to hide specific menu put  the name here ... Warning, case sensitive 
            //            adminItem = menuItem;
            //    }
            //    menuItems.Remove(adminItem);
            //}
            //if (!Roles.IsUserInRole("supervisor")) // roles are case sensitive
            //{
            //    MenuItemCollection menuItems = NavigationMenu.Items;
            //    MenuItem adminItem = new MenuItem();
            //    foreach (MenuItem menuItem in menuItems)
            //    {
            //        if (menuItem.Text == "Supervisor")// to hide specific menu put  the name here ... Warning, case sensitive 
            //            adminItem = menuItem;
            //    }
            //    menuItems.Remove(adminItem);
            //}

            //111
            if (!Roles.IsUserInRole("Student CRUD"))
            {
                MenuItemCollection menuItems = NavigationMenu.Items;
                MenuItem adminItem = new MenuItem();
                foreach (MenuItem menuItem in menuItems)
                {
                    if (menuItem.Text == "Student CRUD")// to hide specific menu put  the name here ... Warning, case sensitive 
                        adminItem = menuItem;
                }
                menuItems.Remove(adminItem);
            }

            if (!Roles.IsUserInRole("Export data"))
            {
                MenuItemCollection menuItems = NavigationMenu.Items;
                MenuItem adminItem = new MenuItem();
                foreach (MenuItem menuItem in menuItems)
                {
                    if (menuItem.Text == "Export data")// to hide specific menu put  the name here ... Warning, case sensitive 
                        adminItem = menuItem;
                }
                menuItems.Remove(adminItem);
            }

            //if (!Roles.IsUserInRole("sales"))
            //{
            //    MenuItemCollection menuItems = NavigationMenu.Items;
            //    MenuItem adminItem = new MenuItem();
            //    foreach (MenuItem menuItem in menuItems)
            //    {
            //        if (menuItem.Text == "Sales")// to hide specific menu put  the name here ... Warning, case sensitive 
            //            adminItem = menuItem;
            //    }
            //    menuItems.Remove(adminItem);
            //}


            //if (!Roles.IsUserInRole("sales"))
            //{
            //    MenuItemCollection menuItems = NavigationMenu.Items;
            //    MenuItem adminItem = new MenuItem();
            //    foreach (MenuItem menuItem in menuItems)
            //    {
            //        if (menuItem.Text == "KFMC")// to hide specific menu put  the name here ... Warning, case sensitive 
            //            adminItem = menuItem;
            //    }
            //    menuItems.Remove(adminItem);
            //}
        }
        protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}