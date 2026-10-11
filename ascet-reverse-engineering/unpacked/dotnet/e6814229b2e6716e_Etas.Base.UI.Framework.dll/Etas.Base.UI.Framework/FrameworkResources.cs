using System.Reflection;
using System.Resources;

namespace Etas.Base.UI.Framework;

internal class FrameworkResources
{
	internal static ResourceManager ResourceManager = new ResourceManager("Etas.Base.UI.Framework.UIFramework", Assembly.GetExecutingAssembly());
}
