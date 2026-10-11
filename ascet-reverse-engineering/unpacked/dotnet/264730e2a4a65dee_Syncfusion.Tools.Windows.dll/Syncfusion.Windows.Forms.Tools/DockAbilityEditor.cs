using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public sealed class DockAbilityEditor : UITypeEditor
{
	[ToolboxItem(false)]
	private class DockAbilityUI : Control
	{
		private class InternalArrowControl : Control
		{
			private const int DEF_NEAR = 4;

			private const int DEF_MIDDLE = 12;

			private const int DEF_FAR = 20;

			private const int DEF_RECT_SIZE = 16;

			private DockingStyle m_style;

			private bool m_Checked;

			private Brush m_ActiveBrush;

			private Brush m_InactiveBrush;

			private Color DEF_ACTIVE_COLOR = Color.FromArgb(77, 79, 170);

			private Color DEF_INACTIVE_COLOR = Color.FromArgb(177, 179, 170);

			public bool Checked => m_Checked;

			public DockingStyle Style => m_style;

			public Brush InternalBrush
			{
				get
				{
					if (Checked)
					{
						return m_ActiveBrush;
					}
					return m_InactiveBrush;
				}
			}

			public InternalArrowControl(DockingStyle style, bool bChecked)
			{
				m_style = style;
				m_Checked = bChecked;
				m_ActiveBrush = new SolidBrush(DEF_ACTIVE_COLOR);
				m_InactiveBrush = new SolidBrush(DEF_INACTIVE_COLOR);
			}

			protected override void OnClick(EventArgs e)
			{
				base.OnClick(e);
				m_Checked = !m_Checked;
				Invalidate();
			}

			protected override void OnPaint(PaintEventArgs e)
			{
				base.OnPaint(e);
				if (Style == DockingStyle.Tabbed)
				{
					e.Graphics.FillRectangle(InternalBrush, 4, 4, 16, 16);
					return;
				}
				Point[] array = new Point[3];
				switch (Style)
				{
				case DockingStyle.Left:
				{
					ref Point reference10 = ref array[0];
					reference10 = new Point(4, 12);
					ref Point reference11 = ref array[1];
					reference11 = new Point(20, 4);
					ref Point reference12 = ref array[2];
					reference12 = new Point(20, 20);
					break;
				}
				case DockingStyle.Top:
				{
					ref Point reference7 = ref array[0];
					reference7 = new Point(4, 20);
					ref Point reference8 = ref array[1];
					reference8 = new Point(12, 4);
					ref Point reference9 = ref array[2];
					reference9 = new Point(20, 20);
					break;
				}
				case DockingStyle.Right:
				{
					ref Point reference4 = ref array[0];
					reference4 = new Point(4, 4);
					ref Point reference5 = ref array[1];
					reference5 = new Point(4, 20);
					ref Point reference6 = ref array[2];
					reference6 = new Point(20, 12);
					break;
				}
				case DockingStyle.Bottom:
				{
					ref Point reference = ref array[0];
					reference = new Point(4, 4);
					ref Point reference2 = ref array[1];
					reference2 = new Point(20, 4);
					ref Point reference3 = ref array[2];
					reference3 = new Point(12, 20);
					break;
				}
				}
				e.Graphics.FillPolygon(InternalBrush, array);
			}
		}

		private const int DEF_CONTROL_SIZE = 88;

		private const int DEF_INNER_CONTROL_SIZE = 24;

		private const int DEF_NEAR = 4;

		private const int DEF_MIDDLE = 32;

		private const int DEF_FAR = 60;

		private const int DEF_OUTER_FRAME_WIDTH = 2;

		private const int DEF_FRAME_WIDTH = 4;

		private InternalArrowControl m_left;

		private InternalArrowControl m_top;

		private InternalArrowControl m_right;

		private InternalArrowControl m_bottom;

		private InternalArrowControl m_tabbed;

		private Pen m_LightPen;

		private Pen m_DarkPen;

		private Color DEF_BORDER_LIGHT_COLOR = Color.FromArgb(225, 225, 225);

		private Color DEF_BORDER_DARK_COLOR = Color.FromArgb(200, 200, 200);

		public object Value
		{
			get
			{
				DockAbility dockAbility = DockAbility.None;
				if (m_left.Checked)
				{
					dockAbility |= DockAbility.Left;
				}
				if (m_top.Checked)
				{
					dockAbility |= DockAbility.Top;
				}
				if (m_right.Checked)
				{
					dockAbility |= DockAbility.Right;
				}
				if (m_bottom.Checked)
				{
					dockAbility |= DockAbility.Bottom;
				}
				if (m_tabbed.Checked)
				{
					dockAbility |= DockAbility.Tabbed;
				}
				return dockAbility.ToString();
			}
		}

		public DockAbilityUI()
		{
			m_LightPen = new Pen(DEF_BORDER_LIGHT_COLOR);
			m_DarkPen = new Pen(DEF_BORDER_DARK_COLOR);
			base.Size = new Size(88, 88);
		}

		private void InitializeInnerControls()
		{
			m_left.Bounds = new Rectangle(4, 32, 24, 24);
			m_top.Bounds = new Rectangle(32, 4, 24, 24);
			m_right.Bounds = new Rectangle(60, 32, 24, 24);
			m_bottom.Bounds = new Rectangle(32, 60, 24, 24);
			m_tabbed.Bounds = new Rectangle(32, 32, 24, 24);
		}

		public void End()
		{
			m_left.Dispose();
			m_top.Dispose();
			m_right.Dispose();
			m_bottom.Dispose();
			m_tabbed.Dispose();
		}

		public void Start(object strvalue)
		{
			object obj = Enum.Parse(typeof(DockAbility), strvalue as string);
			m_left = new InternalArrowControl(DockingStyle.Left, ((DockAbility)obj | DockAbility.Left) == (DockAbility)obj);
			m_top = new InternalArrowControl(DockingStyle.Top, ((DockAbility)obj | DockAbility.Top) == (DockAbility)obj);
			m_right = new InternalArrowControl(DockingStyle.Right, ((DockAbility)obj | DockAbility.Right) == (DockAbility)obj);
			m_bottom = new InternalArrowControl(DockingStyle.Bottom, ((DockAbility)obj | DockAbility.Bottom) == (DockAbility)obj);
			m_tabbed = new InternalArrowControl(DockingStyle.Tabbed, ((DockAbility)obj | DockAbility.Tabbed) == (DockAbility)obj);
			base.Controls.Add(m_left);
			base.Controls.Add(m_top);
			base.Controls.Add(m_right);
			base.Controls.Add(m_bottom);
			base.Controls.Add(m_tabbed);
			InitializeInnerControls();
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			base.OnPaint(e);
			Rectangle bounds = base.Bounds;
			for (int i = 1; i < 4; i++)
			{
				bounds.Inflate(-1, -1);
				if (i < 2)
				{
					e.Graphics.DrawRectangle(m_DarkPen, bounds);
				}
				else
				{
					e.Graphics.DrawRectangle(m_LightPen, bounds);
				}
			}
		}
	}

	private DockAbilityUI m_DockAbilityUI;

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (provider != null)
		{
			IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (windowsFormsEditorService == null)
			{
				return value;
			}
			if (m_DockAbilityUI == null)
			{
				m_DockAbilityUI = new DockAbilityUI();
			}
			m_DockAbilityUI.Start(value);
			windowsFormsEditorService.DropDownControl(m_DockAbilityUI);
			value = m_DockAbilityUI.Value;
			m_DockAbilityUI.End();
		}
		return value;
	}
}
