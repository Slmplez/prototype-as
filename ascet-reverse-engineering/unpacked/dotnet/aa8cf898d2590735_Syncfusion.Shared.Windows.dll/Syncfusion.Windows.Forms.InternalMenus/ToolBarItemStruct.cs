using System.Xml.Serialization;

namespace Syncfusion.Windows.Forms.InternalMenus;

public class ToolBarItemStruct
{
	public string iconResource;

	public string shortcutText;

	public string text;

	public string eventHandler;

	[XmlAttribute("Style")]
	public string style = "Button";

	[XmlAttribute("Width")]
	public int width = 23;

	[XmlAttribute("Height")]
	public int height = 23;
}
