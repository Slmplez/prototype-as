using System;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class ToolStripKeyboardHandlingServiceProxy
{
	private Type m_baseType;

	private IServiceProvider m_provider;

	public object SelectedDesignerControl
	{
		get
		{
			object baseSvc = BaseSvc;
			if (baseSvc != null)
			{
				PropertyInfo selectedDesignerControlInfo = SelectedDesignerControlInfo;
				if (selectedDesignerControlInfo != null)
				{
					return selectedDesignerControlInfo.GetValue(baseSvc, new object[0]);
				}
			}
			return null;
		}
		set
		{
			object baseSvc = BaseSvc;
			if (baseSvc != null)
			{
				PropertyInfo selectedDesignerControlInfo = SelectedDesignerControlInfo;
				if (selectedDesignerControlInfo != null)
				{
					selectedDesignerControlInfo.SetValue(baseSvc, value, new object[0]);
				}
			}
		}
	}

	public bool CopyInProgress
	{
		get
		{
			object baseSvc = BaseSvc;
			if (baseSvc != null)
			{
				PropertyInfo copyInProgressInfo = CopyInProgressInfo;
				if (copyInProgressInfo != null)
				{
					return (bool)copyInProgressInfo.GetValue(baseSvc, new object[0]);
				}
			}
			return false;
		}
	}

	private object BaseSvc
	{
		get
		{
			object obj = null;
			if (m_baseType != null && m_provider != null)
			{
				obj = m_provider.GetService(m_baseType);
				if (obj == null)
				{
					ConstructorInfo constructor = m_baseType.GetConstructor(new Type[1] { typeof(IServiceProvider) });
					if (constructor != null)
					{
						obj = constructor.Invoke(new object[1] { m_provider });
					}
				}
			}
			return obj;
		}
	}

	private PropertyInfo SelectedDesignerControlInfo => m_baseType.GetProperty("SelectedDesignerControl", BindingFlags.Instance | BindingFlags.NonPublic);

	private PropertyInfo CopyInProgressInfo => m_baseType.GetProperty("CopyInProgress", BindingFlags.Instance | BindingFlags.NonPublic);

	public ToolStripKeyboardHandlingServiceProxy(IServiceProvider provider)
	{
		m_baseType = Type.GetType("System.Windows.Forms.Design.ToolStripKeyboardHandlingService, System.Design");
		m_provider = provider;
	}
}
