namespace Syncfusion.Windows.Forms.Tools;

public class SplashClosedEventArgs
{
	private SplashCloseType splashCloseType;

	public SplashCloseType SplashCloseType => splashCloseType;

	public SplashClosedEventArgs(SplashCloseType splashCloseType)
	{
		this.splashCloseType = splashCloseType;
	}
}
