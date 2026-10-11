using System;
using System.Collections.Specialized;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class DockTabControllerWrapper : LayoutControllerWrapper, ISerializable
{
	private StringCollection controls = new StringCollection();

	public StringCollection Controls => controls;

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		info.AddValue(SerializationConsts.TAB_CONTROLS, controls, typeof(StringCollection));
	}

	protected DockTabControllerWrapper(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		controls = (StringCollection)info.GetValue(SerializationConsts.TAB_CONTROLS, typeof(StringCollection));
	}

	public DockTabControllerWrapper()
	{
	}
}
