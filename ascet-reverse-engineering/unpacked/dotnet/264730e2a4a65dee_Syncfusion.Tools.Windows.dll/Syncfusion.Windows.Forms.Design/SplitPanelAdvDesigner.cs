using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Design;

internal class SplitPanelAdvDesigner : ParentControlDesigner
{
	private const int DEF_BORDER_OFFSET = 3;

	private const float DEF_MIDDLE_BRIGHTNESS = 0.5f;

	private const float DEF_EPS = 1E-09f;

	private static readonly string[] DEF_PROPERTIES_TO_REMOVE = new string[2] { "Modifiers", "Locked" };

	private SplitPanelAdv m_panel;

	public override SelectionRules SelectionRules => SelectionRules.Locked;

	protected override void PreFilterProperties(IDictionary properties)
	{
		base.PreFilterProperties(properties);
		int i = 0;
		for (int num = DEF_PROPERTIES_TO_REMOVE.Length; i < num; i++)
		{
			properties.Remove(DEF_PROPERTIES_TO_REMOVE[i]);
			properties.Remove(DEF_PROPERTIES_TO_REMOVE[i]);
		}
		PropertyDescriptor propertyDescriptor = null;
		foreach (DictionaryEntry property in properties)
		{
			propertyDescriptor = property.Value as PropertyDescriptor;
			if (propertyDescriptor.Name.Equals("Name"))
			{
				Attribute[] attributes = new Attribute[3]
				{
					BrowsableAttribute.No,
					new EditorBrowsableAttribute(EditorBrowsableState.Never),
					DesignerSerializationVisibilityAttribute.Hidden
				};
				properties[property.Key] = TypeDescriptor.CreateProperty(propertyDescriptor.ComponentType, propertyDescriptor, attributes);
				break;
			}
		}
	}

	protected override void OnContextMenu(int x, int y)
	{
		base.OnContextMenu(x, y);
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_panel = component as SplitPanelAdv;
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		DrawSelectionFrame();
		base.OnPaintAdornments(pe);
	}

	private void DrawSelectionFrame()
	{
		if (m_panel != null)
		{
			using (Graphics graphics = m_panel.CreateGraphics())
			{
				Color backColor = m_panel.BackColor;
				Color color = ((backColor.GetBrightness() - 0.5f < 1E-09f) ? ControlPaint.Light(backColor) : ControlPaint.Dark(backColor));
				Rectangle clientRectangle = m_panel.ClientRectangle;
				ButtonBorderStyle buttonBorderStyle = ButtonBorderStyle.Dashed;
				buttonBorderStyle = ButtonBorderStyle.Dotted;
				ControlPaint.DrawBorder(graphics, clientRectangle, color, buttonBorderStyle);
			}
		}
	}
}
