using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.ComponentBannerTextProviders;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms;

[Designer(typeof(BannerTextProviderDesigner))]
[Description("Provides ability to show banner text (text cue) for text box")]
[ProvideProperty("BannerText", typeof(Component))]
[ToolboxBitmap(typeof(BannerTextProvider), "ToolboxIcons.BannerTextProvider.bmp")]
public class BannerTextProvider : Component, IExtenderProvider
{
	public class TextBoxExtender : NativeWindow
	{
		private BannerTextInfo m_info;

		private IExtendableTexBox m_etb;

		private bool m_bIsTextEmpty;

		protected bool IsTextEmpty
		{
			get
			{
				m_bIsTextEmpty = NativeMethods.GetWindowTextLength(base.Handle) == 0;
				return m_bIsTextEmpty;
			}
		}

		protected bool ShouldDrawBanner => IsBannerTextVisible(m_info, m_etb.Focused, IsTextEmpty);

		public IExtendableTexBox ETB => m_etb;

		public TextBoxExtender(BannerTextInfo info, IExtendableTexBox etb)
		{
			m_info = info;
			m_etb = etb;
			Initialize();
		}

		private void Initialize()
		{
			if (m_etb.Handle != IntPtr.Zero)
			{
				SubclassControl();
			}
			else
			{
				m_etb.HandleCreated += TextBoxHandleCreated;
			}
			m_etb.TextBoxTextChanged += TextBoxTextChanged;
		}

		private void SubclassControl()
		{
			m_bIsTextEmpty = NativeMethods.GetWindowTextLength(base.Handle) == 0;
			AssignHandle(m_etb.Handle);
		}

		private void TextBoxHandleCreated(object sender, EventArgs e)
		{
			SubclassControl();
		}

		private void TextBoxTextChanged(object sender, ValueChangedEventArgs e)
		{
			SetIsTextEmpty((string)e.newValue);
			m_etb.Invalidate();
		}

		private void SetIsTextEmpty(string sText)
		{
			m_bIsTextEmpty = sText.Length == 0;
		}

		private bool OnWmPaint()
		{
			bool result = false;
			if (ShouldDrawBanner)
			{
				NativeMethods.PAINTSTRUCT lpPaint = default(NativeMethods.PAINTSTRUCT);
				IntPtr hdc = NativeMethods.BeginPaint(base.Handle, ref lpPaint);
				Graphics g = Graphics.FromHdc(hdc);
				OnPaint(g);
				NativeMethods.EndPaint(base.Handle, ref lpPaint);
				result = true;
			}
			return result;
		}

		protected virtual void OnPaint(Graphics g)
		{
			DrawBannerText(g, m_info, m_etb.BackColor, m_etb.Font, m_etb.RightToLeft, m_etb.ClientRectangle);
		}

		public static void DrawBannerText(Graphics g, BannerTextInfo info, Color bgColor, Font font, RightToLeft rtl, Rectangle clientRect)
		{
			g.FillRectangle(new SolidBrush(bgColor), clientRect);
			using StringFormat stringFormat = new StringFormat(StringFormat.GenericTypographic);
			stringFormat.Alignment = StringAlignment.Near;
			stringFormat.FormatFlags = StringFormatFlags.MeasureTrailingSpaces | StringFormatFlags.NoWrap;
			stringFormat.LineAlignment = StringAlignment.Center;
			stringFormat.Trimming = StringTrimming.EllipsisCharacter;
			if (rtl == RightToLeft.Yes)
			{
				stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
			}
			if (info.Font != null)
			{
				font = info.Font;
			}
			using Brush brush = new SolidBrush(info.Color);
			g.DrawString(info.Text, font, brush, clientRect, stringFormat);
		}

		public static bool IsBannerTextVisible(BannerTextInfo info, bool bFocused, bool bEmptyText)
		{
			bool flag = info.Visible && info.Text.Length > 0;
			if (flag)
			{
				switch (info.Mode)
				{
				case BannerTextMode.FocusMode:
					flag = !bFocused && bEmptyText;
					break;
				case BannerTextMode.EditMode:
					flag = bEmptyText;
					break;
				}
			}
			return flag;
		}

		private void OnInfoChanged()
		{
			if (ShouldDrawBanner)
			{
				m_etb.Invalidate();
			}
		}

		public override void ReleaseHandle()
		{
			if (m_etb != null)
			{
				m_etb.TextBoxTextChanged -= TextBoxTextChanged;
				m_etb.HandleCreated -= TextBoxHandleCreated;
			}
			m_info = null;
			m_etb = null;
			base.ReleaseHandle();
		}

		protected override void WndProc(ref Message m)
		{
			bool flag = false;
			if (m.Msg != 14 && m_info != null && m_etb != null && m_info.Visible)
			{
				switch (m.Msg)
				{
				case 15:
					flag = OnWmPaint();
					break;
				case 7:
				case 8:
					m_etb.Invalidate();
					break;
				}
			}
			if (!flag)
			{
				base.WndProc(ref m);
			}
		}

		protected override void OnHandleChange()
		{
			base.OnHandleChange();
		}
	}

	private static IDictionary s_extendedComponents;

	private static IDictionary s_etb2component;

	private static IDictionary s_info2extenders;

	private static IDictionary s_bannerProviders;

	protected static IDictionary ETB2Component
	{
		get
		{
			if (s_etb2component == null)
			{
				s_etb2component = new Hashtable();
			}
			return s_etb2component;
		}
	}

	public BannerTextProvider()
	{
	}

	public BannerTextProvider(IContainer container)
		: this()
	{
		container.Add(this);
	}

	static BannerTextProvider()
	{
		s_extendedComponents = new Hashtable();
		s_etb2component = null;
		s_info2extenders = new Hashtable();
		s_bannerProviders = new Hashtable();
		RegisterDefaultProviders();
	}

	private static void RegisterDefaultProviders()
	{
		RegisterProvider(new TextBoxBannerTextProvider());
		RegisterProvider(new ComboDropDownBannerTextProvider());
		RegisterProvider(new ComboBoxBannerTextProvider());
		RegisterMoreProviders();
	}

	private static void RegisterMoreProviders()
	{
		Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
		Assembly[] array = assemblies;
		foreach (Assembly assembly in array)
		{
			string name = assembly.GetName().Name;
			if (name == "Syncfusion.Tools.Windows")
			{
				Type type = assembly.GetType("Syncfusion.Windows.Forms.ComponentBannerTextProviders.BannerTextProvider2");
				if (type != null)
				{
					ConstructorInfo constructor = type.GetConstructor(new Type[0]);
					Component component = (Component)constructor.Invoke(null);
					component.Dispose();
				}
			}
		}
	}

	public static void RegisterProvider(IComponentBannerTextProvider provider)
	{
		if (provider != null && !s_bannerProviders.Contains(provider))
		{
			s_bannerProviders.Add(provider.ComponentType, provider);
		}
	}

	bool IExtenderProvider.CanExtend(object extendee)
	{
		bool result = false;
		if (extendee is Component component)
		{
			result = GetProviderForType(component.GetType())?.CanExtend(component) ?? false;
		}
		return result;
	}

	[Localizable(true)]
	[Category("Banner text")]
	public BannerTextInfo GetBannerText(Component component)
	{
		BannerTextInfo bannerTextInfo = null;
		if (component != null)
		{
			if (s_extendedComponents.Contains(component))
			{
				bannerTextInfo = (BannerTextInfo)s_extendedComponents[component];
			}
			else
			{
				bannerTextInfo = new BannerTextInfo();
				SetBannerText(component, bannerTextInfo);
			}
		}
		return bannerTextInfo;
	}

	protected bool ShouldSerializeBannerText(Component component)
	{
		return GetBannerText(component) != BannerTextInfo.Empty;
	}

	protected void ResetBannerText(Component component)
	{
		SetBannerText(component, new BannerTextInfo());
	}

	public void SetBannerText(Component component, BannerTextInfo info)
	{
		if (component == null || !((IExtenderProvider)this).CanExtend((object)component))
		{
			return;
		}
		if (s_extendedComponents.Contains(component))
		{
			if (info != null)
			{
				s_extendedComponents[component] = info;
				return;
			}
			info = (BannerTextInfo)s_extendedComponents[component];
			s_extendedComponents.Remove(component);
			if (!s_info2extenders.Contains(info))
			{
				return;
			}
			ArrayList arrayList = (ArrayList)s_info2extenders[info];
			foreach (TextBoxExtender item in arrayList)
			{
				IExtendableTexBox eTB = item.ETB;
				eTB.HandleCreated -= TextBoxHandleCreated;
				eTB.Dispose();
				ETB2Component.Remove(eTB);
				item.ReleaseHandle();
			}
			s_info2extenders.Remove(info);
		}
		else if (info != null)
		{
			s_extendedComponents[component] = info;
			IComponentBannerTextProvider providerForType = GetProviderForType(component.GetType());
			IExtendableTexBox extendableTexBox = providerForType.GetExtendableTexBox(component, this);
			ETB2Component.Add(extendableTexBox, component);
			if (extendableTexBox.Handle != IntPtr.Zero)
			{
				Extend(component, extendableTexBox);
			}
			extendableTexBox.HandleCreated += TextBoxHandleCreated;
			component.Disposed += OnComponentDisposed;
		}
	}

	protected void Extend(Component component, IExtendableTexBox etb)
	{
		if (!base.DesignMode && etb != null && s_extendedComponents.Contains(component))
		{
			BannerTextInfo bannerTextInfo = (BannerTextInfo)s_extendedComponents[component];
			TextBoxExtender value = new TextBoxExtender(bannerTextInfo, etb);
			ArrayList arrayList = null;
			if (s_info2extenders.Contains(bannerTextInfo))
			{
				arrayList = (ArrayList)s_info2extenders[bannerTextInfo];
			}
			else
			{
				arrayList = new ArrayList();
				s_info2extenders[bannerTextInfo] = arrayList;
			}
			arrayList.Add(value);
		}
	}

	protected void Extend(IExtendableTexBox mainETB, IExtendableTexBox subETB)
	{
		IDictionary eTB2Component = ETB2Component;
		if (eTB2Component.Contains(mainETB))
		{
			Component component = (Component)eTB2Component[mainETB];
			_ = (BannerTextInfo)s_extendedComponents[component];
			eTB2Component.Add(subETB, component);
			Extend(component, subETB);
		}
	}

	protected static void Extend(BannerTextProvider provider, IExtendableTexBox mainETB, IExtendableTexBox subETB)
	{
		provider.Extend(mainETB, subETB);
	}

	private IComponentBannerTextProvider GetProviderForType(Type type)
	{
		IComponentBannerTextProvider result = null;
		if (s_bannerProviders.Contains(type))
		{
			result = (IComponentBannerTextProvider)s_bannerProviders[type];
		}
		else
		{
			foreach (DictionaryEntry s_bannerProvider in s_bannerProviders)
			{
				Type c = (Type)s_bannerProvider.Key;
				if (type.IsSubclassOf(c))
				{
					result = (IComponentBannerTextProvider)s_bannerProvider.Value;
					break;
				}
			}
		}
		return result;
	}

	private void OnComponentDisposed(object sender, EventArgs e)
	{
		if (sender is Component component)
		{
			component.Disposed -= OnComponentDisposed;
			SetBannerText(component, null);
		}
	}

	private void TextBoxHandleCreated(object sender, EventArgs e)
	{
		IExtendableTexBox extendableTexBox = (IExtendableTexBox)sender;
		Component component = (Component)ETB2Component[extendableTexBox];
		Extend(component, extendableTexBox);
	}

	private void TextBoxHandleDestroyed(object sender, EventArgs e)
	{
		throw new Exception("The method or operation is not implemented.");
	}
}
