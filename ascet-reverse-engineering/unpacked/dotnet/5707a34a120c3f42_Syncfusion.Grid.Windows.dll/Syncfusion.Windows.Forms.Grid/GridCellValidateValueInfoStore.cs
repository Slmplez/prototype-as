using System;
using System.Runtime.Serialization;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[StaticDataField("sd")]
public class GridCellValidateValueInfoStore : StyleInfoStore
{
	private static StaticData sd = new StaticData(typeof(GridCellValidateValueInfoStore), typeof(GridCellValidateValueInfo), sortProperties: true);

	public static readonly StyleInfoProperty NumberRequiredProperty = sd.CreateStyleInfoProperty(typeof(bool), "NumberRequired");

	public static readonly StyleInfoProperty MinimumProperty = sd.CreateStyleInfoProperty(typeof(double), "Minimum");

	public static readonly StyleInfoProperty MaximumProperty = sd.CreateStyleInfoProperty(typeof(double), "Maximum");

	public static readonly StyleInfoProperty ErrorMessageProperty = sd.CreateStyleInfoProperty(typeof(string), "ErrorMessage");

	protected override StaticData StaticDataStore => sd;

	public GridCellValidateValueInfoStore()
	{
	}

	private GridCellValidateValueInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new GridCellValidateValueInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}
}
