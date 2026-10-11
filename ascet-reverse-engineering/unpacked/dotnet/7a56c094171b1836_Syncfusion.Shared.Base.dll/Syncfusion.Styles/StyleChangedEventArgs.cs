using Syncfusion.ComponentModel;

namespace Syncfusion.Styles;

public class StyleChangedEventArgs : SyncfusionEventArgs
{
	private StyleInfoProperty sip;

	[TraceProperty(true)]
	public StyleInfoProperty Sip => sip;

	public StyleChangedEventArgs(StyleInfoProperty sip)
	{
		this.sip = sip;
	}
}
