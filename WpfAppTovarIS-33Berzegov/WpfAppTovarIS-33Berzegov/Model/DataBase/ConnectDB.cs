using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfAppTovarIS_33Berzegov.Model.DataBase;

namespace WpfAppTovarIS_33Berzegov.Model
{
    public static class ConnectDB
    {
        public static TradeIS_33BerzegovEntities db { get; set; } = new TradeIS_33BerzegovEntities();
    }
}
