using System.Runtime.InteropServices;

namespace ASCETPluginsBase;

[ComVisible(true)]
public interface IControlASDRMIv1Interface
{
	void SetUserSettings(string xmldata);

	string GetItemData(bool CanPersist);

	void SetItemData(string xmldata);
}
