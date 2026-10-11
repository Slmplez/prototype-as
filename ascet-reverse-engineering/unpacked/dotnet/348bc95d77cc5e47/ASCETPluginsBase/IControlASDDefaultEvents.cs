using System;
using System.Runtime.InteropServices;

namespace ASCETPluginsBase;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface IControlASDDefaultEvents
{
	[DispId(1)]
	void MyDummyEvent(object sender, EventArgs e);
}
