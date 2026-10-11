using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class DummyForm : Form
{
	private BarManager manager;

	public BarManager BarManager => manager;

	public DummyForm(BarManager manager)
	{
		this.manager = manager;
		manager.Form = this;
		base.ControlBox = false;
		base.FormBorderStyle = FormBorderStyle.None;
		base.Location = new Point(-1000, -1000);
		base.ShowInTaskbar = false;
		base.Size = new Size(0, 0);
		base.StartPosition = FormStartPosition.Manual;
		base.TopLevel = false;
	}
}
