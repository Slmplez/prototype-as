using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class TabPrimitiveClickEventArgs : CancelEventArgs
{
	private TabPrimitive m_tabPrimitive;

	public TabPrimitive TabPrimitive => m_tabPrimitive;

	public TabPrimitiveClickEventArgs(TabPrimitive tabPrimitive)
	{
		m_tabPrimitive = tabPrimitive;
	}
}
