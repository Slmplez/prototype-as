using System;
using System.Runtime.Serialization;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[StaticDataField("sd")]
public class GridCheckBoxCellInfoStore : StyleInfoStore
{
	private static StaticData sd = new StaticData(typeof(GridCheckBoxCellInfoStore), typeof(GridCheckBoxCellInfo), sortProperties: true);

	public static readonly StyleInfoProperty CheckedValueProperty = sd.CreateStyleInfoProperty(typeof(string), "CheckedValue");

	public static readonly StyleInfoProperty UncheckedValueProperty = sd.CreateStyleInfoProperty(typeof(string), "UncheckedValue");

	public static readonly StyleInfoProperty IndetermValueProperty = sd.CreateStyleInfoProperty(typeof(string), "IndetermValue");

	public static readonly StyleInfoProperty FlatLookProperty = sd.CreateStyleInfoProperty(typeof(bool), "FlatLook");

	protected override StaticData StaticDataStore => sd;

	public GridCheckBoxCellInfoStore()
	{
	}

	private GridCheckBoxCellInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new GridCheckBoxCellInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}
}
