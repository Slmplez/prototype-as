using System;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Design;

public class DesignTimeUtils
{
	[DocumentationExclude]
	public static void SyncSelection(object selectionUIService)
	{
		if (selectionUIService != null)
		{
			MethodInfo method = selectionUIService.GetType().GetMethod("System.Windows.Forms.Design.ISelectionUIService.SyncSelection", BindingFlags.Instance | BindingFlags.NonPublic);
			if (method != null)
			{
				method.Invoke(selectionUIService, new object[0]);
			}
		}
	}

	public static Attribute GetPersistenceModeAttribute(string persistenceModeEnumConstant)
	{
		Type type = Type.GetType("System.Web.UI.PersistenceModeAttribute", throwOnError: false, ignoreCase: false);
		Type type2 = Type.GetType("System.Web.UI.PersistenceMode", throwOnError: false, ignoreCase: false);
		if (type2 != null)
		{
			object obj = Enum.Parse(type2, persistenceModeEnumConstant, ignoreCase: false);
			if (type != null && obj != null)
			{
				ConstructorInfo constructor = type.GetConstructor(new Type[1] { type2 });
				return constructor.Invoke(new object[1] { obj }) as Attribute;
			}
		}
		return null;
	}
}
