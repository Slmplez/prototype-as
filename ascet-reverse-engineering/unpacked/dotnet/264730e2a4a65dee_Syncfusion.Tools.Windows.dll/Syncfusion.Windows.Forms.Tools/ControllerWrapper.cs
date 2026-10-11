using System;
using System.Collections;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class ControllerWrapper : ISerializable
{
	public ArrayList Children = new ArrayList();

	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue(SerializationConsts.CHILDREN, Children, typeof(ArrayList));
	}

	protected ControllerWrapper(SerializationInfo info, StreamingContext context)
	{
		Children = (ArrayList)info.GetValue(SerializationConsts.CHILDREN, typeof(ArrayList));
	}

	public ControllerWrapper()
	{
	}
}
