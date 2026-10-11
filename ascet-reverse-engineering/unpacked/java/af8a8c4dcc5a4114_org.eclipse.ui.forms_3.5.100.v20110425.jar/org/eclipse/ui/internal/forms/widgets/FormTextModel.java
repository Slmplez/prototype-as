/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWT
 */
package org.eclipse.ui.internal.forms.widgets;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.swt.SWT;
import org.eclipse.ui.forms.HyperlinkSettings;
import org.eclipse.ui.internal.forms.widgets.AggregateHyperlinkSegment;
import org.eclipse.ui.internal.forms.widgets.BreakSegment;
import org.eclipse.ui.internal.forms.widgets.BulletParagraph;
import org.eclipse.ui.internal.forms.widgets.ControlSegment;
import org.eclipse.ui.internal.forms.widgets.IFocusSelectable;
import org.eclipse.ui.internal.forms.widgets.IHyperlinkSegment;
import org.eclipse.ui.internal.forms.widgets.ImageHyperlinkSegment;
import org.eclipse.ui.internal.forms.widgets.ImageSegment;
import org.eclipse.ui.internal.forms.widgets.ObjectSegment;
import org.eclipse.ui.internal.forms.widgets.Paragraph;
import org.eclipse.ui.internal.forms.widgets.ParagraphSegment;
import org.eclipse.ui.internal.forms.widgets.SWTUtil;
import org.eclipse.ui.internal.forms.widgets.TextHyperlinkSegment;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public class FormTextModel {
    private static final DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
    private boolean whitespaceNormalized = true;
    private Vector paragraphs;
    private IFocusSelectable[] selectableSegments;
    private int selectedSegmentIndex = -1;
    private int savedSelectedLinkIndex = -1;
    private HyperlinkSettings hyperlinkSettings;
    public static final String BOLD_FONT_ID = "f.____bold";

    public FormTextModel() {
        this.reset();
    }

    public Paragraph[] getParagraphs() {
        if (this.paragraphs == null) {
            return new Paragraph[0];
        }
        return this.paragraphs.toArray(new Paragraph[this.paragraphs.size()]);
    }

    public String getAccessibleText() {
        if (this.paragraphs == null) {
            return "";
        }
        StringBuffer sbuf = new StringBuffer();
        int i = 0;
        while (i < this.paragraphs.size()) {
            Paragraph paragraph = (Paragraph)this.paragraphs.get(i);
            String text = paragraph.getAccessibleText();
            sbuf.append(text);
            ++i;
        }
        return sbuf.toString();
    }

    public void parseTaggedText(String taggedText, boolean expandURLs) {
        if (taggedText == null) {
            this.reset();
            return;
        }
        try {
            ByteArrayInputStream stream = new ByteArrayInputStream(taggedText.getBytes("UTF8"));
            this.parseInputStream(stream, expandURLs);
        }
        catch (UnsupportedEncodingException e) {
            SWT.error((int)42, (Throwable)e);
        }
    }

    public void parseInputStream(InputStream is, boolean expandURLs) {
        documentBuilderFactory.setNamespaceAware(true);
        documentBuilderFactory.setIgnoringComments(true);
        this.reset();
        try {
            DocumentBuilder parser = documentBuilderFactory.newDocumentBuilder();
            parser.setErrorHandler(new ParseErrorHandler());
            InputSource source = new InputSource(is);
            Document doc = parser.parse(source);
            this.processDocument(doc, expandURLs);
        }
        catch (ParserConfigurationException e) {
            SWT.error((int)5, (Throwable)e, (String)(" " + e.getMessage()));
        }
        catch (SAXException e) {
            SWT.error((int)5, (Throwable)e, (String)(" " + e.getMessage()));
        }
        catch (IOException e) {
            SWT.error((int)39, (Throwable)e);
        }
    }

    private void processDocument(Document doc, boolean expandURLs) {
        Element root = doc.getDocumentElement();
        NodeList children = root.getChildNodes();
        this.processSubnodes(this.paragraphs, children, expandURLs);
    }

    private void processSubnodes(Vector plist, NodeList children, boolean expandURLs) {
        int i = 0;
        while (i < children.getLength()) {
            Paragraph p;
            Node child = children.item(i);
            if (child.getNodeType() == 3) {
                String text = this.getSingleNodeText(child);
                if (text != null && !this.isIgnorableWhiteSpace(text, true)) {
                    p = new Paragraph(true);
                    p.parseRegularText(text, expandURLs, true, this.getHyperlinkSettings(), null);
                    plist.add(p);
                }
            } else if (child.getNodeType() == 1) {
                String tag = child.getNodeName().toLowerCase();
                if (tag.equals("p")) {
                    p = this.processParagraph(child, expandURLs);
                    if (p != null) {
                        plist.add(p);
                    }
                } else if (tag.equals("li") && (p = this.processListItem(child, expandURLs)) != null) {
                    plist.add(p);
                }
            }
            ++i;
        }
    }

    private Paragraph processParagraph(Node paragraph, boolean expandURLs) {
        NodeList children = paragraph.getChildNodes();
        NamedNodeMap atts = paragraph.getAttributes();
        Node addSpaceAtt = atts.getNamedItem("addVerticalSpace");
        boolean addSpace = true;
        if (addSpaceAtt == null) {
            addSpaceAtt = atts.getNamedItem("vspace");
        }
        if (addSpaceAtt != null) {
            String value = addSpaceAtt.getNodeValue();
            addSpace = value.equalsIgnoreCase("true");
        }
        Paragraph p = new Paragraph(addSpace);
        this.processSegments(p, children, expandURLs);
        return p;
    }

    private Paragraph processListItem(Node listItem, boolean expandURLs) {
        String value;
        NodeList children = listItem.getChildNodes();
        NamedNodeMap atts = listItem.getAttributes();
        Node addSpaceAtt = atts.getNamedItem("addVerticalSpace");
        Node styleAtt = atts.getNamedItem("style");
        Node valueAtt = atts.getNamedItem("value");
        Node indentAtt = atts.getNamedItem("indent");
        Node bindentAtt = atts.getNamedItem("bindent");
        int style = 1;
        int indent = -1;
        int bindent = -1;
        String text = null;
        boolean addSpace = true;
        if (addSpaceAtt != null) {
            value = addSpaceAtt.getNodeValue();
            addSpace = value.equalsIgnoreCase("true");
        }
        if (styleAtt != null) {
            value = styleAtt.getNodeValue();
            if (value.equalsIgnoreCase("text")) {
                style = 2;
            } else if (value.equalsIgnoreCase("image")) {
                style = 3;
            } else if (value.equalsIgnoreCase("bullet")) {
                style = 1;
            }
        }
        if (valueAtt != null) {
            text = valueAtt.getNodeValue();
            if (style == 3) {
                text = "i." + text;
            }
        }
        if (indentAtt != null) {
            value = indentAtt.getNodeValue();
            try {
                indent = Integer.parseInt(value);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        if (bindentAtt != null) {
            value = bindentAtt.getNodeValue();
            try {
                bindent = Integer.parseInt(value);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        BulletParagraph p = new BulletParagraph(addSpace);
        p.setIndent(indent);
        p.setBulletIndent(bindent);
        p.setBulletStyle(style);
        p.setBulletText(text);
        this.processSegments(p, children, expandURLs);
        return p;
    }

    private void processSegments(Paragraph p, NodeList children, boolean expandURLs) {
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            ParagraphSegment segment = null;
            if (child.getNodeType() == 3) {
                String value = this.getSingleNodeText(child);
                if (value != null && !this.isIgnorableWhiteSpace(value, false)) {
                    p.parseRegularText(value, expandURLs, true, this.getHyperlinkSettings(), null);
                }
            } else if (child.getNodeType() == 1) {
                String name = child.getNodeName();
                if (name.equalsIgnoreCase("img")) {
                    segment = this.processImageSegment(child);
                } else if (name.equalsIgnoreCase("a")) {
                    segment = this.processHyperlinkSegment(child, this.getHyperlinkSettings());
                } else if (name.equalsIgnoreCase("span")) {
                    this.processTextSegment(p, expandURLs, child);
                } else if (name.equalsIgnoreCase("b")) {
                    String text = this.getNodeText(child);
                    String fontId = BOLD_FONT_ID;
                    p.parseRegularText(text, expandURLs, true, this.getHyperlinkSettings(), fontId);
                } else if (name.equalsIgnoreCase("br")) {
                    segment = new BreakSegment();
                } else if (name.equalsIgnoreCase("control")) {
                    segment = this.processControlSegment(child);
                }
            }
            if (segment != null) {
                p.addSegment(segment);
            }
            ++i;
        }
    }

    private boolean isIgnorableWhiteSpace(String text, boolean ignoreSpaces) {
        int i = 0;
        while (i < text.length()) {
            char c = text.charAt(i);
            if (!(ignoreSpaces && c == ' ' || c == '\n' || c == '\r' || c == '\f')) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private ImageSegment processImageSegment(Node image) {
        ImageSegment segment = new ImageSegment();
        this.processObjectSegment(segment, image, "i.");
        return segment;
    }

    private ControlSegment processControlSegment(Node control) {
        ControlSegment segment = new ControlSegment();
        this.processObjectSegment(segment, control, "o.");
        Node fill = control.getAttributes().getNamedItem("fill");
        if (fill != null) {
            String value = fill.getNodeValue();
            boolean doFill = value.equalsIgnoreCase("true");
            segment.setFill(doFill);
        }
        try {
            Node height;
            Node width = control.getAttributes().getNamedItem("width");
            if (width != null) {
                String value = width.getNodeValue();
                int doWidth = Integer.parseInt(value);
                segment.setWidth(doWidth);
            }
            if ((height = control.getAttributes().getNamedItem("height")) != null) {
                String value = height.getNodeValue();
                int doHeight = Integer.parseInt(value);
                segment.setHeight(doHeight);
            }
        }
        catch (NumberFormatException numberFormatException) {}
        return segment;
    }

    private void processObjectSegment(ObjectSegment segment, Node object, String prefix) {
        String value;
        NamedNodeMap atts = object.getAttributes();
        Node id = atts.getNamedItem("href");
        Node align = atts.getNamedItem("align");
        if (id != null) {
            value = id.getNodeValue();
            segment.setObjectId(String.valueOf(prefix) + value);
        }
        if (align != null) {
            value = align.getNodeValue().toLowerCase();
            if (value.equals("top")) {
                segment.setVerticalAlignment(1);
            } else if (value.equals("middle")) {
                segment.setVerticalAlignment(2);
            } else if (value.equals("bottom")) {
                segment.setVerticalAlignment(3);
            }
        }
    }

    private void appendText(String value, StringBuffer buf, int[] spaceCounter) {
        if (!this.whitespaceNormalized) {
            buf.append(value);
        } else {
            int j = 0;
            while (j < value.length()) {
                char c = value.charAt(j);
                if (c == ' ' || c == '\t') {
                    spaceCounter[0] = spaceCounter[0] + 1;
                    if (spaceCounter[0] == 1) {
                        buf.append(c);
                    }
                } else if (c == '\n' || c == '\r' || c == '\f') {
                    spaceCounter[0] = spaceCounter[0] + 1;
                    if (spaceCounter[0] == 1) {
                        buf.append(' ');
                    }
                } else {
                    spaceCounter[0] = 0;
                    buf.append(c);
                }
                ++j;
            }
        }
    }

    private String getNormalizedText(String text) {
        int[] spaceCounter = new int[1];
        StringBuffer buf = new StringBuffer();
        if (text == null) {
            return null;
        }
        this.appendText(text, buf, spaceCounter);
        return buf.toString();
    }

    private String getSingleNodeText(Node node) {
        return this.getNormalizedText(node.getNodeValue());
    }

    private String getNodeText(Node node) {
        NodeList children = node.getChildNodes();
        StringBuffer buf = new StringBuffer();
        int[] spaceCounter = new int[1];
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 3) {
                String value = child.getNodeValue();
                this.appendText(value, buf, spaceCounter);
            }
            ++i;
        }
        return buf.toString().trim();
    }

    private ParagraphSegment processHyperlinkSegment(Node link, HyperlinkSettings settings) {
        Object status;
        String value;
        Node nowrap;
        Node boldAtt;
        NamedNodeMap atts = link.getAttributes();
        String href = null;
        boolean wrapAllowed = true;
        String boldFontId = null;
        Node hrefAtt = atts.getNamedItem("href");
        if (hrefAtt != null) {
            href = hrefAtt.getNodeValue();
        }
        if ((boldAtt = atts.getNamedItem("bold")) != null) {
            boldFontId = BOLD_FONT_ID;
        }
        if ((nowrap = atts.getNamedItem("nowrap")) != null && (value = nowrap.getNodeValue()) != null && value.equalsIgnoreCase("true")) {
            wrapAllowed = false;
        }
        if ((status = this.checkChildren(link)) instanceof Node) {
            Node text;
            Node child = (Node)status;
            ImageHyperlinkSegment segment = new ImageHyperlinkSegment();
            segment.setHref(href);
            segment.setWordWrapAllowed(wrapAllowed);
            Node alt = child.getAttributes().getNamedItem("alt");
            if (alt != null) {
                segment.setTooltipText(alt.getNodeValue());
            }
            if ((text = child.getAttributes().getNamedItem("text")) != null) {
                segment.setText(text.getNodeValue());
            }
            this.processObjectSegment(segment, child, "i.");
            return segment;
        }
        if (status instanceof String) {
            String text = (String)status;
            TextHyperlinkSegment segment = new TextHyperlinkSegment(text, settings, null);
            segment.setHref(href);
            segment.setFontId(boldFontId);
            Node alt = atts.getNamedItem("alt");
            if (alt != null) {
                segment.setTooltipText(alt.getNodeValue());
            }
            segment.setWordWrapAllowed(wrapAllowed);
            return segment;
        }
        AggregateHyperlinkSegment parent = new AggregateHyperlinkSegment();
        parent.setHref(href);
        NodeList children = link.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            String name;
            Node alt;
            Node child = children.item(i);
            if (child.getNodeType() == 3) {
                String value2 = child.getNodeValue();
                TextHyperlinkSegment ts = new TextHyperlinkSegment(this.getNormalizedText(value2), settings, null);
                alt = atts.getNamedItem("alt");
                if (alt != null) {
                    ts.setTooltipText(alt.getNodeValue());
                }
                ts.setWordWrapAllowed(wrapAllowed);
                parent.add(ts);
            } else if (child.getNodeType() == 1 && (name = child.getNodeName()).equalsIgnoreCase("img")) {
                ImageHyperlinkSegment is = new ImageHyperlinkSegment();
                this.processObjectSegment(is, child, "i.");
                alt = child.getAttributes().getNamedItem("alt");
                if (alt != null) {
                    is.setTooltipText(alt.getNodeValue());
                }
                parent.add(is);
                is.setWordWrapAllowed(wrapAllowed);
            }
            ++i;
        }
        return parent;
    }

    private Object checkChildren(Node node) {
        boolean text = false;
        Node imgNode = null;
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 3) {
                text = true;
            } else if (child.getNodeType() == 1 && child.getNodeName().equalsIgnoreCase("img")) {
                imgNode = child;
            }
            ++i;
        }
        if (text && imgNode == null) {
            return this.getNodeText(node);
        }
        if (!text && imgNode != null) {
            return imgNode;
        }
        return null;
    }

    private void processTextSegment(Paragraph p, boolean expandURLs, Node textNode) {
        String value;
        String text = this.getNodeText(textNode);
        NamedNodeMap atts = textNode.getAttributes();
        Node font = atts.getNamedItem("font");
        Node color = atts.getNamedItem("color");
        boolean wrapAllowed = true;
        Node nowrap = atts.getNamedItem("nowrap");
        if (nowrap != null && (value = nowrap.getNodeValue()) != null && value.equalsIgnoreCase("true")) {
            wrapAllowed = false;
        }
        String fontId = null;
        String colorId = null;
        if (font != null) {
            fontId = "f." + font.getNodeValue();
        }
        if (color != null) {
            colorId = "c." + color.getNodeValue();
        }
        p.parseRegularText(text, expandURLs, wrapAllowed, this.getHyperlinkSettings(), fontId, colorId);
    }

    public void parseRegularText(String regularText, boolean convertURLs) {
        this.reset();
        if (regularText == null) {
            return;
        }
        regularText = this.getNormalizedText(regularText);
        Paragraph p = new Paragraph(true);
        this.paragraphs.add(p);
        int pstart = 0;
        int i = 0;
        while (i < regularText.length()) {
            char c = regularText.charAt(i);
            if (p == null) {
                p = new Paragraph(true);
                this.paragraphs.add(p);
            }
            if (c == '\n') {
                String text = regularText.substring(pstart, i);
                pstart = i + 1;
                p.parseRegularText(text, convertURLs, true, this.getHyperlinkSettings(), null);
                p = null;
            }
            ++i;
        }
        if (p != null) {
            String text = regularText.substring(pstart);
            p.parseRegularText(text, convertURLs, true, this.getHyperlinkSettings(), null);
        }
    }

    public HyperlinkSettings getHyperlinkSettings() {
        if (this.hyperlinkSettings == null) {
            this.hyperlinkSettings = new HyperlinkSettings(SWTUtil.getStandardDisplay());
        }
        return this.hyperlinkSettings;
    }

    public void setHyperlinkSettings(HyperlinkSettings settings) {
        this.hyperlinkSettings = settings;
    }

    private void reset() {
        if (this.paragraphs == null) {
            this.paragraphs = new Vector();
        }
        this.paragraphs.clear();
        this.selectedSegmentIndex = -1;
        this.savedSelectedLinkIndex = -1;
        this.selectableSegments = null;
    }

    IFocusSelectable[] getFocusSelectableSegments() {
        if (this.selectableSegments != null || this.paragraphs == null) {
            return this.selectableSegments;
        }
        Vector<ParagraphSegment> result = new Vector<ParagraphSegment>();
        int i = 0;
        while (i < this.paragraphs.size()) {
            Paragraph p = (Paragraph)this.paragraphs.get(i);
            ParagraphSegment[] segments = p.getSegments();
            int j = 0;
            while (j < segments.length) {
                if (segments[j] instanceof IFocusSelectable) {
                    result.add(segments[j]);
                }
                ++j;
            }
            ++i;
        }
        this.selectableSegments = result.toArray(new IFocusSelectable[result.size()]);
        return this.selectableSegments;
    }

    public IHyperlinkSegment getHyperlink(int index) {
        IFocusSelectable link;
        IFocusSelectable[] selectables = this.getFocusSelectableSegments();
        if (selectables.length > index && (link = selectables[index]) instanceof IHyperlinkSegment) {
            return (IHyperlinkSegment)link;
        }
        return null;
    }

    public IHyperlinkSegment findHyperlinkAt(int x, int y) {
        IFocusSelectable[] selectables = this.getFocusSelectableSegments();
        int i = 0;
        while (i < selectables.length) {
            IHyperlinkSegment link;
            IFocusSelectable segment = selectables[i];
            if (segment instanceof IHyperlinkSegment && (link = (IHyperlinkSegment)segment).contains(x, y)) {
                return link;
            }
            ++i;
        }
        return null;
    }

    public int getHyperlinkCount() {
        return this.getFocusSelectableSegments().length;
    }

    public int indexOf(IHyperlinkSegment link) {
        IFocusSelectable[] selectables = this.getFocusSelectableSegments();
        int i = 0;
        while (i < selectables.length) {
            IHyperlinkSegment l;
            IFocusSelectable segment = selectables[i];
            if (segment instanceof IHyperlinkSegment && link == (l = (IHyperlinkSegment)segment)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public ParagraphSegment findSegmentAt(int x, int y) {
        int i = 0;
        while (i < this.paragraphs.size()) {
            Paragraph p = (Paragraph)this.paragraphs.get(i);
            ParagraphSegment segment = p.findSegmentAt(x, y);
            if (segment != null) {
                return segment;
            }
            ++i;
        }
        return null;
    }

    public void clearCache(String fontId) {
        int i = 0;
        while (i < this.paragraphs.size()) {
            Paragraph p = (Paragraph)this.paragraphs.get(i);
            p.clearCache(fontId);
            ++i;
        }
    }

    public IFocusSelectable getSelectedSegment() {
        if (this.selectableSegments == null || this.selectedSegmentIndex == -1) {
            return null;
        }
        return this.selectableSegments[this.selectedSegmentIndex];
    }

    public int getSelectedSegmentIndex() {
        return this.selectedSegmentIndex;
    }

    public boolean linkExists(IHyperlinkSegment link) {
        if (this.selectableSegments == null) {
            return false;
        }
        int i = 0;
        while (i < this.selectableSegments.length) {
            if (this.selectableSegments[i] == link) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean traverseFocusSelectableObjects(boolean next) {
        IFocusSelectable[] selectables = this.getFocusSelectableSegments();
        if (selectables == null) {
            return false;
        }
        int size = selectables.length;
        this.selectedSegmentIndex = next ? ++this.selectedSegmentIndex : --this.selectedSegmentIndex;
        if (this.selectedSegmentIndex < 0 || this.selectedSegmentIndex > size - 1) {
            this.selectedSegmentIndex = -1;
        }
        return this.selectedSegmentIndex != -1;
    }

    public IFocusSelectable getNextFocusSegment(boolean next) {
        int nextIndex;
        IFocusSelectable[] selectables = this.getFocusSelectableSegments();
        if (selectables == null) {
            return null;
        }
        int n = nextIndex = next ? this.selectedSegmentIndex + 1 : this.selectedSegmentIndex - 1;
        if (nextIndex < 0 || nextIndex > selectables.length - 1) {
            return null;
        }
        return selectables[nextIndex];
    }

    public boolean restoreSavedLink() {
        if (this.savedSelectedLinkIndex != -1) {
            this.selectedSegmentIndex = this.savedSelectedLinkIndex;
            return true;
        }
        return false;
    }

    public void selectLink(IHyperlinkSegment link) {
        if (link == null) {
            this.savedSelectedLinkIndex = this.selectedSegmentIndex;
            this.selectedSegmentIndex = -1;
        } else {
            this.select(link);
        }
    }

    public void select(IFocusSelectable selectable) {
        IFocusSelectable[] selectables = this.getFocusSelectableSegments();
        this.selectedSegmentIndex = -1;
        if (selectables == null) {
            return;
        }
        int i = 0;
        while (i < selectables.length) {
            if (selectables[i].equals(selectable)) {
                this.selectedSegmentIndex = i;
                break;
            }
            ++i;
        }
    }

    public boolean hasFocusSegments() {
        IFocusSelectable[] segments = this.getFocusSelectableSegments();
        return segments.length > 0;
    }

    public void dispose() {
        this.paragraphs = null;
        this.selectedSegmentIndex = -1;
        this.savedSelectedLinkIndex = -1;
        this.selectableSegments = null;
    }

    public boolean isWhitespaceNormalized() {
        return this.whitespaceNormalized;
    }

    public void setWhitespaceNormalized(boolean whitespaceNormalized) {
        this.whitespaceNormalized = whitespaceNormalized;
    }

    public class ParseErrorHandler
    implements ErrorHandler {
        public void error(SAXParseException arg0) throws SAXException {
        }

        public void fatalError(SAXParseException arg0) throws SAXException {
        }

        public void warning(SAXParseException arg0) throws SAXException {
        }
    }
}

