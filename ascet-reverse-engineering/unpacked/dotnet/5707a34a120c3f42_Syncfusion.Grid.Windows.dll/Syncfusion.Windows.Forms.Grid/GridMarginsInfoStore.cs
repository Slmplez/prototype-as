using System;
using System.Runtime.Serialization;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[StaticDataField("sd")]
public class GridMarginsInfoStore : StyleInfoStore
{
	private static StaticData sd = new StaticData(typeof(GridMarginsInfoStore), typeof(GridMarginsInfo), sortProperties: true);

	public static readonly StyleInfoProperty LeftProperty = sd.CreateStyleInfoProperty(typeof(byte), "Left", 255, makeBitValue: true);

	public static readonly StyleInfoProperty TopProperty = sd.CreateStyleInfoProperty(typeof(byte), "Top", 255, makeBitValue: true);

	public static readonly StyleInfoProperty RightProperty = sd.CreateStyleInfoProperty(typeof(byte), "Right", 255, makeBitValue: true);

	public static readonly StyleInfoProperty BottomProperty = sd.CreateStyleInfoProperty(typeof(byte), "Bottom", 255, makeBitValue: true);

	protected override StaticData StaticDataStore => sd;

	public GridMarginsInfoStore()
	{
	}

	protected GridMarginsInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new GridMarginsInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}
}
