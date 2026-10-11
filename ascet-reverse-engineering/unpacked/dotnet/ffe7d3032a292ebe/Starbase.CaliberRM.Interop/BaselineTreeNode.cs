using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(BaselineTreeNodeClass))]
[Guid("10430033-72AE-11D5-B316-0800309CC2CE")]
public interface BaselineTreeNode : IBaselineTreeNode
{
}
