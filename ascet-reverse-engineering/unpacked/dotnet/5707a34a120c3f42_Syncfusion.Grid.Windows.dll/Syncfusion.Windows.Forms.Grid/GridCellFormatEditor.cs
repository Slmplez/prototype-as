using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridCellFormatEditor : UITypeEditor
{
	public struct FormatMask
	{
		private string mask;

		private string description;

		private Type type;

		public string Mask
		{
			get
			{
				return mask;
			}
			set
			{
				mask = value;
			}
		}

		public string Description
		{
			get
			{
				return description;
			}
			set
			{
				description = value;
			}
		}

		public Type Type
		{
			get
			{
				return type;
			}
			set
			{
				type = value;
			}
		}

		public FormatMask(Type type, string mask, string description)
		{
			this.type = type;
			this.mask = mask;
			this.description = description;
		}

		public static bool IsSafeWideningConversion(Type target, Type source)
		{
			if (target == null)
			{
				throw new ArgumentNullException("target");
			}
			if (source == null)
			{
				throw new ArgumentNullException("source");
			}
			if (source == typeof(byte))
			{
				if (!(target == typeof(char)) && !(target == typeof(ushort)) && !(target == typeof(short)) && !(target == typeof(uint)) && !(target == typeof(int)) && !(target == typeof(ulong)) && !(target == typeof(long)) && !(target == typeof(float)) && !(target == typeof(double)) && !(target == typeof(decimal)))
				{
					return target == typeof(object);
				}
				return true;
			}
			if (source == typeof(sbyte))
			{
				if (!(target == typeof(short)) && !(target == typeof(int)) && !(target == typeof(long)) && !(target == typeof(float)) && !(target == typeof(double)) && !(target == typeof(decimal)))
				{
					return target == typeof(object);
				}
				return true;
			}
			if (source == typeof(short))
			{
				if (!(target == typeof(int)) && !(target == typeof(long)) && !(target == typeof(float)) && !(target == typeof(double)) && !(target == typeof(decimal)))
				{
					return target == typeof(object);
				}
				return true;
			}
			if (source == typeof(ushort))
			{
				if (!(target == typeof(uint)) && !(target == typeof(int)) && !(target == typeof(ulong)) && !(target == typeof(long)) && !(target == typeof(float)) && !(target == typeof(double)) && !(target == typeof(decimal)))
				{
					return target == typeof(object);
				}
				return true;
			}
			if (source == typeof(char))
			{
				if (!(target == typeof(ushort)) && !(target == typeof(short)) && !(target == typeof(uint)) && !(target == typeof(int)) && !(target == typeof(ulong)) && !(target == typeof(long)) && !(target == typeof(float)) && !(target == typeof(double)) && !(target == typeof(decimal)))
				{
					return target == typeof(object);
				}
				return true;
			}
			if (source == typeof(int))
			{
				if (!(target == typeof(long)) && !(target == typeof(float)) && !(target == typeof(double)) && !(target == typeof(decimal)))
				{
					return target == typeof(object);
				}
				return true;
			}
			if (source == typeof(uint))
			{
				if (!(target == typeof(ulong)) && !(target == typeof(long)) && !(target == typeof(float)) && !(target == typeof(double)) && !(target == typeof(decimal)))
				{
					return target == typeof(object);
				}
				return true;
			}
			if (source == typeof(long))
			{
				if (!(target == typeof(float)) && !(target == typeof(double)) && !(target == typeof(decimal)))
				{
					return target == typeof(object);
				}
				return true;
			}
			if (source == typeof(ulong))
			{
				if (!(target == typeof(float)) && !(target == typeof(double)) && !(target == typeof(decimal)))
				{
					return target == typeof(object);
				}
				return true;
			}
			if (source == typeof(float))
			{
				if (!(target == typeof(double)))
				{
					return target == typeof(object);
				}
				return true;
			}
			if (source == typeof(double))
			{
				return target == typeof(object);
			}
			if (source == typeof(decimal))
			{
				return target == typeof(object);
			}
			return false;
		}
	}

	[DocumentationExclude]
	private class FormatUI : Form
	{
		private GridCellFormatEditor mainEditor;

		private ListView listView;

		private object editValue;

		private object originalValue;

		private ITypeDescriptorContext context;

		public object EditValue
		{
			get
			{
				return editValue;
			}
			set
			{
				if (editValue == value)
				{
					return;
				}
				editValue = value;
				originalValue = value;
				foreach (ListViewItem item in listView.Items)
				{
					if (item.Text == (string)editValue)
					{
						item.Selected = true;
					}
					else
					{
						item.Selected = false;
					}
				}
			}
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				listView.Click -= listView1_Click;
				base.Controls.Remove(listView);
				editValue = null;
				originalValue = null;
				listView = null;
				mainEditor = null;
			}
			base.Dispose(disposing);
		}

		public FormatUI(GridCellFormatEditor editor, ITypeDescriptorContext context)
		{
			mainEditor = editor;
			this.context = context;
			base.StartPosition = FormStartPosition.WindowsDefaultBounds;
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.FormBorderStyle = FormBorderStyle.None;
			base.TopLevel = false;
			base.ShowInTaskbar = false;
			base.TopMost = true;
			listView = new ListView();
			listView.Dock = DockStyle.Fill;
			listView.BorderStyle = BorderStyle.None;
			listView.FullRowSelect = true;
			listView.HeaderStyle = ColumnHeaderStyle.Nonclickable;
			listView.Location = new Point(8, 16);
			listView.MultiSelect = false;
			listView.Name = "listView";
			listView.Size = new Size(272, 248);
			listView.TabIndex = 0;
			listView.View = View.Details;
			listView.Click += listView1_Click;
			ColumnHeader value = new ColumnHeader
			{
				Text = "Mask"
			};
			ColumnHeader columnHeader = new ColumnHeader
			{
				Text = "Description"
			};
			Type type = null;
			if (context != null)
			{
				GridStyleInfo gridStyleInfo = context.Instance as GridStyleInfo;
				type = gridStyleInfo.CellValueType;
			}
			if (type == null)
			{
				type = typeof(object);
			}
			int num = 0;
			int num2 = 0;
			Graphics graphics = CreateGraphics();
			Hashtable hashtable = new Hashtable();
			FormatMask[] formatMasks = GridCellFormatEditor.formatMasks;
			for (int i = 0; i < formatMasks.Length; i++)
			{
				FormatMask formatMask = formatMasks[i];
				if (!hashtable.Contains(formatMask.Mask) && (type == formatMask.Type || formatMask.Type.IsAssignableFrom(type)))
				{
					string text = SR.GetString(formatMask.Description);
					ListViewItem value2 = new ListViewItem(new string[2] { formatMask.Mask, text });
					listView.Items.Add(value2);
					Size size = graphics.MeasureString(text, listView.Font).ToSize();
					num = Math.Max(size.Width, num);
					num2 = size.Height;
					hashtable[formatMask.Mask] = string.Empty;
				}
			}
			graphics.Dispose();
			columnHeader.Width = num + 2;
			num2 = SystemInformation.VerticalScrollBarWidth + (num2 + 4) * Math.Min(12, listView.Items.Count + 1);
			base.Height = num2;
			base.VScroll = listView.Items.Count > 11;
			listView.Columns.Add(value);
			listView.Columns.Add(columnHeader);
			base.Controls.Add(listView);
		}

		protected override bool ProcessKeyPreview(ref Message m)
		{
			return base.ProcessKeyPreview(ref m);
		}

		private void listView1_Click(object sender, EventArgs e)
		{
			if (listView != null && listView.SelectedItems.Count > 0)
			{
				editValue = listView.SelectedItems[0].Text;
				mainEditor.edSvc.CloseDropDown();
			}
		}
	}

	private IWindowsFormsEditorService edSvc;

	private static FormatMask[] formatMasks = new FormatMask[94]
	{
		new FormatMask(typeof(byte), "C", "NumberFormat_C"),
		new FormatMask(typeof(byte), "D", "NumberFormat_D"),
		new FormatMask(typeof(byte), "E", "NumberFormat_E"),
		new FormatMask(typeof(byte), "F", "NumberFormat_F"),
		new FormatMask(typeof(byte), "G", "NumberFormat_G"),
		new FormatMask(typeof(byte), "N", "NumberFormat_N"),
		new FormatMask(typeof(byte), "P", "NumberFormat_P"),
		new FormatMask(typeof(byte), "X", "NumberFormat_X"),
		new FormatMask(typeof(ushort), "C", "NumberFormat_C"),
		new FormatMask(typeof(ushort), "D", "NumberFormat_D"),
		new FormatMask(typeof(ushort), "E", "NumberFormat_E"),
		new FormatMask(typeof(ushort), "F", "NumberFormat_F"),
		new FormatMask(typeof(ushort), "G", "NumberFormat_G"),
		new FormatMask(typeof(ushort), "N", "NumberFormat_N"),
		new FormatMask(typeof(ushort), "P", "NumberFormat_P"),
		new FormatMask(typeof(ushort), "X", "NumberFormat_X"),
		new FormatMask(typeof(short), "C", "NumberFormat_C"),
		new FormatMask(typeof(short), "D", "NumberFormat_D"),
		new FormatMask(typeof(short), "E", "NumberFormat_E"),
		new FormatMask(typeof(short), "F", "NumberFormat_F"),
		new FormatMask(typeof(short), "G", "NumberFormat_G"),
		new FormatMask(typeof(short), "N", "NumberFormat_N"),
		new FormatMask(typeof(short), "P", "NumberFormat_P"),
		new FormatMask(typeof(short), "X", "NumberFormat_X"),
		new FormatMask(typeof(uint), "C", "NumberFormat_C"),
		new FormatMask(typeof(uint), "D", "NumberFormat_D"),
		new FormatMask(typeof(uint), "E", "NumberFormat_E"),
		new FormatMask(typeof(uint), "F", "NumberFormat_F"),
		new FormatMask(typeof(uint), "G", "NumberFormat_G"),
		new FormatMask(typeof(uint), "N", "NumberFormat_N"),
		new FormatMask(typeof(uint), "P", "NumberFormat_P"),
		new FormatMask(typeof(uint), "X", "NumberFormat_X"),
		new FormatMask(typeof(int), "C", "NumberFormat_C"),
		new FormatMask(typeof(int), "D", "NumberFormat_D"),
		new FormatMask(typeof(int), "E", "NumberFormat_E"),
		new FormatMask(typeof(int), "F", "NumberFormat_F"),
		new FormatMask(typeof(int), "G", "NumberFormat_G"),
		new FormatMask(typeof(int), "N", "NumberFormat_N"),
		new FormatMask(typeof(int), "P", "NumberFormat_P"),
		new FormatMask(typeof(int), "X", "NumberFormat_X"),
		new FormatMask(typeof(ulong), "C", "NumberFormat_C"),
		new FormatMask(typeof(ulong), "D", "NumberFormat_D"),
		new FormatMask(typeof(ulong), "E", "NumberFormat_E"),
		new FormatMask(typeof(ulong), "F", "NumberFormat_F"),
		new FormatMask(typeof(ulong), "G", "NumberFormat_G"),
		new FormatMask(typeof(ulong), "N", "NumberFormat_N"),
		new FormatMask(typeof(ulong), "P", "NumberFormat_P"),
		new FormatMask(typeof(ulong), "X", "NumberFormat_X"),
		new FormatMask(typeof(long), "C", "NumberFormat_C"),
		new FormatMask(typeof(long), "D", "NumberFormat_D"),
		new FormatMask(typeof(long), "E", "NumberFormat_E"),
		new FormatMask(typeof(long), "F", "NumberFormat_F"),
		new FormatMask(typeof(long), "G", "NumberFormat_G"),
		new FormatMask(typeof(long), "N", "NumberFormat_N"),
		new FormatMask(typeof(long), "P", "NumberFormat_P"),
		new FormatMask(typeof(long), "X", "NumberFormat_X"),
		new FormatMask(typeof(float), "C", "NumberFormat_C"),
		new FormatMask(typeof(float), "E", "NumberFormat_E"),
		new FormatMask(typeof(float), "F", "NumberFormat_F"),
		new FormatMask(typeof(float), "G", "NumberFormat_G"),
		new FormatMask(typeof(float), "N", "NumberFormat_N"),
		new FormatMask(typeof(float), "P", "NumberFormat_P"),
		new FormatMask(typeof(float), "R", "NumberFormat_R"),
		new FormatMask(typeof(double), "C", "NumberFormat_C"),
		new FormatMask(typeof(double), "E", "NumberFormat_E"),
		new FormatMask(typeof(double), "F", "NumberFormat_F"),
		new FormatMask(typeof(double), "G", "NumberFormat_G"),
		new FormatMask(typeof(double), "N", "NumberFormat_N"),
		new FormatMask(typeof(double), "P", "NumberFormat_P"),
		new FormatMask(typeof(double), "R", "NumberFormat_R"),
		new FormatMask(typeof(decimal), "C", "NumberFormat_C"),
		new FormatMask(typeof(decimal), "E", "NumberFormat_E"),
		new FormatMask(typeof(decimal), "F", "NumberFormat_F"),
		new FormatMask(typeof(decimal), "G", "NumberFormat_G"),
		new FormatMask(typeof(decimal), "N", "NumberFormat_N"),
		new FormatMask(typeof(decimal), "P", "NumberFormat_P"),
		new FormatMask(typeof(DateTime), "d", "DateTimeFormat_dd"),
		new FormatMask(typeof(DateTime), "D", "DateTimeFormat_D"),
		new FormatMask(typeof(DateTime), "f", "DateTimeFormat_ff"),
		new FormatMask(typeof(DateTime), "F", "DateTimeFormat_F"),
		new FormatMask(typeof(DateTime), "g", "DateTimeFormat_gg"),
		new FormatMask(typeof(DateTime), "G", "DateTimeFormat_G"),
		new FormatMask(typeof(DateTime), "M", "DateTimeFormat_M"),
		new FormatMask(typeof(DateTime), "R", "DateTimeFormat_R"),
		new FormatMask(typeof(DateTime), "s", "DateTimeFormat_ss"),
		new FormatMask(typeof(DateTime), "t", "DateTimeFormat_tt"),
		new FormatMask(typeof(DateTime), "T", "DateTimeFormat_T"),
		new FormatMask(typeof(DateTime), "u", "DateTimeFormat_uu"),
		new FormatMask(typeof(DateTime), "U", "DateTimeFormat_U"),
		new FormatMask(typeof(DateTime), "Y", "DateTimeFormat_Y"),
		new FormatMask(typeof(Enum), "G", "EnumFormat_G"),
		new FormatMask(typeof(Enum), "X", "EnumFormat_X"),
		new FormatMask(typeof(Enum), "D", "EnumFormat_D"),
		new FormatMask(typeof(object), "G", "GeneralFormat_G")
	};

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		if (context != null && context.Instance != null)
		{
			return UITypeEditorEditStyle.DropDown;
		}
		return base.GetEditStyle(context);
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context == null || context.Instance == null || provider == null)
		{
			return value;
		}
		edSvc = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
		if (edSvc == null)
		{
			return value;
		}
		FormatUI formatUI = new FormatUI(this, context);
		formatUI.EditValue = value;
		edSvc.DropDownControl(formatUI);
		value = formatUI.EditValue;
		return value;
	}
}
