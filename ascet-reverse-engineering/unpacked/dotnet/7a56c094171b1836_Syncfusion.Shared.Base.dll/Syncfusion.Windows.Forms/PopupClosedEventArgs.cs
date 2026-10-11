using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public sealed class PopupClosedEventArgs : SyncfusionEventArgs
{
	private PopupCloseType popupCloseType;

	[TraceProperty(true)]
	public PopupCloseType PopupCloseType => popupCloseType;

	public PopupClosedEventArgs(PopupCloseType popupCloseType)
	{
		this.popupCloseType = popupCloseType;
	}
}
