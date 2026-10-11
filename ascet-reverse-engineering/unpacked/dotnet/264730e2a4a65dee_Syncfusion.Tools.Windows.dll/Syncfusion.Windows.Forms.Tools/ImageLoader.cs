using System.Drawing;
using System.IO;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools;

internal class ImageLoader
{
	public static Image Load(string path)
	{
		Assembly executingAssembly = Assembly.GetExecutingAssembly();
		Stream manifestResourceStream = executingAssembly.GetManifestResourceStream(typeof(DockHost), path);
		return Image.FromStream(manifestResourceStream);
	}
}
