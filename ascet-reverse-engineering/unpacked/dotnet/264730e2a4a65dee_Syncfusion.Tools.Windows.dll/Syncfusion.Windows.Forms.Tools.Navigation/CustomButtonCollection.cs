using System.ComponentModel;
using System.Drawing.Design;
using Syncfusion.Windows.Forms.Tools.Navigation.Design;

namespace Syncfusion.Windows.Forms.Tools.Navigation;

[Editor(typeof(CustomButtonCollectionEditor), typeof(UITypeEditor))]
public class CustomButtonCollection : ObservableCollectionBase<CustomButton>
{
}
