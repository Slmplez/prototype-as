namespace Syncfusion.Windows.Forms;

public class ThreadCultureSystem : ThreadCulture
{
	private static SystemSettings settingsChangeForm;

	static ThreadCultureSystem()
	{
		settingsChangeForm = new SystemSettings();
		settingsChangeForm.CultureChanged += ThreadCulture.HandleCultureChangedEvent;
		settingsChangeForm.Show();
	}
}
