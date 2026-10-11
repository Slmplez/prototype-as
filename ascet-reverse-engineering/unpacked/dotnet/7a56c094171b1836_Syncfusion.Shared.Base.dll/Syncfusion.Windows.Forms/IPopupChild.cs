namespace Syncfusion.Windows.Forms;

public interface IPopupChild : IPopupItem, INeedKeyboardMessages, INeedMouseMoveMessages, IMouseHookHLProcClient, IKeyboardProcHookClient
{
	IPopupParent PopupParent { get; }

	void HidePopup(PopupCloseType popupCloseType);

	bool IsShowing();
}
