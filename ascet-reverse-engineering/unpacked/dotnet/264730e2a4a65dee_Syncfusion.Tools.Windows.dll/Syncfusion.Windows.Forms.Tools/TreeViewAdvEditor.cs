using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class TreeViewAdvEditor : TreeViewAdv
{
	private Hashtable m_htControlsBitmaps = new Hashtable();

	internal override bool NeedUpdateCustomControls
	{
		get
		{
			return false;
		}
		set
		{
			base.NeedUpdateCustomControls = value;
		}
	}

	internal TreeViewAdvEditor()
	{
		m_bAutoControlsAdding = false;
	}

	private Bitmap GetControlBitmap(Control control, Rectangle controlBounds)
	{
		Bitmap bitmap = null;
		if (m_htControlsBitmaps.ContainsKey(control))
		{
			bitmap = (Bitmap)m_htControlsBitmaps[control];
		}
		else
		{
			bool visible = control.Visible;
			Point location = control.Location;
			control.Size = controlBounds.Size;
			if (!visible)
			{
				control.Location = new Point(-1000, -1000);
				control.Visible = true;
			}
			bitmap = ActiveXSnapshot.PrintWindow(control);
			m_htControlsBitmaps.Add(control, bitmap);
			if (!visible)
			{
				control.Visible = visible;
				control.Location = location;
			}
		}
		return bitmap;
	}

	internal override int DrawNode(Graphics g, Rectangle clip, TreeNodeAdv node, int y, int level, Point mousePos, bool mouseDown, bool background)
	{
		int result = base.DrawNode(g, clip, node, y, level, mousePos, mouseDown, background);
		if (node.CustomControl != null)
		{
			Rectangle customControlBounds = node.GetCustomControlBounds();
			g.DrawImage(GetControlBitmap(node.CustomControl, customControlBounds), customControlBounds);
		}
		return result;
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (Control.MouseButtons == MouseButtons.Left)
		{
			TreeNodeAdv nodeAtPoint = GetNodeAtPoint(e.X, e.Y);
			if (nodeAtPoint != null && nodeAtPoint != Root && !nodeAtPoint.Enabled && !base.SelectedNodes.Contains(nodeAtPoint) && SetSelectedNode(nodeAtPoint, base.SelectedNodes, TreeViewAdvAction.ByMouse))
			{
				base.ActiveNode = nodeAtPoint;
			}
		}
		base.OnMouseDown(e);
	}
}
