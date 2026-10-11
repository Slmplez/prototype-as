using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text.RegularExpressions;

namespace Syncfusion.Windows.Forms.Tools;

internal class HtmlRootBox : HtmlBox
{
	private Dictionary<string, Dictionary<string, HtmlBlock>> elementStyleBlocks;

	private string documentSource;

	private SizeF maxSize;

	internal Dictionary<string, Dictionary<string, HtmlBlock>> ElementStyleBlocks => elementStyleBlocks;

	public string DocumentSource => documentSource;

	public SizeF MaxSize
	{
		get
		{
			return maxSize;
		}
		set
		{
			maxSize = value;
		}
	}

	public HtmlRootBox()
	{
		htmlRootBox = this;
		elementStyleBlocks = new Dictionary<string, Dictionary<string, HtmlBlock>>();
		ElementStyleBlocks.Add("all", new Dictionary<string, HtmlBlock>());
		base.Display = "block";
		ApplyStyleSheet("\r\n        html, address,\r\n        blockquote,\r\n        body, dd, div,\r\n        dl, dt, fieldset, form,\r\n        frame, frameset,\r\n        h1, h2, h3, h4,\r\n        h5, h6, noframes,\r\n        ol, p, ul, center,\r\n        dir, hr, menu, pre   { display: block }\r\n        li              { display: list-item }\r\n        head            { display: none }\r\n        table           { display: table }\r\n        tr              { display: table-row }\r\n        thead           { display: table-header-group }\r\n        tbody           { display: table-row-group }\r\n        tfoot           { display: table-footer-group }\r\n        col             { display: table-column }\r\n        colgroup        { display: table-column-group }\r\n        td, th          { display: table-cell }\r\n        caption         { display: table-caption }\r\n        th              { font-weight: bolder; text-align: center }\r\n        caption         { text-align: center }\r\n        body            { margin: 8px }\r\n        h1              { font-size: 2em; margin: .67em 0 }\r\n        h2              { font-size: 1.5em; margin: .75em 0 }\r\n        h3              { font-size: 1.17em; margin: .83em 0 }\r\n        h4, p,\r\n        blockquote, ul,\r\n        fieldset, form,\r\n        ol, dl, dir,\r\n        menu            { margin: 1.12em 0 }\r\n        h5              { font-size: .83em; margin: 1.5em 0 }\r\n        h6              { font-size: .75em; margin: 1.67em 0 }\r\n        h1, h2, h3, h4,\r\n        h5, h6, b,\r\n        strong          { font-weight: bolder; }\r\n        blockquote      { margin-left: 40px; margin-right: 40px }\r\n        i, cite, em,\r\n        var, address    { font-style: italic }\r\n        pre, tt, code,\r\n        kbd, samp       { font-family: monospace }\r\n        pre             { white-space: pre }\r\n        button, textarea,\r\n        input, select   { display: inline-block }\r\n        big             { font-size: 1.17em }\r\n        small, sub, sup { font-size: .83em }\r\n        sub             { vertical-align: sub }\r\n        sup             { vertical-align: super }\r\n        table           { border-spacing: 2px; }\r\n        thead, tbody,\r\n        tfoot           { vertical-align: middle }\r\n        td, th          { vertical-align: inherit }\r\n        s, strike, del  { text-decoration: line-through }\r\n        hr              { border: 1px inset }\r\n        ol, ul, dir,\r\n        menu, dd        { margin-left: 40px }\r\n        ol              { list-style-type: decimal }\r\n        ol ul, ul ol,\r\n        ul ul, ol ol    { margin-top: 0; margin-bottom: 0 }\r\n        u, ins          { text-decoration: underline }\r\n        br:before       { content: \"\\A\" }\r\n        :before, :after { white-space: pre-line }\r\n        center          { text-align: center }\r\n        :link, :visited { text-decoration: underline }\r\n        :focus          { outline: thin dotted invert }\r\n        a               { color:blue; text-decoration:underline }\r\n        table           { border-color:#dfdfdf; border-style:outset; }\r\n        td, th          { border-color:#dfdfdf; border-style:inset; }\r\n        style, title,\r\n        script, link,\r\n        meta, area,\r\n        base, param     { display:none }\r\n        hr              { border-color: #ccc }  \r\n        pre             { font-size:10pt }\r\n        ");
	}

	public HtmlRootBox(string documentSource, Rectangle rect)
		: this()
	{
		this.documentSource = documentSource;
		ParseDocumentSource();
		ApplyStyles(this);
		AdjustBlock(this);
		base.Bounds = rect;
	}

	public void ApplyStyleSheet(string stylesheet)
	{
		if (string.IsNullOrEmpty(stylesheet))
		{
			return;
		}
		stylesheet = stylesheet.ToLower();
		Do.RemoveComments(ref stylesheet);
		MatchCollection matchCollection = Do.MatchPattern("[^\\{\\}]*\\{[^\\{\\}]*\\}", stylesheet);
		foreach (Match item in matchCollection)
		{
			ApplyStyleBlock("all", item.Value);
		}
	}

	private void ApplyStyleBlock(string media, string block)
	{
		if (string.IsNullOrEmpty(media))
		{
			media = "all";
		}
		int num = block.IndexOf("{");
		string blockSource = block.Substring(num).Replace("{", string.Empty).Replace("}", string.Empty);
		if (num < 0)
		{
			return;
		}
		string[] array = block.Substring(0, num).Split(',');
		for (int i = 0; i < array.Length; i++)
		{
			string text = array[i].Trim();
			if (string.IsNullOrEmpty(text))
			{
				continue;
			}
			HtmlBlock htmlBlock = new HtmlBlock(blockSource);
			if (!ElementStyleBlocks.ContainsKey(media))
			{
				ElementStyleBlocks.Add(media, new Dictionary<string, HtmlBlock>());
			}
			if (!ElementStyleBlocks[media].ContainsKey(text))
			{
				ElementStyleBlocks[media].Add(text, htmlBlock);
				continue;
			}
			HtmlBlock htmlBlock2 = ElementStyleBlocks[media][text];
			foreach (string key in htmlBlock.Properties.Keys)
			{
				if (htmlBlock2.Properties.ContainsKey(key))
				{
					htmlBlock2.Properties[key] = htmlBlock.Properties[key];
				}
				else
				{
					htmlBlock2.Properties.Add(key, htmlBlock.Properties[key]);
				}
			}
			htmlBlock2.ChangePropertyValues();
		}
	}

	private void ParseDocumentSource()
	{
		MatchCollection matchCollection = Do.MatchPattern("<[^<>]*>", DocumentSource);
		HtmlBox box = this;
		int num = -1;
		foreach (Match item in matchCollection)
		{
			string text = ((item.Index > 0) ? DocumentSource.Substring(num + 1, item.Index - num - 1) : string.Empty);
			if (!string.IsNullOrEmpty(text.Trim()))
			{
				HtmlBox htmlBox = new HtmlBox(box);
				htmlBox.Text = text;
				htmlBox.IsAnonymous = true;
			}
			else if (text != null && text.Length > 0)
			{
				HtmlBox htmlBox2 = new HtmlBox(box);
				htmlBox2.Text = text;
				htmlBox2.IsAnonymousSpace = true;
			}
			HtmlTag htmlTag = new HtmlTag(item.Value);
			if (htmlTag.IsClosing)
			{
				box = Do.FindParentBox(htmlTag.TagName, box, this);
			}
			else if (htmlTag.IsSingle)
			{
				new HtmlBox(box, htmlTag);
			}
			else
			{
				box = new HtmlBox(box, htmlTag);
			}
			num = item.Index + item.Length - 1;
		}
		string value = DocumentSource.Substring((num > 0) ? (num + 1) : 0, DocumentSource.Length - num - 1 + ((num == 0) ? 1 : 0));
		if (!string.IsNullOrEmpty(value))
		{
			HtmlBox htmlBox3 = new HtmlBox(box);
			htmlBox3.Text = value;
		}
	}

	private void ApplyStyles(HtmlBox startBox)
	{
		bool flag = false;
		foreach (HtmlBox box in startBox.Boxes)
		{
			box.InheritStyle(box.ParentBox);
			if (box.HtmlTag != null)
			{
				if (ElementStyleBlocks["all"].ContainsKey(box.HtmlTag.TagName))
				{
					ElementStyleBlocks["all"][box.HtmlTag.TagName].AssignStyleBlockToBox(box);
				}
				if (box.HtmlTag.IsAttributeExists("class") && ElementStyleBlocks["all"].ContainsKey("." + box.HtmlTag.Attributes["class"]))
				{
					ElementStyleBlocks["all"]["." + box.HtmlTag.Attributes["class"]].AssignStyleBlockToBox(box);
				}
				box.HtmlTag.AssignAttributesValues(box);
				if (box.HtmlTag.IsAttributeExists("style"))
				{
					HtmlBlock htmlBlock = new HtmlBlock(box.HtmlTag.Attributes["style"]);
					htmlBlock.AssignStyleBlockToBox(box);
				}
				if (box.HtmlTag.TagName.Equals("style", StringComparison.CurrentCultureIgnoreCase) && box.Boxes.Count == 1)
				{
					ApplyStyleSheet(box.Boxes[0].Text);
				}
				if (box.HtmlTag.TagName.Equals("link", StringComparison.CurrentCultureIgnoreCase) && box.GetAttribute("rel", string.Empty).Equals("stylesheet", StringComparison.CurrentCultureIgnoreCase))
				{
					ApplyStyleSheet(Do.GetStyleSheet(box.GetAttribute("href", string.Empty)));
				}
			}
			ApplyStyles(box);
		}
		if (!flag)
		{
			return;
		}
		foreach (HtmlBox box2 in startBox.Boxes)
		{
			box2.Display = "block";
		}
	}

	private void AdjustBlock(HtmlBox startBox)
	{
		if (!startBox.HasInlinesOnly())
		{
			List<List<HtmlBox>> inlineBoxes = GetInlineBoxes(startBox);
			foreach (List<HtmlBox> item in inlineBoxes)
			{
				if (item.Count == 0)
				{
					continue;
				}
				if (item.Count == 1 && item[0].IsAnonymousSpace)
				{
					HtmlBox htmlBox = new HtmlBox(startBox, item[0], "none");
					htmlBox.IsAnonymousSpaceBlock = true;
					item[0].ParentBox = htmlBox;
					continue;
				}
				HtmlBox htmlBox2 = new HtmlBox(startBox, item[0], "block");
				htmlBox2.IsAnonymousBlock = true;
				foreach (HtmlBox item2 in item)
				{
					item2.ParentBox = htmlBox2;
				}
			}
		}
		foreach (HtmlBox box in startBox.Boxes)
		{
			AdjustBlock(box);
		}
	}

	private List<List<HtmlBox>> GetInlineBoxes(HtmlBox box)
	{
		List<List<HtmlBox>> list = new List<List<HtmlBox>>();
		List<HtmlBox> list2 = null;
		for (int i = 0; i < box.Boxes.Count; i++)
		{
			HtmlBox htmlBox = box.Boxes[i];
			if (htmlBox.Display == "inline")
			{
				if (list2 == null)
				{
					list2 = new List<HtmlBox>();
					list.Add(list2);
				}
				list2.Add(htmlBox);
			}
			else
			{
				list2 = null;
			}
		}
		if (list.Count > 0 && list[list.Count - 1].Count == 0)
		{
			list.RemoveAt(list.Count - 1);
		}
		return list;
	}

	public override void CalcBoxBounds(Graphics g)
	{
		base.CalcBoxBounds(g);
	}
}
