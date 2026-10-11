using System;
using System.Xml.Serialization;

namespace Syncfusion.Windows.Forms.Grid.Design;

[Serializable]
public class GridRowColEntry
{
	private int index;

	private int length;

	[XmlAttribute("Index")]
	public int Index
	{
		get
		{
			return index;
		}
		set
		{
			index = value;
		}
	}

	[XmlAttribute("Length")]
	public int Length
	{
		get
		{
			return length;
		}
		set
		{
			length = value;
		}
	}

	public GridRowColEntry()
	{
	}

	public GridRowColEntry(int index, int length)
	{
		this.index = index;
		this.length = length;
	}
}
