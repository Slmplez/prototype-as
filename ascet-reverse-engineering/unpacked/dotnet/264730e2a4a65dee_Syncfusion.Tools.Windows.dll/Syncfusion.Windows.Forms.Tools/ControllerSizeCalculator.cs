using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class ControllerSizeCalculator
{
	public static int SplitterWidth;

	private static void RemoveUnresizableArea(DockControllerBase controller, ref Size newParentSize)
	{
		SizingController sizingController = controller.ParentController as SizingController;
		Size empty = Size.Empty;
		for (int i = 0; i < sizingController.ChildCount; i++)
		{
			DockControllerBase childAt = sizingController.GetChildAt(i);
			IResizable resizable = (IResizable)childAt;
			if (!resizable.IsHorizontallyResizable())
			{
				empty.Width += childAt.LayoutRect.Size.Width;
			}
			if (!resizable.IsVerticallyResizable())
			{
				empty.Height += childAt.LayoutRect.Size.Height;
			}
		}
		empty.Width = ((sizingController.DICurrent.DP == DockPreference.Horizontal) ? empty.Width : 0);
		empty.Height = ((sizingController.DICurrent.DP == DockPreference.Vertical) ? empty.Height : 0);
		newParentSize.Width -= empty.Width;
		newParentSize.Height -= empty.Height;
	}

	public static Size CalculateSize(DockControllerBase controller, Size parentSize, Size newParentSize)
	{
		SizingController sizingController = controller.ParentController as SizingController;
		Size result = Size.Empty;
		if (sizingController != null)
		{
			Rectangle layoutRect = controller.LayoutRect;
			Rectangle rcDockArea = controller.DITransient.rcDockArea;
			DockPreference dP = sizingController.DICurrent.DP;
			RemoveUnresizableArea(controller, ref newParentSize);
			DockControllerBase priorityController = sizingController.PriorityController;
			bool flag = priorityController != null && priorityController != controller;
			if (controller.Minimized == Minimization.Vertical && flag)
			{
				return new Size(parentSize.Width - priorityController.LayoutRect.Size.Width - SplitterWidth, controller.LayoutRect.Height);
			}
			if (controller.Minimized == Minimization.Vertical && priorityController == controller)
			{
				return new Size((int)((double)((float)newParentSize.Width / (float)parentSize.Width * (float)rcDockArea.Width) + 0.5), controller.LayoutRect.Height);
			}
			if (controller.Minimized == Minimization.Horizontal)
			{
				return new Size(controller.LayoutRect.Width, (int)((double)((float)newParentSize.Height / (float)parentSize.Height * (float)rcDockArea.Height) + 0.5));
			}
			if (controller.Minimized == Minimization.Horizontal && priorityController == controller)
			{
				return new Size((int)((double)((float)newParentSize.Width / (float)parentSize.Width * (float)rcDockArea.Width) + 0.5), controller.LayoutRect.Height);
			}
			if (controller.ParentController is SizingController sizingController2 && sizingController2.GetDockControllers().Count == 1 && (sizingController2.Floating || sizingController2.DockingManager.DockToFill))
			{
				result = sizingController2.LayoutRect.Size;
			}
			else if (sizingController == null || sizingController.PriorityController == null)
			{
				result = new Size((int)((double)((float)newParentSize.Width / (float)parentSize.Width * (float)rcDockArea.Width) + 0.5), (int)((double)((float)newParentSize.Height / (float)parentSize.Height * (float)rcDockArea.Height) + 0.5));
			}
			else
			{
				int num = newParentSize.Width;
				int num2 = newParentSize.Height;
				Size size = sizingController.PriorityController.LayoutRect.Size;
				if (dP == DockPreference.Horizontal)
				{
					if (sizingController.PriorityController == controller)
					{
						num = layoutRect.Width;
					}
					else
					{
						int num3 = 0;
						num3 = ((!controller.DockingManager.m_bLoadingDockState) ? (parentSize.Width - size.Width - SplitterWidth) : (num - size.Width));
						num = (int)((double)((float)num3 * (float)layoutRect.Width / (float)parentSize.Width) + 0.5);
					}
				}
				else if (sizingController.PriorityController == controller)
				{
					num2 = layoutRect.Height;
				}
				else
				{
					int num4 = 0;
					num4 = ((!controller.DockingManager.m_bLoadingDockState) ? (parentSize.Height - size.Height - SplitterWidth) : (num2 - size.Height));
					num2 = (int)((double)((float)num4 * (float)layoutRect.Height / (float)parentSize.Height) + 0.5);
				}
				result = new Size(num, num2);
			}
		}
		if (controller is IResizable resizable)
		{
			if (!resizable.IsHorizontallyResizable())
			{
				result.Width = controller.LayoutRect.Width;
			}
			if (!resizable.IsVerticallyResizable())
			{
				result.Height = controller.LayoutRect.Height;
			}
		}
		return result;
	}
}
