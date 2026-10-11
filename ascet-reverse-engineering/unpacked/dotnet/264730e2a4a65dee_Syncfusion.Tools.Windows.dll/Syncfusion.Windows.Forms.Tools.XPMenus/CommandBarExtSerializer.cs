using System;
using System.Drawing;
using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[DocumentationExclude]
public class CommandBarExtSerializer : ISerializable, ICommandBarSerializer
{
	protected internal int nMaxLength;

	protected internal int nMinLength;

	protected internal CommandBarDockState cbDockState;

	protected internal int nRowOffsetDir;

	protected internal int nRCIndex;

	protected internal int nRCCountDrag;

	protected internal Point ptFloat;

	protected internal Size szFloat;

	public CommandBarExtSerializer()
	{
	}

	public void GetCommandBarData(CommandBar cbar)
	{
		nMaxLength = cbar.nMaxLength;
		nMinLength = cbar.nMinLength;
		cbDockState = cbar.cbarDockState;
		nRowOffsetDir = cbar.nRowOffsetDir;
		nRCIndex = cbar.nRCIndex;
		nRCCountDrag = cbar.nRCCountDrag;
		ptFloat = cbar.FloatBounds.Location;
		szFloat = cbar.FloatBounds.Size;
	}

	public void SetCommandBarData(CommandBar cbar)
	{
		cbar.nMaxLength = nMaxLength;
		cbar.nMinLength = nMinLength;
		cbar.cbarDockState = cbDockState;
		cbar.nRowOffsetDir = nRowOffsetDir;
		cbar.nRowOffsetInDir = cbar.nRowOffsetDir;
		cbar.nRCIndex = nRCIndex;
		cbar.nRCCountDrag = nRCCountDrag;
		cbar.rcFloat = new Rectangle(ptFloat, szFloat);
	}

	protected CommandBarExtSerializer(SerializationInfo info, StreamingContext context)
	{
		nMaxLength = info.GetInt32("MaxLength");
		nMinLength = info.GetInt32("MinLength");
		cbDockState = (CommandBarDockState)info.GetValue("CommandBarDockState", typeof(CommandBarDockState));
		nRowOffsetDir = info.GetInt32("RowOffsetDir");
		nRCIndex = info.GetInt32("RCIndex");
		ptFloat = (Point)info.GetValue("FloatLocation", typeof(Point));
		try
		{
			nRCCountDrag = info.GetInt32("RCCountDrag");
			szFloat = (Size)info.GetValue("FloatSize", typeof(Size));
		}
		catch (SerializationException)
		{
			nRCCountDrag = 0;
			szFloat = Size.Empty;
		}
	}

	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("MaxLength", nMaxLength);
		info.AddValue("MinLength", nMinLength);
		info.AddValue("CommandBarDockState", cbDockState);
		info.AddValue("RowOffsetDir", nRowOffsetDir);
		info.AddValue("RCIndex", nRCIndex);
		info.AddValue("RCCountDrag", nRCCountDrag);
		info.AddValue("FloatLocation", ptFloat);
		info.AddValue("FloatSize", szFloat);
	}
}
