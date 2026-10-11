using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("ED85610C-4F78-11D3-8055-00A0C9AC24E9")]
[CoClass(typeof(CollectionFactoryClass))]
public interface CollectionFactory : IStCollectionFactory
{
}
