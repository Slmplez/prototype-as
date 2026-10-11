using System;
using System.Drawing;
using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[DocumentationExclude]
public class CBarSerializationWrapper : ISerializable, ICommandBarSerializer
{
	public string strName;

	public int nMaxLength;

	public int nMinLength;

	public int nCommandBarHt;

	public int nRCCountDrag;

	public CommandBarDockState cbarDockState;

	public int nRowOffsetDir;

	public int nRCIndex;

	public bool bVisible;

	public Point ptFloat;

	public Size szFloat;

	public CBarSerializationWrapper()
	{
	}

	public void GetCommandBarData(CommandBar cbar)
	{
		nMaxLength = cbar.nMaxLength;
		nMinLength = cbar.nMinLength;
		nCommandBarHt = cbar.nCommandBarHt;
		nRCCountDrag = cbar.nRCCountDrag;
		cbarDockState = cbar.cbarDockState;
		nRowOffsetDir = cbar.nRowOffsetDir;
		nRCIndex = cbar.nRCIndex;
		bVisible = cbar.bVisible;
		ptFloat = cbar.FloatBounds.Location;
		szFloat = cbar.FloatBounds.Size;
	}

	public void SetCommandBarData(CommandBar cbar)
	{
		cbar.nMaxLength = nMaxLength;
		cbar.nMinLength = nMinLength;
		cbar.nCommandBarHt = nCommandBarHt;
		cbar.nRCCountDrag = nRCCountDrag;
		cbar.cbarDockState = cbarDockState;
		cbar.nRowOffsetDir = nRowOffsetDir;
		cbar.nRowOffsetInDir = cbar.nRowOffsetDir;
		cbar.nRCIndex = nRCIndex;
		cbar.bVisible = bVisible;
		cbar.rcFloat = new Rectangle(ptFloat, szFloat);
	}

	protected CBarSerializationWrapper(SerializationInfo info, StreamingContext context)
	{
		nMaxLength = info.GetInt32("MaxLength");
		nMinLength = info.GetInt32("MinLength");
		nCommandBarHt = info.GetInt32("MinHeight");
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
		cbarDockState = (CommandBarDockState)info.GetValue("CommandBarDockState", typeof(CommandBarDockState));
		nRowOffsetDir = info.GetInt32("RowOffsetDir");
		nRCIndex = info.GetInt32("RCIndex");
		bVisible = info.GetBoolean("CommandBarVisibility");
		ptFloat = (Point)info.GetValue("FloatLocation", typeof(Point));
	}

	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("MaxLength", nMaxLength);
		info.AddValue("MinLength", nMinLength);
		info.AddValue("MinHeight", nCommandBarHt);
		info.AddValue("RCCountDrag", nRCCountDrag);
		info.AddValue("CommandBarDockState", cbarDockState);
		info.AddValue("RowOffsetDir", nRowOffsetDir);
		info.AddValue("RCIndex", nRCIndex);
		info.AddValue("CommandBarVisibility", bVisible);
		info.AddValue("FloatLocation", ptFloat);
		info.AddValue("FloatSize", szFloat);
	}
}
