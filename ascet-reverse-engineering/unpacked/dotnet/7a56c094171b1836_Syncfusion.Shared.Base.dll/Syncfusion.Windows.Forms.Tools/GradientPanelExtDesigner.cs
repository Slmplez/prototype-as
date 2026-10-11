using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class GradientPanelExtDesigner : ParentControlDesigner
{
	private Primitive m_selectedPrimitve;

	private Size MouseOffset = Size.Empty;

	private ISelectionService SelectionService;

	private Primitive SelectedPrimitive
	{
		get
		{
			return m_selectedPrimitve;
		}
		set
		{
			if (value != m_selectedPrimitve)
			{
				OnBeforeSelectedPrimitive();
				m_selectedPrimitve = value;
				OnAfterSelectedPrimitive();
			}
		}
	}

	private GradientPanelExt OwnerControl => Control as GradientPanelExt;

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		SelectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (SelectionService != null)
		{
			SelectionService.SelectionChanged += SelectionService_SelectionChanged;
		}
	}

	protected override void OnMouseDragMove(int x, int y)
	{
		if (SelectedPrimitive == null)
		{
			base.OnMouseDragMove(x, y);
			return;
		}
		Point point = OwnerControl.PointToClient(new Point(x, y));
		Point mouseLocation = new Point(point.X - MouseOffset.Width, point.Y - MouseOffset.Height);
		OwnerControl.SuspendLayout();
		SetAlignmentPrimitive(SelectedPrimitive, mouseLocation);
		SetPositionPrimitive(SelectedPrimitive, mouseLocation);
		OwnerControl.ResumeLayout();
	}

	private HostPrimitive GetHostPrimitiveForDrag(Control dragContro)
	{
		HostPrimitive result = null;
		if (dragContro != null && OwnerControl != null && OwnerControl.Primitives != null)
		{
			foreach (Primitive primitive in OwnerControl.Primitives)
			{
				if (primitive is HostPrimitive hostPrimitive && hostPrimitive.IsContainControl(dragContro))
				{
					result = hostPrimitive;
					break;
				}
			}
		}
		return result;
	}

	protected override void OnMouseDragEnd(bool cancel)
	{
		base.OnMouseDragEnd(cancel);
		OwnerControl.MakeDirty();
	}

	protected override void OnMouseDragBegin(int x, int y)
	{
		Primitive dragPrimitive = GetDragPrimitive(x, y);
		SelectedPrimitive = dragPrimitive;
		if (SelectedPrimitive != null)
		{
			Point point = OwnerControl.PointToClient(new Point(x, y));
			MouseOffset = new Size(point.X - SelectedPrimitive.Bounds.X, point.Y - SelectedPrimitive.Bounds.Y);
		}
		base.OnMouseDragBegin(x, y);
		if (SelectedPrimitive != null && SelectionService != null && SelectionService.PrimarySelection != SelectedPrimitive)
		{
			ArrayList arrayList = new ArrayList();
			arrayList.Add(SelectedPrimitive);
			SelectionService.SetSelectedComponents(arrayList);
		}
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
		if (SelectionService != null)
		{
			SelectionService.SelectionChanged -= SelectionService_SelectionChanged;
		}
	}

	private Rectangle GetLocationRect(Alignment alignment)
	{
		Rectangle result = Rectangle.Empty;
		int num = OwnerControl.BorderGap + OwnerControl.CornerRadius;
		if (OwnerControl == null || !OwnerControl.Collapsed || OwnerControl.CollapseAlignment == alignment)
		{
			switch (alignment)
			{
			case Alignment.Top:
				result = new Rectangle(OwnerControl.ClientRectangle.X + num, OwnerControl.ClientRectangle.Y, OwnerControl.ClientRectangle.Width - 2 * num, num);
				break;
			case Alignment.Bottom:
				result = new Rectangle(OwnerControl.ClientRectangle.X + num, OwnerControl.ClientRectangle.Bottom - num, OwnerControl.ClientRectangle.Width - 2 * num, num);
				break;
			case Alignment.Left:
				result = new Rectangle(OwnerControl.ClientRectangle.X, OwnerControl.ClientRectangle.Y + num, num, OwnerControl.ClientRectangle.Height - 2 * num);
				break;
			case Alignment.Right:
				result = new Rectangle(OwnerControl.ClientRectangle.Right - num, OwnerControl.ClientRectangle.Y + num, num, OwnerControl.ClientRectangle.Height - 2 * num);
				break;
			}
		}
		return result;
	}

	private void SetAlignmentPrimitive(Primitive primitive, Point mouseLocation)
	{
		if (primitive != null && mouseLocation != Point.Empty && OwnerControl != null)
		{
			Alignment alignment = primitive.Alignment;
			if (GetLocationRect(Alignment.Top).Contains(mouseLocation))
			{
				alignment = Alignment.Top;
			}
			else if (GetLocationRect(Alignment.Bottom).Contains(mouseLocation))
			{
				alignment = Alignment.Bottom;
			}
			else if (GetLocationRect(Alignment.Left).Contains(mouseLocation))
			{
				alignment = Alignment.Left;
			}
			else if (GetLocationRect(Alignment.Right).Contains(mouseLocation))
			{
				alignment = Alignment.Right;
			}
			primitive.Alignment = alignment;
		}
	}

	private void SetPositionPrimitive(Primitive primitive, Point mouseLocation)
	{
		if (primitive == null || !(mouseLocation != Point.Empty) || OwnerControl == null)
		{
			return;
		}
		int num = 0;
		int num2 = 0;
		int position = primitive.Position;
		if (primitive.Alignment == Alignment.Top || primitive.Alignment == Alignment.Bottom)
		{
			num2 = OwnerControl.GetEndPosition(primitive.Alignment).X;
			num2 -= primitive.Bounds.Width;
			num = OwnerControl.GetStartPosition(primitive.Alignment).X;
		}
		else
		{
			num2 = OwnerControl.GetEndPosition(primitive.Alignment).Y;
			num2 -= primitive.Bounds.Height;
			num = OwnerControl.GetStartPosition(primitive.Alignment).Y;
		}
		switch (primitive.Alignment)
		{
		case Alignment.Top:
			if (mouseLocation.X > num && mouseLocation.X < num2)
			{
				position = mouseLocation.X - primitive.Bounds.Left;
				position += primitive.Position;
			}
			break;
		case Alignment.Bottom:
			if (mouseLocation.X > num && mouseLocation.X < num2)
			{
				position = mouseLocation.X - primitive.Bounds.Left;
				position += primitive.Position;
			}
			break;
		case Alignment.Left:
			if (mouseLocation.Y > num && mouseLocation.Y < num2)
			{
				position = mouseLocation.Y - primitive.Bounds.Top;
				position += primitive.Position;
			}
			break;
		case Alignment.Right:
			if (mouseLocation.Y > num && mouseLocation.Y < num2)
			{
				position = mouseLocation.Y - primitive.Bounds.Top;
				position += primitive.Position;
			}
			break;
		}
		primitive.Position = position;
		primitive.Invalidate();
	}

	private Primitive GetDragPrimitive(int x, int y)
	{
		Primitive result = null;
		if (OwnerControl != null)
		{
			Point pt = OwnerControl.PointToClient(new Point(x, y));
			foreach (Primitive primitive in OwnerControl.Primitives)
			{
				if (primitive.Bounds.Contains(pt))
				{
					result = primitive;
					break;
				}
			}
		}
		return result;
	}

	private void OnBeforeSelectedPrimitive()
	{
		if (m_selectedPrimitve != null)
		{
			m_selectedPrimitve.Selected = false;
		}
	}

	private void OnAfterSelectedPrimitive()
	{
		if (m_selectedPrimitve != null)
		{
			m_selectedPrimitve.Selected = true;
		}
	}

	private void SelectionService_SelectionChanged(object sender, EventArgs e)
	{
		Primitive primitive = SelectionService.PrimarySelection as Primitive;
		if (primitive == null && SelectionService.PrimarySelection != OwnerControl)
		{
			if (OwnerControl.IsControlHostControl(SelectionService.PrimarySelection as Control))
			{
				SelectedPrimitive = GetHostPrimitiveForDrag(SelectionService.PrimarySelection as Control);
				ArrayList arrayList = new ArrayList();
				arrayList.Add(SelectedPrimitive);
				SelectionService.SetSelectedComponents(arrayList);
			}
			else
			{
				SelectedPrimitive = null;
			}
		}
	}
}
