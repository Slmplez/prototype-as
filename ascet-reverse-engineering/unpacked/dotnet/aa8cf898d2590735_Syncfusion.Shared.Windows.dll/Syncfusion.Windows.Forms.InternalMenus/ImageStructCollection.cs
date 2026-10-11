using System;
using System.Collections;
using System.Drawing;
using System.Resources;

namespace Syncfusion.Windows.Forms.InternalMenus;

[Serializable]
internal class ImageStructCollection : CollectionBase
{
	internal class ImageStructEnumerator : IEnumerator
	{
		private IEnumerator iEnBase;

		private IEnumerable iEnLocal;

		public ImageStruct Current => (ImageStruct)iEnBase.Current;

		object IEnumerator.Current => iEnBase.Current;

		public ImageStructEnumerator(ImageStructCollection imaMappings)
		{
			iEnLocal = imaMappings;
			iEnBase = iEnLocal.GetEnumerator();
		}

		public bool MoveNext()
		{
			return iEnBase.MoveNext();
		}

		bool IEnumerator.MoveNext()
		{
			return iEnBase.MoveNext();
		}

		public void Reset()
		{
			iEnBase.Reset();
		}

		void IEnumerator.Reset()
		{
			iEnBase.Reset();
		}
	}

	public ImageStruct this[int intIndex]
	{
		get
		{
			return (ImageStruct)base.List[intIndex];
		}
		set
		{
			base.List[intIndex] = value;
		}
	}

	public ImageStructCollection()
	{
	}

	public ImageStructCollection(ImageStructCollection imaValue)
	{
		AddRange(imaValue);
	}

	public ImageStructCollection(ImageStruct[] imaValue)
	{
		AddRange(imaValue);
	}

	public int Add(ImageStruct imaValue)
	{
		return base.List.Add(imaValue);
	}

	public void AddRange(ImageStruct[] imaValue)
	{
		for (int i = 0; i < imaValue.Length; i++)
		{
			Add(imaValue[i]);
		}
	}

	public void AddRange(ImageStructCollection imaValue)
	{
		for (int i = 0; i < imaValue.Count; i++)
		{
			Add(imaValue[i]);
		}
	}

	public bool Contains(ImageStruct imaValue)
	{
		return base.List.Contains(imaValue);
	}

	public int IndexOf(string resourceName, bool addIfNotFound, ResourceManager manager)
	{
		ImageStructEnumerator enumerator = GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Current.bmpName == resourceName)
			{
				return IndexOf(enumerator.Current);
			}
		}
		if (addIfNotFound)
		{
			ImageStruct imaValue = default(ImageStruct);
			object obj = manager.GetObject(resourceName);
			if (obj.GetType() == typeof(Icon))
			{
				imaValue.bmp = Bitmap.FromHicon(((Icon)obj).Handle);
			}
			else
			{
				imaValue.bmp = manager.GetObject(resourceName) as Image;
				((Bitmap)imaValue.bmp).MakeTransparent(((Bitmap)imaValue.bmp).GetPixel(0, 0));
			}
			imaValue.bmpName = resourceName;
			int num = Add(imaValue);
			Images.AddToImageList(num);
			return num;
		}
		return -1;
	}

	public void CopyTo(ImageStruct[] imaArray, int intIndex)
	{
		base.List.CopyTo(imaArray, intIndex);
	}

	public int IndexOf(ImageStruct imaValue)
	{
		return base.List.IndexOf(imaValue);
	}

	public void Insert(int intIndex, ImageStruct imaValue)
	{
		base.List.Insert(intIndex, imaValue);
	}

	public new ImageStructEnumerator GetEnumerator()
	{
		return new ImageStructEnumerator(this);
	}

	public void Remove(ImageStruct imaValue)
	{
		base.List.Remove(imaValue);
	}
}
