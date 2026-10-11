using System.CodeDom;
using System.Collections;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ColorUIAdvDesignSerializer : CodeDomSerializer
{
	private class ItemComparer : IComparer
	{
		public int Compare(object item1, object item2)
		{
			if (item1 == null)
			{
				if (item2 == null)
				{
					return 0;
				}
				return -1;
			}
			if (item2 == null)
			{
				return 1;
			}
			ColorItem colorItem = item1 as ColorItem;
			ColorItem colorItem2 = item2 as ColorItem;
			GroupColorItem groupColorItem = colorItem as GroupColorItem;
			GroupColorItem groupColorItem2 = colorItem2 as GroupColorItem;
			string text = ((groupColorItem == null) ? colorItem.BaseItem.Index.ToString() : groupColorItem.Index.ToString());
			string text2 = ((groupColorItem2 == null) ? colorItem2.BaseItem.Index.ToString() : groupColorItem2.Index.ToString());
			if (groupColorItem != null && groupColorItem2 == null && text == text2)
			{
				return -1;
			}
			if (groupColorItem == null && groupColorItem2 != null && text == text2)
			{
				return 1;
			}
			CompareInfo compareInfo = Application.CurrentCulture.CompareInfo;
			return compareInfo.Compare(text, text2, CompareOptions.StringSort);
		}
	}

	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(ColorPickerUIAdv).BaseType, typeof(CodeDomSerializer));
		return codeDomSerializer.Deserialize(manager, codeObject);
	}

	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(ColorPickerUIAdv).BaseType, typeof(CodeDomSerializer));
		ColorPickerUIAdv colorPickerUIAdv = value as ColorPickerUIAdv;
		CodeStatementCollection codeStatementCollection = new CodeStatementCollection();
		CodeStatementCollection codeStatementCollection2 = new CodeStatementCollection();
		CodeStatementCollection codeStatementCollection3 = new CodeStatementCollection();
		ArrayList arrayList = new ArrayList();
		ArrayList listOfItems = new ArrayList();
		ArrayList arrayList2 = new ArrayList();
		ArrayList listOfItems2 = new ArrayList();
		ArrayList arrayList3 = new ArrayList();
		ItemComparer comparer = new ItemComparer();
		if (colorPickerUIAdv.ChangedItems.Count > 0)
		{
			foreach (object key in colorPickerUIAdv.ChangedItems.Keys)
			{
				ColorItem colorItem = key as ColorItem;
				ColorUIAdvGroup colorUIAdvGroup = colorPickerUIAdv.ChangedItems[colorItem] as ColorUIAdvGroup;
				if (colorUIAdvGroup.GroupType == ColorUIAdvGroups.ThemeColors)
				{
					arrayList.Add(colorItem);
				}
				else if (colorUIAdvGroup.GroupType == ColorUIAdvGroups.StandardColors)
				{
					arrayList2.Add(colorItem);
				}
			}
			arrayList.Sort(comparer);
			arrayList2.Sort(comparer);
		}
		if (colorPickerUIAdv.RecentGroup.Items.Count != 0)
		{
			for (int i = 0; i < colorPickerUIAdv.RecentGroup.Items.Count; i++)
			{
				ColorItem value2 = colorPickerUIAdv.RecentGroup.Items[i];
				arrayList3.Add(value2);
			}
			arrayList3.Sort(comparer);
		}
		if (colorPickerUIAdv.StandardGroup.Items.Count > 10 || NonGroupColorItemsAdded(colorPickerUIAdv.StandardGroup, ref listOfItems2))
		{
			if (colorPickerUIAdv.StandardGroup.Items.Count > 10)
			{
				for (int j = 10; j < colorPickerUIAdv.StandardGroup.Items.Count; j++)
				{
					ColorItem value3 = colorPickerUIAdv.StandardGroup.Items[j];
					listOfItems2.Add(value3);
				}
			}
			listOfItems2.Sort(comparer);
		}
		if (colorPickerUIAdv.ThemeGroup.Items.Count > 10 || NonGroupColorItemsAdded(colorPickerUIAdv.ThemeGroup, ref listOfItems))
		{
			if (colorPickerUIAdv.ThemeGroup.Items.Count > 10)
			{
				for (int k = 10; k < colorPickerUIAdv.ThemeGroup.Items.Count; k++)
				{
					ColorItem value4 = colorPickerUIAdv.ThemeGroup.Items[k];
					listOfItems.Add(value4);
				}
			}
			listOfItems.Sort(comparer);
		}
		object obj = codeDomSerializer.Serialize(manager, value);
		if (obj is CodeStatementCollection && obj is CodeStatementCollection { Count: >0 } codeStatementCollection4)
		{
			string text = string.Empty;
			if (codeStatementCollection4[0] is CodeAssignStatement codeAssignStatement)
			{
				text = (codeAssignStatement.Left as CodeFieldReferenceExpression).FieldName;
			}
			CodeStatementCollection defaultGroupsStatements = GetDefaultGroupsStatements(colorPickerUIAdv, text);
			for (int l = 0; l < defaultGroupsStatements.Count; l++)
			{
				codeStatementCollection4.Insert(1 + l, defaultGroupsStatements[l]);
			}
			if ((colorPickerUIAdv.ChangedItems != null && colorPickerUIAdv.ChangedItems.Count > 0) || listOfItems.Count > 0 || listOfItems2.Count > 0 || arrayList3.Count > 0)
			{
				CodeFieldReferenceExpression targetObject = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), text);
				if (arrayList3.Count > 0)
				{
					for (int m = 0; m < arrayList3.Count; m++)
					{
						ColorItem item = arrayList3[m] as ColorItem;
						int baseColorItemIndex = GetBaseColorItemIndex(colorPickerUIAdv, arrayList3, listOfItems2, 0, m);
						CodeStatementCollection colorItemStatements = GetColorItemStatements(baseColorItemIndex, text, "RecentGroup", item);
						codeStatementCollection3.AddRange(colorItemStatements);
					}
					for (int n = 0; n < arrayList3.Count; n++)
					{
						_ = arrayList3[n];
						int baseColorItemIndex2 = GetBaseColorItemIndex(colorPickerUIAdv, arrayList3, listOfItems2, 0, n);
						CodeFieldReferenceExpression codeFieldReferenceExpression = new CodeFieldReferenceExpression(null, "groupColorItem" + baseColorItemIndex2);
						CodePropertyReferenceExpression targetObject2 = new CodePropertyReferenceExpression(targetObject, "RecentGroup");
						CodePropertyReferenceExpression targetObject3 = new CodePropertyReferenceExpression(targetObject2, "Items");
						CodeMethodInvokeExpression value5 = new CodeMethodInvokeExpression(targetObject3, "Add", codeFieldReferenceExpression);
						codeStatementCollection3.Add(value5);
					}
				}
				if (listOfItems2.Count > 0)
				{
					for (int num = 0; num < listOfItems2.Count; num++)
					{
						ColorItem item2 = listOfItems2[num] as ColorItem;
						int baseColorItemIndex3 = GetBaseColorItemIndex(colorPickerUIAdv, arrayList3, listOfItems2, 1, num);
						CodeStatementCollection colorItemStatements2 = GetColorItemStatements(baseColorItemIndex3, text, "StandardGroup", item2);
						codeStatementCollection2.AddRange(colorItemStatements2);
					}
					for (int num2 = 0; num2 < listOfItems2.Count; num2++)
					{
						_ = listOfItems2[num2];
						int baseColorItemIndex4 = GetBaseColorItemIndex(colorPickerUIAdv, arrayList3, listOfItems2, 1, num2);
						CodeFieldReferenceExpression codeFieldReferenceExpression2 = new CodeFieldReferenceExpression(null, "groupColorItem" + baseColorItemIndex4);
						CodePropertyReferenceExpression targetObject4 = new CodePropertyReferenceExpression(targetObject, "StandardGroup");
						CodePropertyReferenceExpression targetObject5 = new CodePropertyReferenceExpression(targetObject4, "Items");
						CodeMethodInvokeExpression value6 = new CodeMethodInvokeExpression(targetObject5, "Add", codeFieldReferenceExpression2);
						codeStatementCollection2.Add(value6);
					}
				}
				if (listOfItems.Count > 0)
				{
					for (int num3 = 0; num3 < listOfItems.Count; num3++)
					{
						ColorItem item3 = listOfItems[num3] as ColorItem;
						int baseColorItemIndex5 = GetBaseColorItemIndex(colorPickerUIAdv, arrayList3, listOfItems2, 2, num3);
						CodeStatementCollection colorItemStatements3 = GetColorItemStatements(baseColorItemIndex5, text, "ThemeGroup", item3);
						codeStatementCollection.AddRange(colorItemStatements3);
					}
					for (int num4 = 0; num4 < listOfItems.Count; num4++)
					{
						_ = listOfItems[num4];
						int baseColorItemIndex6 = GetBaseColorItemIndex(colorPickerUIAdv, arrayList3, listOfItems2, 2, num4);
						CodeFieldReferenceExpression codeFieldReferenceExpression3 = new CodeFieldReferenceExpression(null, "groupColorItem" + baseColorItemIndex6);
						CodePropertyReferenceExpression targetObject6 = new CodePropertyReferenceExpression(targetObject, "ThemeGroup");
						CodePropertyReferenceExpression targetObject7 = new CodePropertyReferenceExpression(targetObject6, "Items");
						CodeMethodInvokeExpression value7 = new CodeMethodInvokeExpression(targetObject7, "Add", codeFieldReferenceExpression3);
						codeStatementCollection.Add(value7);
					}
				}
				for (int num5 = 0; num5 < arrayList2.Count; num5++)
				{
					ColorItem item4 = arrayList2[num5] as ColorItem;
					CodeAssignStatement colorAssignmentStatement = GetColorAssignmentStatement(text, "StandardGroup", item4);
					codeStatementCollection2.Add(colorAssignmentStatement);
				}
				for (int num6 = 0; num6 < arrayList.Count; num6++)
				{
					ColorItem item5 = arrayList[num6] as ColorItem;
					CodeAssignStatement colorAssignmentStatement2 = GetColorAssignmentStatement(text, "ThemeGroup", item5);
					codeStatementCollection.Add(colorAssignmentStatement2);
				}
				if (codeStatementCollection3.Count > 0)
				{
					for (int num7 = 0; num7 < codeStatementCollection4.Count; num7++)
					{
						if (codeStatementCollection4[num7] is CodeAssignStatement { Left: CodePropertyReferenceExpression { TargetObject: CodePropertyReferenceExpression { PropertyName: "RecentGroup" } } } codeAssignStatement2)
						{
							for (int num8 = 0; num8 < codeStatementCollection3.Count; num8++)
							{
								codeStatementCollection4.Insert(codeStatementCollection4.IndexOf(codeAssignStatement2), codeStatementCollection3[num8]);
							}
							break;
						}
					}
				}
				if (codeStatementCollection2.Count > 0)
				{
					for (int num9 = 0; num9 < codeStatementCollection4.Count; num9++)
					{
						if (codeStatementCollection4[num9] is CodeAssignStatement { Left: CodePropertyReferenceExpression { TargetObject: CodePropertyReferenceExpression { PropertyName: "StandardGroup" } } } codeAssignStatement3)
						{
							for (int num10 = 0; num10 < codeStatementCollection2.Count; num10++)
							{
								codeStatementCollection4.Insert(codeStatementCollection4.IndexOf(codeAssignStatement3), codeStatementCollection2[num10]);
							}
							break;
						}
					}
				}
				if (codeStatementCollection.Count > 0)
				{
					for (int num11 = 0; num11 < codeStatementCollection4.Count; num11++)
					{
						if (codeStatementCollection4[num11] is CodeAssignStatement { Left: CodePropertyReferenceExpression { TargetObject: CodePropertyReferenceExpression { PropertyName: "ThemeGroup" } } } codeAssignStatement4)
						{
							for (int num12 = 0; num12 < codeStatementCollection.Count; num12++)
							{
								codeStatementCollection4.Insert(codeStatementCollection4.IndexOf(codeAssignStatement4), codeStatementCollection[num12]);
							}
							break;
						}
					}
				}
			}
		}
		return obj;
	}

	private CodeAssignStatement GetColorAssignmentStatement(string control, string groupName, ColorItem item)
	{
		GroupColorItem groupColorItem = item as GroupColorItem;
		CodeAssignStatement codeAssignStatement = new CodeAssignStatement();
		CodePropertyReferenceExpression codePropertyReferenceExpression = null;
		CodeFieldReferenceExpression targetObject = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), control);
		CodePropertyReferenceExpression targetObject2 = new CodePropertyReferenceExpression(targetObject, groupName);
		CodePropertyReferenceExpression targetObject3 = new CodePropertyReferenceExpression(targetObject2, "Items");
		if (groupColorItem != null)
		{
			CodeArrayIndexerExpression targetObject4 = new CodeArrayIndexerExpression(targetObject3, new CodePrimitiveExpression(item.Index));
			codePropertyReferenceExpression = new CodePropertyReferenceExpression(targetObject4, "Color");
		}
		else
		{
			CodeArrayIndexerExpression expression = new CodeArrayIndexerExpression(targetObject3, new CodePrimitiveExpression(item.BaseItem.Index));
			CodeCastExpression targetObject5 = new CodeCastExpression(typeof(GroupColorItem), expression);
			CodePropertyReferenceExpression targetObject6 = new CodePropertyReferenceExpression(targetObject5, "SubItems");
			CodeArrayIndexerExpression targetObject7 = new CodeArrayIndexerExpression(targetObject6, new CodePrimitiveExpression(item.Index));
			codePropertyReferenceExpression = new CodePropertyReferenceExpression(targetObject7, "Color");
		}
		CodeMethodInvokeExpression right = new CodeMethodInvokeExpression(new CodeTypeReferenceExpression(typeof(Color)), "FromArgb", new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(item.Color.R)), new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(item.Color.G)), new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(item.Color.B)));
		codeAssignStatement.Left = codePropertyReferenceExpression;
		codeAssignStatement.Right = right;
		return codeAssignStatement;
	}

	private int GetBaseColorItemIndex(ColorPickerUIAdv colorPicker, ArrayList recentItems, ArrayList standardItems, int groupIndex, int i)
	{
		int num = 0;
		if (colorPicker.CustomGroups.Count > 0)
		{
			foreach (ColorUIAdvGroup customGroup in colorPicker.CustomGroups)
			{
				num += customGroup.Items.Count;
			}
			num++;
		}
		switch (groupIndex)
		{
		case 0:
			num += i;
			break;
		case 1:
			num += recentItems.Count + i;
			break;
		case 2:
			num += recentItems.Count + standardItems.Count + i;
			break;
		}
		return num;
	}

	private CodeStatementCollection GetColorItemStatements(int index, string control, string groupName, ColorItem item)
	{
		GroupColorItem groupColorItem = item as GroupColorItem;
		CodeStatementCollection codeStatementCollection = new CodeStatementCollection();
		if (groupColorItem != null)
		{
			CodeFieldReferenceExpression codeFieldReferenceExpression = new CodeFieldReferenceExpression(null, "groupColorItem" + index);
			CodeFieldReferenceExpression targetObject = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), control);
			CodePropertyReferenceExpression right = new CodePropertyReferenceExpression(targetObject, groupName);
			CodeMethodInvokeExpression codeMethodInvokeExpression = new CodeMethodInvokeExpression(new CodeTypeReferenceExpression(typeof(Color)), "FromArgb", new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(item.Color.R)), new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(item.Color.G)), new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(item.Color.B)));
			CodeVariableDeclarationStatement value = new CodeVariableDeclarationStatement(typeof(GroupColorItem), codeFieldReferenceExpression.FieldName, new CodeObjectCreateExpression(typeof(GroupColorItem), new CodePrimitiveExpression(null), codeMethodInvokeExpression));
			CodeAssignStatement value2 = new CodeAssignStatement(new CodePropertyReferenceExpression(codeFieldReferenceExpression, "Color"), codeMethodInvokeExpression);
			CodeAssignStatement value3 = new CodeAssignStatement(new CodePropertyReferenceExpression(codeFieldReferenceExpression, "Group"), right);
			CodeAssignStatement value4 = new CodeAssignStatement(new CodePropertyReferenceExpression(codeFieldReferenceExpression, "Index"), new CodePrimitiveExpression(groupColorItem.Index));
			codeStatementCollection.Add(value);
			codeStatementCollection.Add(value2);
			codeStatementCollection.Add(value3);
			codeStatementCollection.Add(value4);
			for (int i = 0; i < groupColorItem.SubItems.Count; i++)
			{
				ColorItem colorItem = groupColorItem.SubItems[i];
				CodeMethodInvokeExpression codeMethodInvokeExpression2 = new CodeMethodInvokeExpression(new CodeTypeReferenceExpression(typeof(Color)), "FromArgb", new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(colorItem.Color.R)), new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(colorItem.Color.G)), new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(colorItem.Color.B)));
				CodeMethodInvokeExpression value5 = new CodeMethodInvokeExpression(new CodePropertyReferenceExpression(new CodeFieldReferenceExpression(null, codeFieldReferenceExpression.FieldName), "SubItems"), "Add", new CodeObjectCreateExpression(typeof(ColorItem), new CodeFieldReferenceExpression(null, codeFieldReferenceExpression.FieldName), codeMethodInvokeExpression2));
				codeStatementCollection.Add(value5);
			}
		}
		else
		{
			CodeFieldReferenceExpression targetObject2 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), control);
			CodePropertyReferenceExpression targetObject3 = new CodePropertyReferenceExpression(targetObject2, groupName);
			CodePropertyReferenceExpression targetObject4 = new CodePropertyReferenceExpression(targetObject3, "Items");
			CodeArrayIndexerExpression expression = new CodeArrayIndexerExpression(targetObject4, new CodePrimitiveExpression(item.BaseItem.Index));
			CodeCastExpression codeCastExpression = new CodeCastExpression(typeof(GroupColorItem), expression);
			CodePropertyReferenceExpression targetObject5 = new CodePropertyReferenceExpression(codeCastExpression, "SubItems");
			CodeMethodInvokeExpression codeMethodInvokeExpression3 = new CodeMethodInvokeExpression(new CodeTypeReferenceExpression(typeof(Color)), "FromArgb", new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(item.Color.R)), new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(item.Color.G)), new CodeCastExpression(typeof(byte), new CodePrimitiveExpression(item.Color.B)));
			CodeObjectCreateExpression codeObjectCreateExpression = new CodeObjectCreateExpression(typeof(ColorItem), codeCastExpression, codeMethodInvokeExpression3);
			CodeMethodInvokeExpression value6 = new CodeMethodInvokeExpression(targetObject5, "Add", codeObjectCreateExpression);
			codeStatementCollection.Add(value6);
		}
		return codeStatementCollection;
	}

	private CodeStatementCollection GetDefaultGroupsStatements(ColorPickerUIAdv colorPicker, string controlName)
	{
		CodeStatementCollection codeStatementCollection = new CodeStatementCollection();
		CodeStatementCollection codeStatementCollection2 = null;
		CodeStatementCollection codeStatementCollection3 = null;
		CodeStatementCollection codeStatementCollection4 = null;
		foreach (ColorUIAdvGroup group in colorPicker.Groups)
		{
			if (group.GroupType == ColorUIAdvGroups.RecentColors)
			{
				codeStatementCollection2 = GetGroupStatements(controlName, group);
			}
			else if (group.GroupType == ColorUIAdvGroups.StandardColors)
			{
				codeStatementCollection3 = GetGroupStatements(controlName, group);
			}
			else if (group.GroupType == ColorUIAdvGroups.ThemeColors)
			{
				codeStatementCollection4 = GetGroupStatements(controlName, group);
			}
		}
		for (int i = 0; i < codeStatementCollection2.Count; i++)
		{
			codeStatementCollection.Add(codeStatementCollection2[i]);
		}
		for (int j = 0; j < codeStatementCollection3.Count; j++)
		{
			codeStatementCollection.Add(codeStatementCollection3[j]);
		}
		for (int k = 0; k < codeStatementCollection4.Count; k++)
		{
			codeStatementCollection.Add(codeStatementCollection4[k]);
		}
		return codeStatementCollection;
	}

	private CodeStatementCollection GetGroupStatements(string controlName, ColorUIAdvGroup group)
	{
		CodeStatementCollection codeStatementCollection = new CodeStatementCollection();
		string empty = string.Empty;
		empty = ((group.GroupType == ColorUIAdvGroups.RecentColors) ? "RecentGroup" : ((group.GroupType != ColorUIAdvGroups.StandardColors) ? "ThemeGroup" : "StandardGroup"));
		codeStatementCollection.Add(new CodeCommentStatement(string.Empty));
		codeStatementCollection.Add(new CodeCommentStatement(controlName + "." + empty));
		codeStatementCollection.Add(new CodeCommentStatement(string.Empty));
		CodeFieldReferenceExpression targetObject = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), controlName);
		CodePropertyReferenceExpression targetObject2 = new CodePropertyReferenceExpression(targetObject, empty);
		if (group.HeaderHeight != 20)
		{
			CodePropertyReferenceExpression left = new CodePropertyReferenceExpression(targetObject2, "HeaderHeight");
			CodeAssignStatement value = new CodeAssignStatement(left, new CodePrimitiveExpression(group.HeaderHeight));
			codeStatementCollection.Add(value);
		}
		if (group.IsSubItemsVisible)
		{
			CodePropertyReferenceExpression left = new CodePropertyReferenceExpression(targetObject2, "IsSubItemsVisible");
			CodeAssignStatement value = new CodeAssignStatement(left, new CodePrimitiveExpression(group.IsSubItemsVisible));
			codeStatementCollection.Add(value);
		}
		if (group.Name != "CustomGroup")
		{
			CodePropertyReferenceExpression left = new CodePropertyReferenceExpression(targetObject2, "Name");
			CodeAssignStatement value = new CodeAssignStatement(left, new CodePrimitiveExpression(group.Name));
			codeStatementCollection.Add(value);
		}
		if (group.SubItemsDepth != 5)
		{
			CodePropertyReferenceExpression left = new CodePropertyReferenceExpression(targetObject2, "SubItemsDepth");
			CodeAssignStatement value = new CodeAssignStatement(left, new CodePrimitiveExpression(group.SubItemsDepth));
			codeStatementCollection.Add(value);
		}
		if (!group.Visible)
		{
			CodePropertyReferenceExpression left = new CodePropertyReferenceExpression(targetObject2, "Visible");
			CodeAssignStatement value = new CodeAssignStatement(left, new CodePrimitiveExpression(group.Visible));
			codeStatementCollection.Add(value);
		}
		return codeStatementCollection;
	}

	private bool NonGroupColorItemsAdded(ColorUIAdvGroup group, ref ArrayList listOfItems)
	{
		bool result = false;
		for (int i = 0; i < group.Items.Count; i++)
		{
			GroupColorItem groupColorItem = group.Items[i] as GroupColorItem;
			int num = 0;
			if (group.GroupType == ColorUIAdvGroups.ThemeColors)
			{
				num = 5;
			}
			for (int j = num; j < groupColorItem.SubItems.Count; j++)
			{
				listOfItems.Add(groupColorItem.SubItems[j]);
				result = true;
			}
		}
		return result;
	}
}
