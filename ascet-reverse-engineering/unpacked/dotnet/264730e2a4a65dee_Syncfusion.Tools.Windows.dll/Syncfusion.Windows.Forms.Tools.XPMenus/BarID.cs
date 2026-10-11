using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[DocumentationExclude]
public struct BarID
{
	public string containerName;

	public string formTypeName;

	internal BarID(string barName, string formTypeName)
	{
		containerName = barName;
		this.formTypeName = formTypeName;
	}

	public new string ToString()
	{
		return formTypeName + containerName;
	}

	public static BarID FromBar(Bar bar)
	{
		if (bar.Manager == null)
		{
			throw new ApplicationException("A Bar not part of a BarManager's Bars list is encountered.");
		}
		return new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager));
	}

	public static bool operator ==(BarID lhs, BarID rhs)
	{
		if ((object)lhs == null || (object)rhs == null)
		{
			return false;
		}
		return lhs.Equals(rhs);
	}

	public static bool operator !=(BarID lhs, BarID rhs)
	{
		if ((object)lhs == null || (object)rhs == null)
		{
			return false;
		}
		return !lhs.Equals(rhs);
	}

	public override bool Equals(object o)
	{
		bool result = false;
		if ((object)this == o)
		{
			return true;
		}
		if (o is BarID barID)
		{
			result = barID.containerName == containerName && barID.formTypeName == formTypeName;
		}
		return result;
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}
}
