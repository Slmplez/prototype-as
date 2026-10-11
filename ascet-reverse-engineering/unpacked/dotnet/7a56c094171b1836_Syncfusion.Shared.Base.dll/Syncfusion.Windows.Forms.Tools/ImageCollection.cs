using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.IO;
using System.Reflection;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[Editor(typeof(ImageCollectionEditor), typeof(UITypeEditor))]
public class ImageCollection : CollectionBase, IList, ICollection, IEnumerable
{
	private class CustomImageTypeDescriptor : CustomTypeDescriptor
	{
		public CustomImageTypeDescriptor(ICustomTypeDescriptor parent)
			: base(parent)
		{
		}

		public override PropertyDescriptorCollection GetProperties()
		{
			return FilterProperties(base.GetProperties());
		}

		public override PropertyDescriptorCollection GetProperties(Attribute[] attributes)
		{
			return FilterProperties(base.GetProperties(attributes));
		}

		private static PropertyDescriptorCollection FilterProperties(PropertyDescriptorCollection props)
		{
			PropertyDescriptor obj = props["Tag"];
			ArrayList arrayList = new ArrayList(props);
			arrayList.Remove(obj);
			return new PropertyDescriptorCollection((PropertyDescriptor[])arrayList.ToArray(typeof(PropertyDescriptor)), readOnly: true);
		}
	}

	private class ImageTypeDescriptionProvider : TypeDescriptionProvider
	{
		public ImageTypeDescriptionProvider()
			: base(TypeDescriptor.GetProvider(typeof(Image)))
		{
		}

		public override ICustomTypeDescriptor GetTypeDescriptor(Type objectType, object instance)
		{
			ICustomTypeDescriptor typeDescriptor = base.GetTypeDescriptor(objectType, instance);
			return new CustomImageTypeDescriptor(typeDescriptor);
		}
	}

	internal class ImageCollectionEditor : CollectionEditor
	{
		private static ImageEditorAdv s_editor;

		private static TypeDescriptionProvider s_imageTypeDescProvider;

		static ImageCollectionEditor()
		{
			s_editor = new ImageEditorAdv();
			s_imageTypeDescProvider = new ImageTypeDescriptionProvider();
		}

		public ImageCollectionEditor(Type type)
			: base(type)
		{
		}

		protected override object CreateInstance(Type type)
		{
			return s_editor.EditValue(base.Context, null);
		}

		protected override IList GetObjectsFromInstance(object instance)
		{
			ArrayList arrayList = null;
			if (instance != null)
			{
				arrayList = new ArrayList();
				if (instance is Image)
				{
					arrayList.Add(instance);
				}
				else if (instance is IList)
				{
					arrayList.AddRange((ICollection)instance);
				}
			}
			return arrayList;
		}

		protected override void DestroyInstance(object instance)
		{
			if (instance is Image image && base.Context.Instance is ImageListAdv imageListAdv)
			{
				imageListAdv.Images.Remove(image);
			}
			base.DestroyInstance(instance);
		}

		public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
		{
			object obj = null;
			try
			{
				TypeDescriptor.AddProvider(s_imageTypeDescProvider, typeof(Image));
			}
			finally
			{
				obj = base.EditValue(context, provider, value);
				TypeDescriptor.RemoveProvider(s_imageTypeDescProvider, typeof(Image));
			}
			return obj;
		}
	}

	internal class ImageEditorAdv : ImageEditor
	{
		private OpenFileDialog m_fileDialog;

		private static Type[] m_imageExtenders;

		static ImageEditorAdv()
		{
			m_imageExtenders = new Type[2]
			{
				typeof(BitmapEditor),
				typeof(MetafileEditor)
			};
		}

		public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
		{
			ArrayList arrayList = new ArrayList();
			if (provider != null && (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService)) != null)
			{
				if (m_fileDialog == null)
				{
					m_fileDialog = new OpenFileDialog();
					m_fileDialog.Multiselect = true;
					string text = ImageEditor.CreateFilterEntry(this);
					for (int i = 0; i < m_imageExtenders.Length; i++)
					{
						ImageEditor imageEditor = (ImageEditor)Activator.CreateInstance(m_imageExtenders[i], BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, null, null);
						Type type = GetType();
						Type type2 = imageEditor.GetType();
						if (!type.Equals(type2) && imageEditor != null && type.IsInstanceOfType(imageEditor))
						{
							text = text + "|" + ImageEditor.CreateFilterEntry(imageEditor);
						}
					}
					m_fileDialog.Filter = text;
				}
				IntPtr focus = NativeMethods.GetFocus();
				try
				{
					if (m_fileDialog.ShowDialog() == DialogResult.OK)
					{
						string[] fileNames = m_fileDialog.FileNames;
						foreach (string text2 in fileNames)
						{
							bool flag = false;
							if (Path.GetExtension(text2) == ".ico")
							{
								try
								{
									Icon icon = new Icon(text2);
									arrayList.Add(ImageListAdv.IconToImageAlphaCorrect(icon));
									flag = true;
								}
								catch (ArgumentException)
								{
								}
							}
							if (!flag)
							{
								FileStream stream = new FileStream(text2, FileMode.Open, FileAccess.Read, FileShare.Read);
								arrayList.Add(LoadFromStream(stream));
							}
						}
					}
				}
				finally
				{
					if (focus != IntPtr.Zero)
					{
						NativeMethods.SetFocus(focus);
					}
				}
			}
			return arrayList;
		}
	}

	private class ImageInfo
	{
		private Image m_image;

		private string m_key;

		public Image Image
		{
			get
			{
				return m_image;
			}
			set
			{
				m_image = value;
			}
		}

		public string Key
		{
			get
			{
				return m_key;
			}
			set
			{
				m_key = value;
			}
		}

		public ImageInfo(Image image, string key)
		{
			m_image = image;
			m_key = key;
		}
	}

	public bool Empty => base.Count == 0;

	public bool IsReadOnly => false;

	public Image this[int index]
	{
		get
		{
			if (index < 0 || index > base.Count - 1)
			{
				throw new ArgumentOutOfRangeException("index");
			}
			return ((ImageInfo)base.InnerList[index]).Image.Clone() as Image;
		}
		set
		{
			if (index < 0 || index > base.Count - 1)
			{
				throw new ArgumentOutOfRangeException("index");
			}
			if (value == null)
			{
				throw new ArgumentNullException("value");
			}
			((ImageInfo)base.InnerList[index]).Image = value;
		}
	}

	public Image this[string key]
	{
		get
		{
			ImageInfo imageInfo = null;
			IEnumerator enumerator = GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					ImageInfo imageInfo2 = (ImageInfo)enumerator.Current;
					if (imageInfo2.Key == key)
					{
						imageInfo = imageInfo2;
						break;
					}
				}
			}
			finally
			{
				IDisposable disposable = enumerator as IDisposable;
				if (disposable != null)
				{
					disposable.Dispose();
				}
			}
			Image result = null;
			if (imageInfo != null)
			{
				result = imageInfo.Image.Clone() as Image;
			}
			return result;
		}
		set
		{
			ImageInfo imageInfo = null;
			IEnumerator enumerator = GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					ImageInfo imageInfo2 = (ImageInfo)enumerator.Current;
					if (imageInfo2.Key == key)
					{
						imageInfo = imageInfo2;
						break;
					}
				}
			}
			finally
			{
				IDisposable disposable = enumerator as IDisposable;
				if (disposable != null)
				{
					disposable.Dispose();
				}
			}
			if (imageInfo != null)
			{
				imageInfo.Image = value;
			}
			else
			{
				Add(key, value);
			}
		}
	}

	public StringCollection Keys
	{
		get
		{
			StringCollection stringCollection = new StringCollection();
			for (int i = 0; i < base.Count; i++)
			{
				string key = ((ImageInfo)base.InnerList[i]).Key;
				if (key != null)
				{
					stringCollection.Add(key);
				}
			}
			return stringCollection;
		}
	}

	object IList.this[int index]
	{
		get
		{
			return this[index];
		}
		set
		{
			if (!(value is Image))
			{
				throw new ArgumentException("value");
			}
			this[index] = (Image)value;
		}
	}

	public void Add(Icon value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		base.InnerList.Add(new ImageInfo(ImageListAdv.IconToImageAlphaCorrect(value), null));
	}

	public void Add(Image value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		base.InnerList.Add(new ImageInfo(value, null));
	}

	public bool Contains(Image image)
	{
		if (image == null)
		{
			throw new ArgumentNullException("image");
		}
		foreach (ImageInfo inner in base.InnerList)
		{
			if (inner.Image == image)
			{
				return true;
			}
		}
		return false;
	}

	public int IndexOf(Image image)
	{
		if (image == null)
		{
			throw new ArgumentNullException("image");
		}
		for (int i = 0; i < base.InnerList.Count; i++)
		{
			if (((ImageInfo)base.InnerList[i]).Image == image)
			{
				return i;
			}
		}
		return -1;
	}

	public void Remove(Image image)
	{
		if (image == null)
		{
			throw new ArgumentNullException("image");
		}
		for (int i = 0; i < base.InnerList.Count; i++)
		{
			if (((ImageInfo)base.InnerList[i]).Image == image)
			{
				base.InnerList.RemoveAt(i);
				break;
			}
		}
	}

	public void Add(string key, Icon icon)
	{
		base.InnerList.Add(new ImageInfo(ImageListAdv.IconToImageAlphaCorrect(icon), key));
	}

	public void Add(string key, Image image)
	{
		base.InnerList.Add(new ImageInfo(image, key));
	}

	public void AddRange(Image[] images)
	{
		if (images == null)
		{
			throw new ArgumentNullException("images");
		}
		foreach (Image value in images)
		{
			Add(value);
		}
	}

	public bool ContainsKey(string key)
	{
		if (key == null)
		{
			throw new ArgumentNullException("image");
		}
		foreach (ImageInfo inner in base.InnerList)
		{
			if (inner.Key == key)
			{
				return true;
			}
		}
		return false;
	}

	public new IEnumerator GetEnumerator()
	{
		Image[] array = new Image[base.Count];
		for (int i = 0; i < array.Length; i++)
		{
			array[i] = this[i];
		}
		return array.GetEnumerator();
	}

	public int IndexOfKey(string key)
	{
		if (key == null)
		{
			throw new ArgumentNullException("image");
		}
		for (int i = 0; i < base.InnerList.Count; i++)
		{
			if (((ImageInfo)base.InnerList[i]).Key == key)
			{
				return i;
			}
		}
		return -1;
	}

	public void RemoveByKey(string key)
	{
		if (key == null)
		{
			throw new ArgumentNullException("image");
		}
		for (int i = 0; i < base.InnerList.Count; i++)
		{
			if (((ImageInfo)base.InnerList[i]).Key == key)
			{
				base.InnerList.RemoveAt(i);
				break;
			}
		}
	}

	public void SetKeyName(int index, string name)
	{
		if (name == null)
		{
			throw new ArgumentNullException("name");
		}
		((ImageInfo)base.InnerList[index]).Key = name;
	}

	void ICollection.CopyTo(Array dest, int index)
	{
		for (int i = 0; i < base.Count; i++)
		{
			dest.SetValue(this[i], index++);
		}
	}

	int IList.Add(object value)
	{
		if (!(value is Image))
		{
			throw new ArgumentException("value");
		}
		Add((Image)value);
		return base.Count - 1;
	}

	bool IList.Contains(object image)
	{
		if (image is Image)
		{
			return Contains((Image)image);
		}
		return false;
	}

	int IList.IndexOf(object image)
	{
		if (image is Image)
		{
			return IndexOf((Image)image);
		}
		return -1;
	}

	void IList.Insert(int index, object value)
	{
		if (!(value is Image))
		{
			throw new ArgumentException("value");
		}
		base.InnerList.Insert(index, new ImageInfo((Image)value, null));
	}

	void IList.Remove(object image)
	{
		if (image is Image)
		{
			Remove((Image)image);
		}
	}
}
