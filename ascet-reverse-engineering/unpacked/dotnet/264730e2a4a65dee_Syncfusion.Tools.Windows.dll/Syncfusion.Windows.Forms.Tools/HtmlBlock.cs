using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text.RegularExpressions;

namespace Syncfusion.Windows.Forms.Tools;

internal class HtmlBlock
{
	private string block;

	private Dictionary<PropertyInfo, string> propertyValues;

	private Dictionary<string, string> properties;

	public Dictionary<string, string> Properties => properties;

	public Dictionary<PropertyInfo, string> PropertyValues => propertyValues;

	private HtmlBlock()
	{
		propertyValues = new Dictionary<PropertyInfo, string>();
		properties = new Dictionary<string, string>();
	}

	internal HtmlBlock(string blockSource)
		: this()
	{
		block = blockSource;
		MatchCollection matchCollection = Do.MatchPattern(";?[^;\\s]*:[^\\{\\}:;]*(\\}|;)?", blockSource);
		foreach (Match item in matchCollection)
		{
			string[] array = item.Value.Split(':');
			if (array.Length == 2)
			{
				string key = array[0].Trim();
				string text = array[1].Trim();
				if (text.EndsWith(";"))
				{
					text = text.Substring(0, text.Length - 1).Trim();
				}
				Properties.Add(key, text);
				if (HtmlBox.properties.ContainsKey(key))
				{
					PropertyValues.Add(HtmlBox.properties[key], text);
				}
			}
		}
	}

	internal void ChangePropertyValues()
	{
		PropertyValues.Clear();
		foreach (string key in Properties.Keys)
		{
			if (HtmlBox.properties.ContainsKey(key))
			{
				PropertyValues.Add(HtmlBox.properties[key], Properties[key]);
			}
		}
	}

	public void AssignStyleBlockToBox(HtmlBox b)
	{
		foreach (PropertyInfo key in PropertyValues.Keys)
		{
			string text = PropertyValues[key];
			if (text == "inherit" && b.ParentBox != null)
			{
				text = Convert.ToString(key.GetValue(b.ParentBox, null));
			}
			key.SetValue(b, text, null);
		}
	}
}
