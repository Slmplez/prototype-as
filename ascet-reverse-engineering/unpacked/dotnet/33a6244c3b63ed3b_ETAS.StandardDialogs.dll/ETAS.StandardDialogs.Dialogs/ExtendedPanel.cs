using System.Windows.Forms;

namespace ETAS.StandardDialogs.Dialogs;

public class ExtendedPanel : Panel
{
	public ExtendedPanel()
	{
		SetStyle(ControlStyles.DoubleBuffer, value: true);
		SetStyle(ControlStyles.ResizeRedraw, value: true);
		SetStyle(ControlStyles.AllPaintingInWmPaint, value: true);
		SetStyle(ControlStyles.UserPaint, value: true);
		InitializeComponent();
	}

	private void InitializeComponent()
	{
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
	}
}
