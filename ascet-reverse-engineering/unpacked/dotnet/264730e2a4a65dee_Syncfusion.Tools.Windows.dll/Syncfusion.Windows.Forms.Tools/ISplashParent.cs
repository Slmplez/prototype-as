namespace Syncfusion.Windows.Forms.Tools;

public interface ISplashParent
{
	bool BeforeSplashNotify(SplashPanel splashPanelObject);

	void SplashDisplayedNotify(SplashPanel splashPanelObject);

	bool SplashClosingNotify(SplashPanel splashPanelObject);

	void SplashClosedNotify(SplashPanel splashPanelObject, SplashCloseType splashCloseType);
}
