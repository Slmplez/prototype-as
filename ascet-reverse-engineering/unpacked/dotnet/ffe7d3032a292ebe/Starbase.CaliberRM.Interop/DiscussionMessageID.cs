using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(DiscussionMessageIDClass))]
[Guid("10430063-72AE-11D5-B316-0800309CC2CE")]
public interface DiscussionMessageID : IDiscussionMessageID
{
}
