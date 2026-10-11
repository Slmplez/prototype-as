using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class GridBagConstraintsSerializationSurrogate : ISerializationSurrogate
{
	void ISerializationSurrogate.GetObjectData(object obj, SerializationInfo info, StreamingContext context)
	{
		GridBagConstraints gridBagConstraints = (GridBagConstraints)obj;
		info.AddValue("gridPosX", gridBagConstraints.GridPosX);
		info.AddValue("gridPosY", gridBagConstraints.GridPosY);
		info.AddValue("cellSpanX", gridBagConstraints.CellSpanX);
		info.AddValue("cellSpanY", gridBagConstraints.CellSpanY);
		info.AddValue("weightX", gridBagConstraints.WeightX);
		info.AddValue("weightY", gridBagConstraints.WeightY);
		info.AddValue("anchor", gridBagConstraints.Anchor);
		info.AddValue("fill", gridBagConstraints.Fill);
		info.AddValue("insets", gridBagConstraints.Insets);
		info.AddValue("ipadX", gridBagConstraints.IpadX);
		info.AddValue("ipadY", gridBagConstraints.IpadY);
		info.AddValue("isEmpty", gridBagConstraints.IsEmpty);
	}

	object ISerializationSurrogate.SetObjectData(object obj, SerializationInfo info, StreamingContext context, ISurrogateSelector selector)
	{
		GridBagConstraints gridBagConstraints = (GridBagConstraints)obj;
		gridBagConstraints.GridPosX = info.GetInt32("gridPosX");
		gridBagConstraints.GridPosY = info.GetInt32("gridPosY");
		gridBagConstraints.CellSpanX = info.GetInt32("cellSpanX");
		gridBagConstraints.CellSpanY = info.GetInt32("cellSpanY");
		gridBagConstraints.WeightX = info.GetInt32("weightX");
		gridBagConstraints.WeightY = info.GetInt32("weightY");
		gridBagConstraints.Anchor = (AnchorTypes)info.GetValue("anchor", typeof(AnchorTypes));
		gridBagConstraints.Fill = (FillType)info.GetValue("fill", typeof(FillType));
		gridBagConstraints.Insets = (Insets)info.GetValue("insets", typeof(Insets));
		gridBagConstraints.IpadX = info.GetInt32("ipadX");
		gridBagConstraints.IpadY = info.GetInt32("ipadY");
		gridBagConstraints.IsEmpty = info.GetBoolean("isEmpty");
		return gridBagConstraints;
	}
}
