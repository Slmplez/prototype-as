using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(DiscussionMessageListenerClass))]
[Guid("10430159-72AE-11D5-B316-0800309CC2CE")]
public interface DiscussionMessageListener : IDiscussionMessageListener
{
}
