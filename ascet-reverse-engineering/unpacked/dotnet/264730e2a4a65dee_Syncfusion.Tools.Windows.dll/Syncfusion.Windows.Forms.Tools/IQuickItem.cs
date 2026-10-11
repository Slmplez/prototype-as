using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public interface IQuickItem
{
	Component ReflectedComponent { get; }

	void Reset();

	bool Reflects(IComponent c);
}
