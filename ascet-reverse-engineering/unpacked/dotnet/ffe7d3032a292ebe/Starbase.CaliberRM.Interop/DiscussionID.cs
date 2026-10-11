using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(DiscussionIDClass))]
[Guid("1043005B-72AE-11D5-B316-0800309CC2CE")]
public interface DiscussionID : IDiscussionID
{
}
