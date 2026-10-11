using System;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class MainFormControllerWrapper : ControllerWrapper, ISerializable
{
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
	}

	protected MainFormControllerWrapper(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public MainFormControllerWrapper()
	{
	}
}
