using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.Text;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Microsoft.Win32;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Controls.MultiColumnTreeView.Designers;

public sealed class MultilineStringEditor : UITypeEditor
{
	private class MultilineStringEditorUI : RichTextBox
	{
		private const int _caretPadding = 3;

		private const int _workAreaPadding = 16;

		private readonly StringFormat _watermarkFormat;

		private bool _contentsResizedRaised;

		private bool _ctrlEnterPressed;

		private IWindowsFormsEditorService _editorService;

		private bool _escapePressed;

		private Hashtable _fallbackFonts;

		private Size _minimumSize = Size.Empty;

		private SolidBrush _watermarkBrush;

		private Size _watermarkSize = Size.Empty;

		private Size ContentSize
		{
			get
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect = default(Syncfusion.Runtime.InteropServices.NativeMethods.RECT);
				IntPtr dC = Syncfusion.Runtime.InteropServices.NativeMethods.GetDC(IntPtr.Zero);
				IntPtr hObject = Font.ToHfont();
				IntPtr hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(dC, hObject);
				try
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.DrawText(dC, Text, Text.Length, ref lpRect, 1024);
				}
				finally
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(hObject);
					Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(dC, hObject2);
					Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseDC(IntPtr.Zero, dC);
				}
				return new Size(lpRect.right - lpRect.left + 3, lpRect.bottom - lpRect.top);
			}
		}

		public override Font Font
		{
			get
			{
				return base.Font;
			}
			set
			{
			}
		}

		public override Size MinimumSize
		{
			get
			{
				if (_minimumSize == Size.Empty)
				{
					Rectangle workingArea = Screen.GetWorkingArea(this);
					_minimumSize = new Size((int)Math.Min(Math.Ceiling((double)WatermarkSize.Width * 1.75), workingArea.Width / 4), Math.Min(Font.Height * 10, workingArea.Height / 4));
				}
				return _minimumSize;
			}
		}

		private bool ShouldShowWatermark
		{
			get
			{
				if (Text.Length != 0)
				{
					return false;
				}
				return WatermarkSize.Width < base.ClientSize.Width;
			}
		}

		public override string Text
		{
			get
			{
				if (!base.IsHandleCreated)
				{
					return string.Empty;
				}
				int capacity = Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowTextLength(base.Handle) + 1;
				StringBuilder stringBuilder = new StringBuilder(capacity);
				Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowText(base.Handle, stringBuilder, stringBuilder.Capacity);
				if (!_ctrlEnterPressed)
				{
					return stringBuilder.ToString();
				}
				string text = stringBuilder.ToString();
				int startIndex = text.LastIndexOf("\r\n");
				return text.Remove(startIndex, 2);
			}
			set
			{
				base.Text = value;
			}
		}

		internal object Value => Text;

		private Brush WatermarkBrush
		{
			get
			{
				if (_watermarkBrush == null)
				{
					Color color = SystemColors.Window;
					Color windowText = SystemColors.WindowText;
					Color color2 = Color.FromArgb((short)((double)(int)windowText.R * 0.3 + (double)(int)color.R * 0.7), (short)((double)(int)windowText.G * 0.3 + (double)(int)color.G * 0.7), (short)((double)(int)windowText.B * 0.3 + (double)(int)color.B * 0.7));
					_watermarkBrush = new SolidBrush(color2);
				}
				return _watermarkBrush;
			}
		}

		private Size WatermarkSize
		{
			get
			{
				if (_watermarkSize == Size.Empty)
				{
					SizeF sizeF = SizeF.Empty;
					using (Graphics graphics = CreateGraphics())
					{
						sizeF = graphics.MeasureString(SR.GetString("MultilineStringEditorWatermark"), Font);
					}
					_watermarkSize = new Size((int)Math.Ceiling(sizeF.Width), (int)Math.Ceiling(sizeF.Height));
				}
				return _watermarkSize;
			}
		}

		internal MultilineStringEditorUI()
		{
			InitializeComponent();
			_watermarkFormat = new StringFormat();
			_watermarkFormat.Alignment = StringAlignment.Center;
			_watermarkFormat.LineAlignment = StringAlignment.Center;
			_fallbackFonts = new Hashtable(2);
		}

		internal void BeginEdit(IWindowsFormsEditorService editorService, object value)
		{
			_editorService = editorService;
			_minimumSize = Size.Empty;
			_watermarkSize = Size.Empty;
			_escapePressed = false;
			_ctrlEnterPressed = false;
			Text = (string)value;
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing && _watermarkBrush != null)
			{
				_watermarkBrush.Dispose();
				_watermarkBrush = null;
			}
			base.Dispose(disposing);
		}

		internal bool EndEdit()
		{
			_editorService = null;
			_ctrlEnterPressed = false;
			Text = null;
			return !_escapePressed;
		}

		private void InitializeComponent()
		{
			base.RichTextShortcutsEnabled = false;
			base.WordWrap = false;
			base.BorderStyle = System.Windows.Forms.BorderStyle.None;
			this.Multiline = true;
			base.ScrollBars = System.Windows.Forms.RichTextBoxScrollBars.Both;
			base.DetectUrls = false;
		}

		protected override bool IsInputKey(Keys keyData)
		{
			if ((keyData & Keys.KeyCode) != Keys.Return || !Multiline || (keyData & Keys.Alt) != Keys.None)
			{
				return base.IsInputKey(keyData);
			}
			return true;
		}

		protected override void OnContentsResized(ContentsResizedEventArgs e)
		{
			_contentsResizedRaised = true;
			ResizeToContent();
			base.OnContentsResized(e);
		}

		protected override void OnKeyDown(KeyEventArgs e)
		{
			if (ShouldShowWatermark)
			{
				Invalidate();
			}
			if (e.Control && e.KeyCode == Keys.Return && e.Modifiers == Keys.Control)
			{
				_editorService.CloseDropDown();
				_ctrlEnterPressed = true;
			}
		}

		protected override void OnTextChanged(EventArgs e)
		{
			if (!_contentsResizedRaised)
			{
				ResizeToContent();
			}
			_contentsResizedRaised = false;
			base.OnTextChanged(e);
		}

		protected override void OnVisibleChanged(EventArgs e)
		{
			if (base.Visible)
			{
				ProcessSurrogateFonts(0, Text.Length);
				Select(Text.Length, 0);
			}
			ResizeToContent();
			base.OnVisibleChanged(e);
		}

		protected override bool ProcessDialogKey(Keys keyData)
		{
			if ((keyData & (Keys.Shift | Keys.Alt)) == 0)
			{
				Keys keys = keyData & Keys.KeyCode;
				if (keys == Keys.Escape && (keyData & Keys.Control) == 0)
				{
					_escapePressed = true;
				}
			}
			return base.ProcessDialogKey(keyData);
		}

		public void ProcessSurrogateFonts(int start, int length)
		{
			string text = Text;
			if (text == null)
			{
				return;
			}
			int[] array = StringInfo.ParseCombiningCharacters(text);
			if (array.Length == text.Length)
			{
				return;
			}
			for (int i = 0; i < array.Length; i++)
			{
				if (array[i] < start || array[i] >= start + length)
				{
					continue;
				}
				string text2 = null;
				char c = text[array[i]];
				char c2 = '\0';
				if (array[i] + 1 < text.Length)
				{
					c2 = text[array[i] + 1];
				}
				if (c < '\ud800' || c > '\udbff' || c2 < '\udc00' || c2 > '\udfff')
				{
					continue;
				}
				int num = c / 64 - 864 + 1;
				Font font = _fallbackFonts[num] as Font;
				if (font == null)
				{
					using RegistryKey registryKey = Registry.LocalMachine.OpenSubKey("SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\LanguagePack\\SurrogateFallback");
					if (registryKey != null)
					{
						text2 = (string)registryKey.GetValue("Plane" + num);
						if (text2 != null && string.Empty != text2)
						{
							font = new Font(text2, base.Font.Size, base.Font.Style);
						}
						_fallbackFonts[num] = font;
					}
				}
				if (font != null)
				{
					int length2 = ((i == array.Length - 1) ? (text.Length - array[i]) : (array[i + 1] - array[i]));
					Select(array[i], length2);
					base.SelectionFont = font;
				}
			}
		}

		private void ResizeToContent()
		{
			if (base.Visible)
			{
				Size contentSize = ContentSize;
				contentSize.Width += SystemInformation.VerticalScrollBarWidth;
				contentSize.Width = Math.Max(contentSize.Width, MinimumSize.Width);
				Rectangle workingArea = Screen.GetWorkingArea(this);
				int val = PointToScreen(base.Location).X - workingArea.Left;
				int num = Math.Min(contentSize.Width - base.ClientSize.Width, val);
				base.ClientSize = new Size(base.ClientSize.Width + num, MinimumSize.Height);
			}
		}

		protected override void WndProc(ref Message m)
		{
			base.WndProc(ref m);
			if (m.Msg == 15 && ShouldShowWatermark)
			{
				using (Graphics graphics = CreateGraphics())
				{
					graphics.DrawString(SR.GetString("MultilineStringEditorWatermark"), Font, WatermarkBrush, new RectangleF(0f, 0f, base.ClientSize.Width, base.ClientSize.Height), _watermarkFormat);
				}
			}
		}
	}

	private MultilineStringEditorUI _editorUI;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (provider != null)
		{
			IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (windowsFormsEditorService == null)
			{
				return value;
			}
			if (_editorUI == null)
			{
				_editorUI = new MultilineStringEditorUI();
			}
			_editorUI.BeginEdit(windowsFormsEditorService, value);
			windowsFormsEditorService.DropDownControl(_editorUI);
			object value2 = _editorUI.Value;
			if (_editorUI.EndEdit())
			{
				value = value2;
			}
		}
		return value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}

	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return false;
	}
}
