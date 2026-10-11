using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(DiscussionMessageClass))]
[Guid("1043005F-72AE-11D5-B316-0800309CC2CE")]
public interface DiscussionMessage : IDiscussionMessage
{
}
