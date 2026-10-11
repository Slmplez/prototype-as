using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Provides options to set Office 2007 Style Key Tips.")]
[ProvideProperty("MenuButtonAccelerator", typeof(RibbonControlAdv))]
[TypeConverter(typeof(SuperAcceleratorTypeConverter))]
[ProvideProperty("Accelerator", typeof(ToolStripItem))]
[ToolboxBitmap(typeof(SuperAccelerator), "ToolboxIcons.SuperAccelerator.bmp")]
public class SuperAccelerator : Component, IMessageFilter, IExtenderProvider
{
	private class Accelerator : Control
	{
		private const SetWindowPosFlags SWP_SHOW = SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_SHOWWINDOW;

		private const int VERTEX_RADIUS = 2;

		private int m_refCount;

		private Component m_Component;

		private static Graphics m_graphics;

		private static Blend m_blend;

		public bool Disabled
		{
			get
			{
				if (m_Component is ToolStripItem toolStripItem)
				{
					return !toolStripItem.Enabled;
				}
				return true;
			}
		}

		public int RefCount
		{
			get
			{
				return m_refCount;
			}
			set
			{
				m_refCount = value;
			}
		}

		protected override CreateParams CreateParams
		{
			get
			{
				CreateParams createParams = base.CreateParams;
				createParams.Style = int.MinValue;
				createParams.ExStyle |= 128;
				return createParams;
			}
		}

		private Color AcceleratorBorderColor => Office12ColorTable.GetAlphaBlendedColor(Color.Black, BackColor, 32);

		static Accelerator()
		{
			m_graphics = Graphics.FromImage(new Bitmap(1, 1));
			m_blend = new Blend();
			m_blend.Positions = new float[3] { 0f, 0.6f, 1f };
			m_blend.Factors = new float[3] { 0f, 0.5f, 1f };
		}

		public Accelerator(Component component, string szAccelerator)
			: base(szAccelerator)
		{
			m_Component = component;
		}

		public void ShowWindow()
		{
			IntPtr handle = base.Handle;
			if (OSFeature.Feature.IsPresent(OSFeature.LayeredWindows))
			{
				WindowExStyles windowLong = (WindowExStyles)WindowsAPI.GetWindowLong(handle, -20);
				if (Disabled)
				{
					WindowsAPI.SetWindowLong(handle, -20, (int)(windowLong | WindowExStyles.WS_EX_LAYERED));
					WindowsAPI.SetLayeredWindowAttributes(handle, 0, 160, LayeredWindowFlags.LWA_ALPHA);
				}
				else
				{
					WindowsAPI.SetWindowLong(handle, -20, (int)(windowLong & ~WindowExStyles.WS_EX_LAYERED));
				}
			}
			Size accSize = GetSize();
			Point location = GetLocation(ref accSize);
			WindowsAPI.SetWindowPos(handle, (IntPtr)(-1L), location.X, location.Y, accSize.Width, accSize.Height, SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_SHOWWINDOW);
		}

		public void DestroyWindow()
		{
			DestroyHandle();
		}

		public void PerformClick()
		{
			if (!(m_Component is ToolStripItem { Enabled: not false } toolStripItem))
			{
				return;
			}
			Hide();
			if (toolStripItem is ToolStripControlHost toolStripControlHost)
			{
				if (toolStripControlHost.Control == null)
				{
					return;
				}
				if (toolStripControlHost.Control is ComboBox comboBox)
				{
					if (!comboBox.DroppedDown)
					{
						comboBox.Focus();
						comboBox.DroppedDown = true;
					}
				}
				else
				{
					toolStripControlHost.Control.Focus();
				}
			}
			else if (toolStripItem is ToolStripDropDownItem toolStripDropDownItem)
			{
				toolStripDropDownItem.ShowDropDown();
				toolStripDropDownItem.Owner.Invalidate();
			}
			else
			{
				toolStripItem.PerformClick();
			}
		}

		public bool IsMnemonic(string str)
		{
			return string.Compare(Text, str, ignoreCase: true) == 0;
		}

		public bool IsMatched(string str)
		{
			int length = str.Length;
			if (length != 0)
			{
				return string.Compare(Text, 0, str, 0, length, ignoreCase: true) == 0;
			}
			return true;
		}

		protected override void WndProc(ref Message m)
		{
			Msg msg = (Msg)m.Msg;
			if (msg == Msg.WM_MOUSEACTIVATE)
			{
				m.Result = new IntPtr(3);
			}
			else
			{
				base.WndProc(ref m);
			}
		}

		protected override void OnClick(EventArgs e)
		{
			base.OnClick(e);
			PerformClick();
		}

		protected override void OnSizeChanged(EventArgs e)
		{
			base.OnSizeChanged(e);
			base.Region = RendererUtils.GetRoundedRegion(new Rectangle(Point.Empty, base.Size), 2);
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			Graphics graphics = e.Graphics;
			GraphicsState gstate = graphics.Save();
			graphics.SmoothingMode = SmoothingMode.AntiAlias;
			Rectangle rectangle = new Rectangle(Point.Empty, base.Size);
			using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rectangle, Color.White, BackColor, 90f))
			{
				linearGradientBrush.Blend = m_blend;
				graphics.FillRectangle(linearGradientBrush, rectangle);
			}
			TextRenderer.DrawText(graphics, Text, Font, rectangle, ForeColor);
			using (Pen pen = new Pen(AcceleratorBorderColor))
			{
				graphics.DrawPolygon(pen, RendererUtils.GetRoundedPolygon(rectangle, 2));
			}
			graphics.Restore(gstate);
		}

		private Point GetLocation(ref Size accSize)
		{
			if (m_Component is ToolStripItem toolStripItem)
			{
				Control currentParent = toolStripItem.GetCurrentParent();
				if (currentParent != null)
				{
					Rectangle bounds = toolStripItem.Bounds;
					Point p = bounds.Location + new Size((bounds.Width - accSize.Width) / 2, bounds.Height / 2);
					return currentParent.PointToScreen(p);
				}
			}
			return Point.Empty;
		}

		private Size GetSize()
		{
			return TextRenderer.MeasureText(m_graphics, Text, Font) + new Size(2, 4);
		}
	}

	private class Accelerators : ArrayList
	{
		public bool Disabled
		{
			get
			{
				int i = 0;
				_ = Count;
				for (; i < Count; i++)
				{
					if (this[i] is Accelerator { Disabled: false })
					{
						return false;
					}
				}
				return true;
			}
		}

		public void Update()
		{
			int i = 0;
			for (int count = Count; i < count; i++)
			{
				if (this[i] is Accelerator accelerator)
				{
					accelerator.Invalidate();
				}
			}
		}

		public override int Add(object value)
		{
			if (value is Accelerator accelerator)
			{
				accelerator.RefCount++;
				return base.Add(accelerator);
			}
			return -1;
		}

		public override void Insert(int index, object value)
		{
			if (value is Accelerator accelerator)
			{
				accelerator.RefCount++;
				base.Insert(index, accelerator);
			}
		}

		public override void Clear()
		{
			int i = 0;
			for (int count = Count; i < count; i++)
			{
				if (this[i] is Accelerator accelerator)
				{
					accelerator.RefCount--;
					if (accelerator.RefCount <= 0)
					{
						accelerator.DestroyWindow();
					}
				}
			}
			base.Clear();
		}

		public override bool Contains(object item)
		{
			if (item is IntPtr intPtr)
			{
				int i = 0;
				for (int count = Count; i < count; i++)
				{
					if (this[i] is Accelerator accelerator && accelerator.Handle == intPtr)
					{
						return true;
					}
				}
				return false;
			}
			return base.Contains(item);
		}
	}

	private bool firstTime = true;

	private Control m_Owner;

	private NativeWindowEx m_window;

	private Font m_Font;

	private Color m_BackColor = Color.Empty;

	private Color m_ForeColor = Color.Empty;

	private bool m_bDisplayShortcuts = true;

	private bool m_bActive;

	private bool m_bOwnerIsActive;

	private string m_sCommand;

	private Hashtable m_components;

	private Accelerators m_accelerators;

	private static RedrawWindowFlags updateFlags = (RedrawWindowFlags)385;

	[Category("Appearance")]
	[Description("Gets or sets the font for the accelerator key")]
	public Font Font
	{
		get
		{
			if (m_Font == null)
			{
				return Control.DefaultFont;
			}
			return m_Font;
		}
		set
		{
			m_Font = value;
		}
	}

	[Category("Appearance")]
	[Description("Gets ot sets the backcolor of the accelerator key.")]
	public Color BackColor
	{
		get
		{
			if (m_BackColor == Color.Empty)
			{
				return Color.White;
			}
			return m_BackColor;
		}
		set
		{
			m_BackColor = value;
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the forecolor for the accelerator key text.")]
	public Color ForeColor
	{
		get
		{
			if (m_ForeColor == Color.Empty)
			{
				return SystemColors.ControlText;
			}
			return m_ForeColor;
		}
		set
		{
			m_ForeColor = value;
		}
	}

	[Category("Behavior")]
	[Description("Gets or sets whether the accelerator should be active or not.")]
	[DefaultValue(true)]
	public bool Active
	{
		get
		{
			return m_bActive;
		}
		set
		{
			if (m_bActive != value)
			{
				m_bActive = value;
				OnActiveChanged();
			}
		}
	}

	[Category("Behavior")]
	[Description("Gets or sets whether an underline should be drawn under the accelerator text.")]
	[DefaultValue(true)]
	public bool DisplayShortcuts
	{
		get
		{
			return m_bDisplayShortcuts;
		}
		set
		{
			if (m_bDisplayShortcuts != value)
			{
				m_bDisplayShortcuts = value;
				if (m_accelerators.Count > 0)
				{
					m_accelerators.Update();
				}
			}
		}
	}

	private bool IsActive
	{
		get
		{
			if (m_Owner != null && (m_Owner.Site == null || !m_Owner.Site.DesignMode))
			{
				return m_bActive;
			}
			return false;
		}
	}

	public SuperAccelerator()
		: this(null)
	{
	}

	public SuperAccelerator(Control owner)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(SuperAccelerator));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		m_Owner = owner;
		m_bActive = true;
		m_components = new Hashtable();
		m_accelerators = new Accelerators();
		if (m_Owner != null)
		{
			m_Owner.HandleCreated += OnOwnerHandleCreated;
			m_Owner.HandleDestroyed += OnOwnerHandleDestroyed;
			if (m_Owner.IsHandleCreated)
			{
				OnOwnerHandleCreated(m_Owner, EventArgs.Empty);
			}
		}
	}

	private bool ShouldSerializeFont()
	{
		return m_Font != null;
	}

	private void ResetFont()
	{
		m_Font = null;
	}

	private bool ShouldSerializeBackColor()
	{
		return m_BackColor != Color.Empty;
	}

	private void ResetBackColor()
	{
		m_BackColor = Color.Empty;
	}

	private bool ShouldSerializeForeColor()
	{
		return m_ForeColor != Color.Empty;
	}

	private void ResetForeColor()
	{
		m_ForeColor = Color.Empty;
	}

	bool IExtenderProvider.CanExtend(object extendee)
	{
		if (extendee is ToolStripItem || extendee is RibbonControlAdv)
		{
			return true;
		}
		return false;
	}

	[Description("Gets or sets accelerator associated with the component.")]
	[ExtenderProvidedProperty]
	public string GetAccelerator(ToolStripItem component)
	{
		if (component != null && m_components.ContainsKey(component))
		{
			Accelerator accelerator = m_components[component] as Accelerator;
			return accelerator.Text;
		}
		return null;
	}

	[ExtenderProvidedProperty]
	[Description("Gets or sets accelerator associated with the component.")]
	public void SetAccelerator(ToolStripItem component, string value)
	{
		if (component == null)
		{
			return;
		}
		string text = value;
		if (text != null)
		{
			while (true)
			{
				int num = text.IndexOf('&');
				if (num < 0)
				{
					break;
				}
				text = text.Remove(num, 1);
			}
		}
		if (text != null && text.Length > 0)
		{
			if (m_components.ContainsKey(component))
			{
				if (m_components[component] is Accelerator accelerator)
				{
					accelerator.Text = text;
				}
			}
			else
			{
				Accelerator accelerator2 = new Accelerator(component, text.ToUpper());
				accelerator2.Click += OnAcceleratorClick;
				accelerator2.Disposed += OnAcceleratorDisposed;
				accelerator2.Paint += OnAcceleratorPaint;
				m_components[component] = accelerator2;
			}
		}
		else if (m_components.ContainsKey(component))
		{
			if (m_components[component] is Accelerator accelerator3)
			{
				accelerator3.Dispose();
			}
			m_components.Remove(component);
		}
	}

	private bool ShouldSerializeAccelerator(ToolStripItem component)
	{
		if (component != null)
		{
			return m_components.ContainsKey(component);
		}
		return false;
	}

	private void ResetAccelerator(ToolStripItem component)
	{
		if (component != null)
		{
			m_components.Remove(component);
		}
	}

	[Description("Gets the accelerator of a MenuButton instance on RibbonControlAdv.")]
	[Category("Menu Button")]
	[ExtenderProvidedProperty]
	public string GetMenuButtonAccelerator(RibbonControlAdv ribbon)
	{
		if (ribbon != null && ribbon.HeaderInternal != null)
		{
			return GetAccelerator(ribbon.HeaderInternal.MenuButton);
		}
		return null;
	}

	[ExtenderProvidedProperty]
	[Description("Assigns the accelerator to a MenuButton instance on RibbonControlAdv.")]
	[Category("Menu Button")]
	public void SetMenuButtonAccelerator(RibbonControlAdv ribbon, string value)
	{
		if (ribbon != null && ribbon.HeaderInternal != null)
		{
			SetAccelerator(ribbon.HeaderInternal.MenuButton, value);
		}
	}

	private bool ShouldSerializeMenuButtonAccelerator(RibbonControlAdv ribbon)
	{
		if (ribbon != null && ribbon.HeaderInternal != null)
		{
			return ShouldSerializeAccelerator(ribbon.HeaderInternal.MenuButton);
		}
		return false;
	}

	private void ResetMenuButtonAccelerator(RibbonControlAdv ribbon)
	{
		SetMenuButtonAccelerator(ribbon, null);
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		bool result = false;
		switch ((Msg)m.Msg)
		{
		case Msg.WM_NCACTIVATE:
			result = OnNcActivate(ref m);
			break;
		case Msg.WM_WINDOWPOSCHANGING:
			HideAccelerators();
			break;
		case Msg.WM_SYSKEYUP:
			firstTime = true;
			break;
		case Msg.WM_SYSKEYDOWN:
			if (m.WParam != (IntPtr)32)
			{
				result = m_bOwnerIsActive && OnChar(ref m);
				if (m.WParam == (IntPtr)18 && firstTime && m_bOwnerIsActive)
				{
					OnSysKeyUp(ref m);
					firstTime = false;
					result = false;
				}
			}
			else if (m.WParam == (IntPtr)32)
			{
				HideAccelerators();
			}
			break;
		case Msg.WM_SYSCHAR:
			result = m_bOwnerIsActive && m_accelerators.Count > 0;
			break;
		case Msg.WM_CHAR:
			result = m_bOwnerIsActive && OnChar(ref m);
			break;
		case Msg.WM_KILLFOCUS:
			firstTime = true;
			break;
		case Msg.WM_NCLBUTTONDOWN:
		case Msg.WM_NCRBUTTONDOWN:
		case Msg.WM_NCMBUTTONDOWN:
		case Msg.WM_LBUTTONDOWN:
		case Msg.WM_RBUTTONDOWN:
		case Msg.WM_MBUTTONDOWN:
			result = m_bOwnerIsActive && OnMouseDown(ref m);
			firstTime = true;
			break;
		}
		return result;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			Detach();
			if (m_Owner != null)
			{
				m_Owner.HandleCreated -= OnOwnerHandleCreated;
				m_Owner.HandleDestroyed -= OnOwnerHandleDestroyed;
			}
			foreach (DictionaryEntry component in m_components)
			{
				if (component.Value is IDisposable disposable)
				{
					disposable.Dispose();
				}
			}
			m_components.Clear();
		}
		base.Dispose(disposing);
	}

	private void OnOwnerHandleCreated(object sender, EventArgs e)
	{
		m_window = new NativeWindowEx(m_Owner.Handle);
		if (IsActive)
		{
			Attach();
		}
	}

	private void OnOwnerHandleDestroyed(object sender, EventArgs e)
	{
		Detach();
	}

	private void OnAcceleratorClick(object sender, EventArgs e)
	{
		m_accelerators.Clear();
	}

	private void OnAcceleratorDisposed(object sender, EventArgs e)
	{
		if (sender is Accelerator accelerator)
		{
			accelerator.Click -= OnAcceleratorClick;
			accelerator.Disposed -= OnAcceleratorDisposed;
			accelerator.Paint -= OnAcceleratorPaint;
		}
	}

	private void OnAcceleratorPaint(object sender, PaintEventArgs e)
	{
		if (sender is Accelerator { Text: var text } accelerator)
		{
			if (DisplayShortcuts && m_sCommand.Length < text.Length)
			{
				text = text.Insert(m_sCommand.Length, "&");
			}
			Color foreColor = (accelerator.Disabled ? SystemColors.GrayText : accelerator.ForeColor);
			TextRenderer.DrawText(e.Graphics, text, accelerator.Font, accelerator.ClientRectangle, foreColor);
		}
	}

	private void OnActiveChanged()
	{
		if (m_Owner != null && m_Owner.IsHandleCreated)
		{
			if (IsActive)
			{
				Attach();
				return;
			}
			HideAccelerators();
			Detach();
		}
	}

	private void Attach()
	{
		if (m_window != null)
		{
			m_window.MessageFilter = this;
		}
		Application.AddMessageFilter(this);
	}

	private void Detach()
	{
		if (m_window != null)
		{
			m_window.MessageFilter = null;
		}
		Application.RemoveMessageFilter(this);
	}

	private bool OnNcActivate(ref Message m)
	{
		m_bOwnerIsActive = m.WParam != IntPtr.Zero;
		if (!m_bOwnerIsActive)
		{
			HideAccelerators();
		}
		return false;
	}

	private bool OnSysKeyUp(ref Message m)
	{
		bool result = m_accelerators.Count > 0;
		if (m.WParam == (IntPtr)18L)
		{
			if (m_accelerators.Count == 0)
			{
				m_sCommand = string.Empty;
				ShowAccelerators();
				result = m_accelerators.Count > 0;
			}
			else
			{
				m_accelerators.Clear();
			}
		}
		return result;
	}

	private bool OnChar(ref Message m)
	{
		if (m_accelerators.Count > 0)
		{
			switch ((VirtualKeys)(int)m.WParam)
			{
			case VirtualKeys.VK_ESCAPE:
				m_accelerators.Clear();
				break;
			case VirtualKeys.VK_BACK:
				if (m_sCommand.Length > 0)
				{
					m_sCommand = m_sCommand.Substring(0, m_sCommand.Length - 1);
					ShowAccelerators();
				}
				break;
			default:
			{
				string text = m_sCommand + (char)(int)m.WParam;
				Accelerators accelerators = GetAccelerators(text);
				if (!accelerators.Disabled)
				{
					m_accelerators.Clear();
					if (accelerators.Count == 1 && accelerators[0] is Accelerator accelerator && accelerator.IsMnemonic(text))
					{
						accelerators.Clear();
						accelerator.PerformClick();
						break;
					}
					m_accelerators = accelerators;
					m_sCommand = text;
					if (DisplayShortcuts)
					{
						accelerators.Update();
					}
				}
				else
				{
					accelerators.Clear();
				}
				break;
			}
			}
			return true;
		}
		return false;
	}

	private bool OnMouseDown(ref Message m)
	{
		if (!m_accelerators.Contains(m.HWnd))
		{
			HideAccelerators();
		}
		return false;
	}

	private void ShowAccelerators()
	{
		foreach (DictionaryEntry component in m_components)
		{
			if (!(component.Key is ToolStripItem { Visible: not false } toolStripItem))
			{
				continue;
			}
			Control currentParent = toolStripItem.GetCurrentParent();
			if (currentParent == null || !currentParent.Created)
			{
				continue;
			}
			Accelerator accelerator = component.Value as Accelerator;
			if (accelerator.IsMatched(m_sCommand))
			{
				if (!m_accelerators.Contains(accelerator))
				{
					accelerator.Font = Font;
					accelerator.BackColor = BackColor;
					accelerator.ForeColor = ForeColor;
					accelerator.ShowWindow();
					m_accelerators.Add(accelerator);
				}
				else if (DisplayShortcuts)
				{
					accelerator.Invalidate();
				}
			}
		}
	}

	private void HideAccelerators()
	{
		if (m_accelerators.Count > 0)
		{
			m_accelerators.Clear();
			WindowsAPI.RedrawWindow(m_Owner.Handle, IntPtr.Zero, IntPtr.Zero, updateFlags);
		}
	}

	private Accelerators GetAccelerators(string str)
	{
		Accelerators accelerators = new Accelerators();
		int i = 0;
		for (int count = m_accelerators.Count; i < count; i++)
		{
			if (m_accelerators[i] is Accelerator accelerator && accelerator.IsMatched(str))
			{
				accelerators.Add(accelerator);
			}
		}
		return accelerators;
	}
}
