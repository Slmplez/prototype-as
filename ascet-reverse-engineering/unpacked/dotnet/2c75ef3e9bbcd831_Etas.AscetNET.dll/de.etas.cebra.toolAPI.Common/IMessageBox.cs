using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IMessageBox : IDialog, IUserInterface, ITransientItem
{
	bool Close();
}
