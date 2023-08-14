using System.Web;
using System.Web.Mvc;

namespace Graduation_Student_Party
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
