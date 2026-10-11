using System;
using System.Runtime.Serialization;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[StaticDataField("sd")]
public class GridBordersInfoStore : StyleInfoStore
{
	private static StaticData sd;

	public static readonly StyleInfoProperty TopProperty;

	public static readonly StyleInfoProperty LeftProperty;

	public static readonly StyleInfoProperty BottomProperty;

	public static readonly StyleInfoProperty RightProperty;

	protected override StaticData StaticDataStore => sd;

	public GridBordersInfoStore()
	{
	}

	static GridBordersInfoStore()
	{
		sd = new StaticData(typeof(GridBordersInfoStore), typeof(GridBordersInfo), sortProperties: true);
		TopProperty = sd.CreateStyleInfoProperty(typeof(GridBorder), "Top");
		LeftProperty = sd.CreateStyleInfoProperty(typeof(GridBorder), "Left");
		BottomProperty = sd.CreateStyleInfoProperty(typeof(GridBorder), "Bottom");
		RightProperty = sd.CreateStyleInfoProperty(typeof(GridBorder), "Right");
		TopProperty.SerializeXmlBehavior = SerializeXmlBehavior.SerializeAsString;
		LeftProperty.SerializeXmlBehavior = SerializeXmlBehavior.SerializeAsString;
		BottomProperty.SerializeXmlBehavior = SerializeXmlBehavior.SerializeAsString;
		RightProperty.SerializeXmlBehavior = SerializeXmlBehavior.SerializeAsString;
	}

	private GridBordersInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new GridBordersInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}
}
