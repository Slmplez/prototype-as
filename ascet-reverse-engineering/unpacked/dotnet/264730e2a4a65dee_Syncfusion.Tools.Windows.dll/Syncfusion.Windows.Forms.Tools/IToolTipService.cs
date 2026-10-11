using System;

namespace Syncfusion.Windows.Forms.Tools;

public interface IToolTipService : IDisposable
{
	event PopupHandler Popup;

	event EventHandler Pop;

	void AddComponent(object component);

	void RemoveComponent(object component);
}
