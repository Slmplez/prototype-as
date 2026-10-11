using System.ComponentModel.Design.Serialization;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class BarControlCodeDomSerializer : CodeDomSerializer
{
	private bool removedManager;

	public bool RemovedManager => removedManager;

	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(Control), typeof(CodeDomSerializer));
		return codeDomSerializer.Deserialize(manager, codeObject);
	}

	public override object Serialize(IDesignerSerializationManager manager, object obj)
	{
		if (!removedManager && obj is XPToolBar)
		{
			XPToolBar xPToolBar = obj as XPToolBar;
			removedManager = true;
			xPToolBar.BeforeCodeDomSerialize();
			CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(Control), typeof(CodeDomSerializer));
			object result = codeDomSerializer.Serialize(manager, obj);
			xPToolBar.AfterCodeDomSerialize();
			removedManager = false;
			return result;
		}
		CodeDomSerializer codeDomSerializer2 = (CodeDomSerializer)manager.GetSerializer(typeof(Control), typeof(CodeDomSerializer));
		return codeDomSerializer2.Serialize(manager, obj);
	}
}
