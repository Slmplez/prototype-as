using System;
using System.ComponentModel;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms;

internal class AttachedToControlTypeConverter : ReferenceConverter
{
	public AttachedToControlTypeConverter(Type type)
		: base(type)
	{
	}

	protected override bool IsValueAllowed(ITypeDescriptorContext context, object value)
	{
		bool flag = base.IsValueAllowed(context, value);
		if (flag)
		{
			flag = context.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && value != designerHost.RootComponent;
		}
		return flag;
	}
}
