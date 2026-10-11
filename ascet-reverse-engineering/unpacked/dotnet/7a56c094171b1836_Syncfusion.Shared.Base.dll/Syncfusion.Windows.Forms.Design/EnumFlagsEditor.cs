using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Reflection;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Design;

[DocumentationExclude]
public sealed class EnumFlagsEditor : UITypeEditor
{
	[DocumentationExclude]
	private class EnumFlagsUI : Form
	{
		private EnumFlagsEditor mainEditor;

		private CheckedListBox listBox;

		private Button button;

		private object editValue;

		private object originalValue;

		private object emptyValue;

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
				int num = 0;
				string text = "";
				editValue = value;
				originalValue = value;
				button.Visible = false;
				listBox.Items.Clear();
				Type type = editValue.GetType();
				for (int i = 0; i < type.GetFields().Length; i++)
				{
					FieldInfo fieldInfo = type.GetFields()[i];
					if (fieldInfo.MemberType != MemberTypes.Field || !fieldInfo.FieldType.Name.Equals(type.Name))
					{
						continue;
					}
					object[] customAttributes = fieldInfo.GetCustomAttributes(typeof(BrowsableAttribute), inherit: false);
					if (customAttributes != null && customAttributes.Length > 0)
					{
						BrowsableAttribute browsableAttribute = (BrowsableAttribute)customAttributes[0];
						if (browsableAttribute != null && !browsableAttribute.Browsable)
						{
							continue;
						}
					}
					if (GetOptionValue(fieldInfo.Name) == 0)
					{
						Graphics graphics = CreateGraphics();
						text = fieldInfo.Name;
						num = graphics.MeasureString(text, Font).ToSize().Height + 6;
						graphics.Dispose();
						emptyValue = fieldInfo.GetValue(editValue);
					}
					else if (IsOptionEnabled(fieldInfo.Name))
					{
						listBox.Items.Add(fieldInfo.Name, CheckState.Checked);
					}
					else
					{
						listBox.Items.Add(fieldInfo.Name, CheckState.Unchecked);
					}
				}
				listBox.Sorted = true;
				int num2 = Math.Min(listBox.Items.Count, 15);
				base.Size = new Size(base.Size.Width, listBox.ItemHeight * num2 + num + 4);
				if (num > 0)
				{
					listBox.Size = new Size(0, base.Size.Height - num);
					button.Size = new Size(0, num);
					button.Dock = DockStyle.Bottom;
					button.Text = text;
					button.Visible = true;
				}
			}
		}

		public EnumFlagsUI(EnumFlagsEditor editor)
		{
			mainEditor = editor;
			base.StartPosition = FormStartPosition.WindowsDefaultBounds;
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.FormBorderStyle = FormBorderStyle.None;
			base.TopLevel = false;
			base.ShowInTaskbar = false;
			base.TopMost = true;
			listBox = new CheckedListBox();
			listBox.Dock = DockStyle.Top;
			listBox.CheckOnClick = true;
			listBox.BorderStyle = BorderStyle.None;
			listBox.ItemCheck += listBoxItemCheckEventHandler;
			button = new Button();
			button.Text = "Reset";
			button.Dock = DockStyle.Bottom;
			button.Height = listBox.ItemHeight;
			button.Visible = false;
			button.Click += buttonOnClicked;
			base.Size = new Size(0, listBox.ItemHeight * 7);
			listBox.Size = base.Size;
			base.Controls.Add(listBox);
			base.Controls.Add(button);
		}

		protected override bool ProcessDialogKey(Keys keyData)
		{
			switch (keyData)
			{
			case Keys.Return:
				mainEditor.edSvc.CloseDropDown();
				return true;
			case Keys.Escape:
				editValue = originalValue;
				mainEditor.edSvc.CloseDropDown();
				return true;
			default:
				return base.ProcessDialogKey(keyData);
			}
		}

		protected void listBoxItemCheckEventHandler(object sender, ItemCheckEventArgs e)
		{
			string optionName = listBox.Items[e.Index].ToString();
			if (e.NewValue == CheckState.Checked)
			{
				EnableOption(optionName);
			}
			else
			{
				DisableOption(optionName);
			}
		}

		protected void buttonOnClicked(object sender, EventArgs e)
		{
			int count = listBox.Items.Count;
			for (int i = 0; i < count; i++)
			{
				listBox.SetItemChecked(i, value: false);
			}
			ConvertFromInt(0);
			mainEditor.edSvc.CloseDropDown();
		}

		protected int GetOptionValue(string optionName)
		{
			Type type = EditValue.GetType();
			return (int)type.GetField(optionName).GetValue(EditValue);
		}

		protected void ConvertFromInt(int value)
		{
			Type type = EditValue.GetType();
			try
			{
				editValue = Enum.Parse(type, value.ToString());
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.Message + Environment.NewLine + ex.StackTrace);
			}
		}

		protected void DisableOption(string optionName)
		{
			ConvertFromInt((int)editValue & ~GetOptionValue(optionName));
		}

		protected void EnableOption(string optionName)
		{
			ConvertFromInt((int)editValue | GetOptionValue(optionName));
		}

		protected bool IsOptionEnabled(string optionName)
		{
			int num = (int)editValue;
			return (num & GetOptionValue(optionName)) != 0;
		}
	}

	private IWindowsFormsEditorService edSvc;

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (provider == null)
		{
			return value;
		}
		edSvc = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
		if (edSvc == null)
		{
			return value;
		}
		EnumFlagsUI enumFlagsUI = new EnumFlagsUI(this);
		enumFlagsUI.EditValue = value;
		edSvc.DropDownControl(enumFlagsUI);
		if (enumFlagsUI == null || enumFlagsUI.IsDisposed)
		{
			return value;
		}
		return Enum.ToObject(value.GetType(), enumFlagsUI.EditValue);
	}
}
