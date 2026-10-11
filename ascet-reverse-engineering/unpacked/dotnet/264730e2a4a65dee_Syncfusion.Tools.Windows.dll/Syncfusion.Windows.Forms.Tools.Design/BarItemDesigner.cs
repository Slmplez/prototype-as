using System.ComponentModel;
using System.ComponentModel.Design;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class BarItemDesigner : ComponentDesigner, IAllowMakeDirty
{
	void IAllowMakeDirty.SetDirty()
	{
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["Items"];
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		if (designerHost != null)
		{
			RaiseComponentChanged(member, null, null);
		}
	}
}
