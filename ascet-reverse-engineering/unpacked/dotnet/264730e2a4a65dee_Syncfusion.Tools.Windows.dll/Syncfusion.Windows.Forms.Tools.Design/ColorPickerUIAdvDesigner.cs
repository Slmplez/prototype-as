using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ColorPickerUIAdvDesigner : ColorPickerDesigner
{
	private ColorPickerUIAdv m_colorPicker;

	protected override bool GetHitTest(Point point)
	{
		return true;
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_colorPicker = Control as ColorPickerUIAdv;
		m_colorPicker.MouseDown += Control_MouseDown;
	}

	private void Control_MouseDown(object sender, MouseEventArgs e)
	{
		ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
		ArrayList arrayList = new ArrayList();
		Point point = new Point(e.X, e.Y);
		bool flag = false;
		foreach (ColorUIAdvGroup group in m_colorPicker.Groups)
		{
			if (group.Bounds.Contains(point))
			{
				Point itemUnderPoint = m_colorPicker.GetItemUnderPoint(point);
				ColorItem colorItem = null;
				if (itemUnderPoint.X != -1 && itemUnderPoint.Y != -1)
				{
					flag = true;
					colorItem = m_colorPicker.GetItemFromFocus(itemUnderPoint);
					arrayList.Add(colorItem);
					selectionService.SetSelectedComponents(arrayList);
					break;
				}
			}
		}
		if (!flag && m_colorPicker.ClientRectangle.Contains(point))
		{
			arrayList.Add(m_colorPicker);
			selectionService.SetSelectedComponents(arrayList);
		}
	}
}
