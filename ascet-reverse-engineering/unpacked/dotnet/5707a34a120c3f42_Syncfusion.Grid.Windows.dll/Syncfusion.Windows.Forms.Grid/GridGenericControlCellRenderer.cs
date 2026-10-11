using System.Drawing;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridGenericControlCellRenderer : GridStaticCellRenderer
{
	private Control control;

	private Rectangle bounds = Rectangle.Empty;

	private Control rControl;

	public GridGenericControlCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.SupportsFocusControl = true;
	}

	private Size EnlargeWithScrollbars(Size size)
	{
		if (base.Grid.PrintingMode)
		{
			size.Width += SystemInformation.VerticalScrollBarWidth + 2;
			size.Height += SystemInformation.HorizontalScrollBarHeight + 2;
		}
		return size;
	}

	private void BeginResizeNoPaint(Control c, Size size)
	{
		rControl = c;
		ActiveXSnapshot.BeginResizeNoPaint(c, size, out bounds);
	}

	private void EndResizeNoPaint()
	{
		Control c = rControl;
		ActiveXSnapshot.EndResizeNoPaint(c, bounds);
	}

	private void MakeUnBuffered(Control control)
	{
		MethodInfo method = typeof(Control).GetMethod("SetStyle", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.InvokeMethod);
		if (method != null)
		{
			method.Invoke(control, new object[2]
			{
				WhidbeyCompatibleControlStyles.DoubleBuffer,
				false
			});
		}
		foreach (Control control2 in control.Controls)
		{
			control2.CausesValidation = false;
			MakeUnBuffered(control2);
		}
	}

	protected void FixControlParent(Control control)
	{
		if (control.Parent == base.Grid && control.Visible)
		{
			return;
		}
		control.Location = new Point(10000, 10000);
		foreach (Control control2 in control.Controls)
		{
			control2.CausesValidation = false;
			MakeUnBuffered(control2);
		}
		control.CausesValidation = false;
		control.Anchor = AnchorStyles.None;
		control.Dock = DockStyle.None;
		base.Grid.GetWindow().Controls.Add(control);
		control.Visible = true;
		SetControl(control);
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		Control control = style.Control;
		if (control == null)
		{
			return;
		}
		FixControlParent(control);
		if (ShouldDrawFocused(rowIndex, colIndex))
		{
			control.Size = clientRectangle.Size;
			control.Location = clientRectangle.Location;
			if (!control.ContainsFocus)
			{
				control.Focus();
			}
			return;
		}
		Bitmap bitmap = null;
		Size size = EnlargeWithScrollbars(clientRectangle.Size);
		if (control is AxHost)
		{
			AxHost axHost = (AxHost)control;
			object ocx = axHost.GetOcx();
			BeginResizeNoPaint(axHost, size);
			FixControlParent(control);
			bitmap = ActiveXSnapshot.TakeSnapshot(ocx);
			EndResizeNoPaint();
		}
		else
		{
			BeginResizeNoPaint(control, size);
			bitmap = ActiveXSnapshot.PrintWindow(control);
			EndResizeNoPaint();
		}
		if (bitmap != null)
		{
			Region clip = g.Clip;
			g.IntersectClip(clientRectangle);
			if (g.DpiY > 96f || GridControlBase.UseImageListDrawing)
			{
				g.DrawImage(bitmap, clientRectangle);
			}
			else
			{
				g.DrawImageUnscaled(bitmap, clientRectangle);
			}
			g.Clip = clip;
		}
	}

	protected override bool OnActivating(int rowIndex, int colIndex)
	{
		object obj = base.Grid.Model[rowIndex, colIndex].Control;
		if (obj is Control)
		{
			control = (Control)obj;
			SetControl(control);
		}
		return base.OnActivating(rowIndex, colIndex);
	}

	public override void Hide()
	{
		object obj = base.StyleInfo.Control;
		if (obj is Control)
		{
			control = (Control)obj;
			SetControl(control);
		}
		base.Hide();
	}

	protected override void OnHasFocusControlChanged()
	{
		base.OnHasFocusControlChanged();
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		base.CurrentCell.BeginEdit();
		base.OnInitialize(rowIndex, colIndex);
	}

	protected override void OnClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (base.Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex))
		{
			GridCellLayout cellLayout = GetCellLayout(rowIndex, colIndex, base.Grid.Model[rowIndex, colIndex]);
			cellLayout.ClientRectangle.Contains(new Point(e.X, e.Y));
			Control control = base.Control;
			if (control != null)
			{
				base.CurrentCell.BeginEdit();
				if (base.CurrentCell.HasControlFocus && e.Button == MouseButtons.Left)
				{
					base.Grid.Update();
					Point location = cellLayout.ClientRectangle.Location;
					Point point = new Point(e.X - location.X, e.Y - location.Y);
					ActiveXSnapshot.FakeLeftMouseClick(control, point);
				}
			}
		}
		base.OnClick(rowIndex, colIndex, e);
	}
}
