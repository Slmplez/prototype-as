using System.ComponentModel.Design.Serialization;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class BarsSerializer : CodeDomSerializer
{
	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(value.GetType().BaseType, typeof(CodeDomSerializer));
		Bars bars = (Bars)value;
		if (bars.Count > 0)
		{
			bars.SuspendEvents();
			for (int i = 0; i < bars.Count; i++)
			{
				if (bars[i] is MergedBar mergedBar)
				{
					bars[i] = mergedBar.MergedBarsCollection[0];
				}
			}
			bars.ResumeEvents(throwEvent: false);
		}
		return codeDomSerializer.Serialize(manager, value);
	}

	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(codeObject.GetType().BaseType, typeof(CodeDomSerializer));
		return codeDomSerializer.Deserialize(manager, codeObject);
	}
}
