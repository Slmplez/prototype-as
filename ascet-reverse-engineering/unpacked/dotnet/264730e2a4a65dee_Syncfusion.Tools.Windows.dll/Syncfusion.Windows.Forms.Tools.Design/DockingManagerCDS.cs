using System.CodeDom;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class DockingManagerCDS : CodeDomSerializer
{
	public override object Deserialize(IDesignerSerializationManager manager, object codeobject)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(DockingManager).BaseType, typeof(CodeDomSerializer));
		return codeDomSerializer.Deserialize(manager, codeobject);
	}

	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(DockingManager).BaseType, typeof(CodeDomSerializer));
		object obj = codeDomSerializer.Serialize(manager, value);
		if (obj is CodeStatementCollection)
		{
			DockingManager dockingManager = value as DockingManager;
			IDockingManagerDesignerInvoke dockingManagerDesignerInvoke = dockingManager;
			CodeStatementCollection codeStatementCollection = (CodeStatementCollection)obj;
			bool flag = false;
			for (int i = 0; i < codeStatementCollection.Count; i++)
			{
				if (codeStatementCollection[i] is CodeVariableDeclarationStatement codeVariableDeclarationStatement && codeVariableDeclarationStatement.Type.BaseType == "CaptionButton")
				{
					flag = true;
					break;
				}
			}
			CodeFieldReferenceExpression targetObject = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
			CodePropertyReferenceExpression codePropertyReferenceExpression = new CodePropertyReferenceExpression(targetObject, "CaptionButtons");
			if (!flag && dockingManager.CaptionButtons != null && dockingManager.CaptionButtons != dockingManager.GetDefaultCaptionButtons() && !dockingManager.CaptionButtons.NeedSerializeToolTipInfo() && dockingManager.CaptionButtons.Count > 0)
			{
				foreach (CaptionButton captionButton in dockingManager.CaptionButtons)
				{
					CodeMethodInvokeExpression value2 = SerializeCaptionButton(captionButton, codePropertyReferenceExpression);
					codeStatementCollection.Add(value2);
				}
			}
			ArrayList controllerList = dockingManagerDesignerInvoke.GetControllerList();
			ArrayList inheritedControlsList = dockingManagerDesignerInvoke.GetInheritedControlsList();
			foreach (DockControllerBase item in controllerList)
			{
				if (!(item is DockHostController))
				{
					continue;
				}
				DockHostController dockHostController = item as DockHostController;
				Control control = dockHostController.HostControl.Controls[0];
				string dockLabel = dockingManager.GetDockLabel(control);
				if (dockLabel != string.Empty || inheritedControlsList.Contains(control))
				{
					CodeFieldReferenceExpression targetObject2 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
					CodeMethodInvokeExpression value3 = new CodeMethodInvokeExpression(targetObject2, "SetDockLabel", new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)), new CodePrimitiveExpression(dockLabel));
					codeStatementCollection.Add(value3);
				}
				int dockIcon = dockingManager.GetDockIcon(control);
				int mDIChildIcon = dockingManager.GetMDIChildIcon(control);
				if (dockIcon != -1 || inheritedControlsList.Contains(control) || mDIChildIcon != -1)
				{
					CodeFieldReferenceExpression targetObject3 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
					if (dockIcon != -1)
					{
						CodeMethodInvokeExpression value4 = new CodeMethodInvokeExpression(targetObject3, "SetDockIcon", new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)), new CodePrimitiveExpression(dockIcon));
						codeStatementCollection.Add(value4);
					}
					if (mDIChildIcon != -1)
					{
						CodeMethodInvokeExpression value5 = new CodeMethodInvokeExpression(targetObject3, "SetMDIChildIcon", new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)), new CodePrimitiveExpression(mDIChildIcon));
						codeStatementCollection.Add(value5);
					}
				}
				bool floatOnly = dockingManager.GetFloatOnly(control);
				if (floatOnly || inheritedControlsList.Contains(control))
				{
					CodeFieldReferenceExpression targetObject4 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
					CodeMethodInvokeExpression value6 = new CodeMethodInvokeExpression(targetObject4, "SetFloatOnly", new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)), new CodePrimitiveExpression(floatOnly));
					codeStatementCollection.Add(value6);
				}
				bool allowFloating = dockingManager.GetAllowFloating(control);
				if (!allowFloating || inheritedControlsList.Contains(control))
				{
					CodeFieldReferenceExpression targetObject5 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
					CodeMethodInvokeExpression value7 = new CodeMethodInvokeExpression(targetObject5, "SetAllowFloating", new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)), new CodePrimitiveExpression(allowFloating));
					codeStatementCollection.Add(value7);
				}
				bool enableDocking = dockingManager.GetEnableDocking(control);
				if (enableDocking || inheritedControlsList.Contains(control))
				{
					CodeFieldReferenceExpression targetObject6 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
					CodeMethodInvokeExpression value8 = new CodeMethodInvokeExpression(targetObject6, "SetEnableDocking", new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)), new CodePrimitiveExpression(enableDocking));
					codeStatementCollection.Add(value8);
				}
				bool autoHideOnLoad = dockingManager.GetAutoHideOnLoad(control);
				if (autoHideOnLoad || inheritedControlsList.Contains(control))
				{
					CodeFieldReferenceExpression targetObject7 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
					CodeMethodInvokeExpression value9 = new CodeMethodInvokeExpression(targetObject7, "SetAutoHideOnLoad", new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)), new CodePrimitiveExpression(autoHideOnLoad));
					codeStatementCollection.Add(value9);
				}
				bool hiddenOnLoad = dockingManager.GetHiddenOnLoad(control);
				if (hiddenOnLoad || inheritedControlsList.Contains(control))
				{
					CodeFieldReferenceExpression targetObject8 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
					CodeMethodInvokeExpression value10 = new CodeMethodInvokeExpression(targetObject8, "SetHiddenOnLoad", new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)), new CodePrimitiveExpression(hiddenOnLoad));
					codeStatementCollection.Add(value10);
				}
				bool freezeResize = dockingManager.GetFreezeResize(control);
				if (freezeResize || inheritedControlsList.Contains(control))
				{
					CodeFieldReferenceExpression targetObject9 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
					CodeMethodInvokeExpression value11 = new CodeMethodInvokeExpression(targetObject9, "SetFreezeResize", new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)), new CodePrimitiveExpression(freezeResize));
					codeStatementCollection.Add(value11);
				}
				DockAbility dockAbility = dockingManager.GetDockAbility(control);
				if (dockAbility != DockAbility.All || inheritedControlsList.Contains(control))
				{
					CodeFieldReferenceExpression targetObject10 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
					CodeMethodInvokeExpression value12 = new CodeMethodInvokeExpression(targetObject10, "SetDockAbility", new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)), new CodePrimitiveExpression(dockAbility.ToString()));
					codeStatementCollection.Add(value12);
				}
				DockAbility outerDockAbility = dockingManager.GetOuterDockAbility(control);
				if (outerDockAbility != DockAbility.All || inheritedControlsList.Contains(control))
				{
					CodeFieldReferenceExpression targetObject11 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
					CodeMethodInvokeExpression value13 = new CodeMethodInvokeExpression(targetObject11, "SetOuterDockAbility", new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)), new CodePrimitiveExpression(outerDockAbility.ToString()));
					codeStatementCollection.Add(value13);
				}
				if (dockingManager.CaptionButtons == null)
				{
					continue;
				}
				string text = "ccb" + TypeDescriptor.GetComponentName(control);
				CodeExpression[] parameters = new CodeExpression[0];
				CodeObjectCreateExpression initExpression = new CodeObjectCreateExpression(typeof(CaptionButtonsCollection), parameters);
				CodeVariableDeclarationStatement value14 = new CodeVariableDeclarationStatement(typeof(CaptionButtonsCollection), text, initExpression);
				codeStatementCollection.Add(value14);
				CodeVariableReferenceExpression codeVariableReferenceExpression = new CodeVariableReferenceExpression(text);
				CaptionButtonsCollection customCaptionButtons = dockingManager.GetCustomCaptionButtons(control);
				if (customCaptionButtons != null)
				{
					CaptionButtonsCollection captionButtonsCollection = customCaptionButtons.Clone();
					captionButtonsCollection.ExcludeCommonButtonsWith(dockingManager.CaptionButtons);
					if (dockingManager.CaptionButtons.Count == 0)
					{
						dockingManager.m_IsCaptionButtonsCleared = true;
						dockingManager.SaveCaptionButtionsClearedState();
					}
					CodeMethodInvokeExpression value15 = new CodeMethodInvokeExpression(codeVariableReferenceExpression, "MergeWith", codePropertyReferenceExpression, new CodePrimitiveExpression(false));
					codeStatementCollection.Add(value15);
					for (int j = 0; j < captionButtonsCollection.Count; j++)
					{
						CodeMethodInvokeExpression value16 = SerializeCaptionButton(captionButtonsCollection[j], codeVariableReferenceExpression);
						codeStatementCollection.Add(value16);
					}
					CodeExpression[] parameters2 = new CodeExpression[2]
					{
						new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(control)),
						codeVariableReferenceExpression
					};
					CodeFieldReferenceExpression targetObject12 = new CodeFieldReferenceExpression(new CodeThisReferenceExpression(), TypeDescriptor.GetComponentName(dockingManager));
					CodeMethodInvokeExpression value17 = new CodeMethodInvokeExpression(targetObject12, "SetCustomCaptionButtons", parameters2);
					codeStatementCollection.Add(value17);
				}
			}
		}
		return obj;
	}

	private CodeMethodInvokeExpression SerializeCaptionButton(CaptionButton button, CodeExpression ceTarget)
	{
		CodeExpression[] array = new CodeExpression[1];
		CodeFieldReferenceExpression codeFieldReferenceExpression = new CodeFieldReferenceExpression(new CodeTypeReferenceExpression(typeof(CaptionButtonType)), button.Type.ToString());
		CodePrimitiveExpression codePrimitiveExpression = new CodePrimitiveExpression(button.Name);
		CodeExpression[] array2;
		if (CaptionButton.HasDefaultValue(button))
		{
			array2 = new CodeExpression[2] { codeFieldReferenceExpression, codePrimitiveExpression };
		}
		else
		{
			array2 = new CodeExpression[5]
			{
				codeFieldReferenceExpression,
				codePrimitiveExpression,
				new CodePrimitiveExpression(button.ImageIndex),
				null,
				null
			};
			Color transparentImageColor = button.TransparentImageColor;
			if (transparentImageColor == Color.Transparent)
			{
				array2[3] = new CodeFieldReferenceExpression(new CodeTypeReferenceExpression(typeof(Color)), "Transparent");
			}
			else
			{
				CodeExpression[] parameters = new CodeExpression[4]
				{
					new CodePrimitiveExpression(transparentImageColor.A),
					new CodePrimitiveExpression(transparentImageColor.R),
					new CodePrimitiveExpression(transparentImageColor.G),
					new CodePrimitiveExpression(transparentImageColor.B)
				};
				CodeTypeReferenceExpression targetObject = new CodeTypeReferenceExpression(typeof(Color));
				array2[3] = new CodeMethodInvokeExpression(targetObject, "FromArgb", parameters);
			}
			array2[4] = new CodePrimitiveExpression(button.ToolTip);
		}
		CodeObjectCreateExpression codeObjectCreateExpression = new CodeObjectCreateExpression(typeof(CaptionButton), array2);
		array[0] = codeObjectCreateExpression;
		return new CodeMethodInvokeExpression(ceTarget, "Add", array);
	}
}
