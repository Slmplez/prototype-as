using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(TreeNodeClass))]
[Guid("10430031-72AE-11D5-B316-0800309CC2CE")]
public interface TreeNode : ITreeNode
{
}
