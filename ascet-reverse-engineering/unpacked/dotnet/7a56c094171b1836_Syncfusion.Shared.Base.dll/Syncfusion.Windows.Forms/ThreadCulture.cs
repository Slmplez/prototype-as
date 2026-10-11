using System.Globalization;
using System.Threading;

namespace Syncfusion.Windows.Forms;

public class ThreadCulture
{
	public static event CultureChangedEventHandler CultureChanged;

	protected static void HandleCultureChangedEvent(object sender, CultureChangedEventArgs e)
	{
		OnCultureChanged(sender, e);
	}

	public static void SetCurrentCulture(CultureInfo newInfo)
	{
		CultureInfo currentCulture = Thread.CurrentThread.CurrentCulture;
		Thread.CurrentThread.CurrentCulture = newInfo;
		if (currentCulture != newInfo)
		{
			RaiseCultureChangedEvent(currentCulture.LCID, newInfo.LCID, CultureChangedReason.ThreadCulture);
		}
	}

	private static void RaiseCultureChangedEvent(int currentLCID, int newLCID, CultureChangedReason reason)
	{
		CultureChangedEventArgs e = new CultureChangedEventArgs(currentLCID, newLCID, reason);
		OnCultureChanged(Thread.CurrentThread, e);
	}

	private static void OnCultureChanged(object sender, CultureChangedEventArgs e)
	{
		if (ThreadCulture.CultureChanged != null)
		{
			ThreadCulture.CultureChanged(sender, e);
		}
	}
}
