using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class AddNewToolStripItemEventArgs : EventArgs
{
	public Type Type;

	public AddNewToolStripItemEventArgs(Type type)
	{
		if (type == null)
		{
			throw new ArgumentNullException("type");
		}
		if (!type.IsSubclassOf(typeof(ToolStripItem)))
		{
			throw new ArgumentOutOfRangeException("type");
		}
		Type = type;
	}
}
