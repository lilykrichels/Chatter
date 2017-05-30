using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Chatter_Spring17.Startup))]
namespace Chatter_Spring17
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
