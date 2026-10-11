using System.Runtime.InteropServices;

namespace Etas.Base.UI.Framework.Help.HelpCore;

[ComVisible(true)]
public struct ControlIdentifier
{
	public static readonly string DEFAULT_NS = "<default>";

	public string Name;

	public string HelpNamespace;

	public string Type;

	public string GrabberPrefix;

	public static ControlIdentifier DEFAULTS
	{
		get
		{
			ControlIdentifier result = default(ControlIdentifier);
			result.GrabberPrefix = string.Empty;
			result.HelpNamespace = DEFAULT_NS;
			result.Name = string.Empty;
			result.Type = string.Empty;
			return result;
		}
	}

	public string FullName
	{
		get
		{
			string text = string.Empty;
			if (!string.IsNullOrEmpty(GrabberPrefix))
			{
				text = GrabberPrefix + "::";
			}
			text += Name;
			if (!string.IsNullOrEmpty(HelpNamespace) && !DEFAULT_NS.Equals(HelpNamespace))
			{
				text = text + "[" + HelpNamespace + "]";
			}
			return text;
		}
	}

	public override bool Equals(object obj)
	{
		if (obj is ControlIdentifier)
		{
			return FullName.Equals(((ControlIdentifier)obj).FullName);
		}
		return false;
	}

	public static bool operator ==(ControlIdentifier lhs, ControlIdentifier rhs)
	{
		return lhs.Equals(rhs);
	}

	public static bool operator !=(ControlIdentifier lhs, ControlIdentifier rhs)
	{
		return !(lhs == rhs);
	}
}
