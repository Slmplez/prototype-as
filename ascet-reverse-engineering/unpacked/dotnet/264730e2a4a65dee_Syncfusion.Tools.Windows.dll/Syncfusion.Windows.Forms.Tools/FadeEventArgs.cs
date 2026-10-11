namespace Syncfusion.Windows.Forms.Tools;

internal struct FadeEventArgs
{
	public object Sender;

	public double Opacity;

	public FadeEventArgs(object evSender, double opacity)
	{
		Sender = evSender;
		Opacity = opacity;
	}
}
