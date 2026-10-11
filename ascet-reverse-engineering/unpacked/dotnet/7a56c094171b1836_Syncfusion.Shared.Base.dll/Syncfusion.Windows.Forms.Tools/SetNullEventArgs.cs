using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class SetNullEventArgs : SyncfusionCancelEventArgs
{
	private object nullValue;

	[TraceProperty(true)]
	public object NullValue => nullValue;

	public SetNullEventArgs(object nullValue)
	{
		this.nullValue = nullValue;
	}
}
