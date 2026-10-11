using System;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class FloatingFormControllerWrapper : LayoutControllerWrapper, ISerializable
{
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
	}

	protected FloatingFormControllerWrapper(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public FloatingFormControllerWrapper()
	{
	}
}
