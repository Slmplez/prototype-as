using System;
using System.Runtime.Serialization;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[StaticDataField("sd")]
public class GridNumericUpDownCellInfoStore : StyleInfoStore
{
	private static StaticData sd = new StaticData(typeof(GridNumericUpDownCellInfoStore), typeof(GridNumericUpDownCellInfo), sortProperties: true);

	public static readonly StyleInfoProperty MinimumProperty = sd.CreateStyleInfoProperty(typeof(int), "Minimum");

	public static readonly StyleInfoProperty MaximumProperty = sd.CreateStyleInfoProperty(typeof(int), "Maximum");

	public static readonly StyleInfoProperty StepProperty = sd.CreateStyleInfoProperty(typeof(int), "Step");

	public static readonly StyleInfoProperty StartValueProperty = sd.CreateStyleInfoProperty(typeof(int), "StartValue");

	public static readonly StyleInfoProperty WrapValueProperty = sd.CreateStyleInfoProperty(typeof(bool), "WrapValue");

	internal static string[] sortOrder = sd.CreatePropertyGridSortOrder(new string[5] { "Minimum", "Maximum", "Step", "WrapValue", "StartValue" });

	protected override StaticData StaticDataStore => sd;

	public GridNumericUpDownCellInfoStore()
	{
	}

	private GridNumericUpDownCellInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}
}
