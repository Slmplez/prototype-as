using System.Runtime.InteropServices;

namespace Etas.Base.UI.Framework.Help.HelpCore;

[ComVisible(true)]
public abstract class HelpConstants
{
	public static readonly string DEFAULT_FILENAME = "<default>";

	public static readonly string DEFAULT_HELPFILE_EXTENSION = "chm";

	public static readonly string MAP_EXTENSION = "_map.xml";

	public static readonly string DEFAULT_TOPIC = string.Empty;

	public static readonly string DEFAULT_RANGE_VALUE = string.Empty;

	public static readonly string DEFAULT_GRABBER_TYPE = "<unknown Gabber>";

	public static readonly int DB_VERSION = 1;
}
