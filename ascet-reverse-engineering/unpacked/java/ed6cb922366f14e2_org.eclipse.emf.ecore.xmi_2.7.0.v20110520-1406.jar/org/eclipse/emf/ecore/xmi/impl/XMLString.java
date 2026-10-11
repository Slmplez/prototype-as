/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicEList
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.List;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.xmi.impl.StringSegment;

public class XMLString
extends StringSegment {
    private static final long serialVersionUID = 1L;
    protected List<String> elementNames;
    protected List<Boolean> mixed;
    protected boolean isUnformatted;
    protected boolean isMixed;
    protected List<String> indents;
    protected int depth;
    protected int lineWidth;
    protected int markedLineWidth;
    protected int currentLineWidth;
    protected boolean lastElementIsStart;
    protected Object firstElementMark;
    protected boolean seenRoot;
    protected boolean saveDoctype;
    protected Object docTypeMark;
    protected String docTypeName;
    protected String publicId;
    protected String systemId;

    public XMLString() {
        this(80);
    }

    public XMLString(int lineWidth) {
        this(lineWidth, null);
    }

    public XMLString(int lineWidth, String temporaryFileName) {
        super(temporaryFileName);
        this.lineWidth = lineWidth;
        this.elementNames = new BasicEList();
        this.mixed = new BasicEList();
        this.indents = new BasicEList();
        this.indents.add("");
    }

    public XMLString(int lineWidth, String publicId, String systemId) {
        this(lineWidth, publicId, systemId, null);
    }

    public XMLString(int lineWidth, String publicId, String systemId, String temporaryFileName) {
        this(lineWidth, temporaryFileName);
        if (publicId != null || systemId != null) {
            this.saveDoctype = true;
            this.publicId = publicId;
            this.systemId = systemId;
        }
    }

    public void setLineWidth(int lineWidth) {
        this.lineWidth = lineWidth;
    }

    public void reset(String publicId, String systemId, int lineWidth, String temporaryFileName) {
        super.reset();
        this.setTemporaryFileName(temporaryFileName);
        this.elementNames.clear();
        this.mixed.clear();
        this.indents.clear();
        this.indents.add("");
        if (publicId != null || systemId != null) {
            this.saveDoctype = true;
            this.publicId = publicId;
            this.systemId = systemId;
        } else {
            this.saveDoctype = false;
        }
        this.seenRoot = false;
        this.lastElementIsStart = false;
        this.isMixed = false;
        this.isUnformatted = false;
        this.depth = 0;
        this.markedLineWidth = 0;
        this.lineWidth = lineWidth;
        this.currentLineWidth = 0;
        this.firstElementMark = null;
    }

    public void startElement(String name) {
        if (this.lastElementIsStart) {
            this.closeStartElement();
        }
        this.elementNames.add(name);
        if (name != null) {
            this.saveDoctype(name);
            ++this.depth;
            if (!this.isMixed) {
                this.add(this.getElementIndent());
            }
            this.add("<");
            this.add(name);
            if (this.firstElementMark == null) {
                this.firstElementMark = this.mark();
                this.startFileBuffering();
            }
            this.lastElementIsStart = true;
        } else if (!this.isMixed) {
            this.add(this.getElementIndent(1));
        }
        this.mixed.add(this.isMixed ? Boolean.TRUE : Boolean.FALSE);
        this.isMixed = this.isUnformatted;
    }

    public void saveNilElement(String name) {
        if (this.lastElementIsStart) {
            this.closeStartElement();
        }
        this.saveDoctype(name);
        ++this.depth;
        if (!this.isMixed) {
            this.add(this.getElementIndent());
        }
        this.add("<");
        this.add(name);
        if (this.firstElementMark == null) {
            this.firstElementMark = this.mark();
            this.startFileBuffering();
        }
        if (this.currentLineWidth > this.lineWidth) {
            this.addLine();
            this.add(this.getAttributeIndent());
        } else {
            this.add(" ");
        }
        this.add("xsi:nil=\"true\"/>");
        --this.depth;
        if (!this.isUnformatted && !this.isMixed) {
            this.addLine();
        }
        this.lastElementIsStart = false;
    }

    public void saveDataValueElement(String name, String content) {
        if (this.lastElementIsStart) {
            this.closeStartElement();
        }
        this.saveDoctype(name);
        ++this.depth;
        if (!this.isMixed) {
            this.add(this.getElementIndent());
        }
        this.add("<");
        this.add(name);
        if (this.firstElementMark == null) {
            this.firstElementMark = this.mark();
            this.startFileBuffering();
        }
        this.add(">");
        this.add(content);
        this.add("</");
        --this.depth;
        this.add(name);
        this.add(">");
        if (!this.isUnformatted && !this.isMixed) {
            this.addLine();
        }
        this.lastElementIsStart = false;
    }

    public void addEntity(String name, String value) {
        if (this.docTypeMark != null) {
            this.resetToMark(this.docTypeMark);
            if (this.saveDoctype) {
                this.add(" [");
                this.addLine();
                this.docTypeMark = this.mark();
                this.add("]");
            } else {
                this.add("<!DOCTYPE ");
                this.add(this.docTypeName);
                this.add(" [");
                this.addLine();
                this.docTypeMark = this.mark();
                this.add("]>");
                this.addLine();
            }
            this.resetToMark(this.docTypeMark);
            this.docTypeMark = null;
        }
        this.add("<!ENTITY ");
        this.add(name);
        this.add(" \"");
        this.add(value);
        this.add("\">");
        this.addLine();
    }

    protected final void saveDoctype(String name) {
        if (!this.seenRoot) {
            this.seenRoot = true;
            if (this.saveDoctype) {
                this.add("<!DOCTYPE ");
                this.add(name);
                if (this.publicId != null) {
                    this.add(" PUBLIC \"");
                    this.add(this.publicId);
                    this.add("\" ");
                    this.add("\"");
                    this.add(this.systemId);
                    this.add("\"");
                    this.docTypeMark = this.mark();
                    this.mark();
                    this.add(">");
                } else if (this.systemId != null) {
                    this.add(" SYSTEM \"");
                    this.add(this.systemId);
                    this.add("\"");
                    this.docTypeMark = this.mark();
                    this.mark();
                    this.add(">");
                } else {
                    this.docTypeMark = this.mark();
                    this.mark();
                    this.add(">");
                }
                this.addLine();
            } else {
                this.docTypeMark = this.mark();
                this.docTypeName = name;
                this.mark();
            }
        }
    }

    public void setMixed(boolean isMixed) {
        this.isMixed = isMixed;
    }

    public void setUnformatted(boolean isUnformatted) {
        this.isUnformatted = isUnformatted;
    }

    public void addAttribute(String name, String value) {
        if (this.currentLineWidth > this.lineWidth) {
            this.addLine();
            this.add(this.getAttributeIndent());
        } else {
            this.add(" ");
        }
        this.add(name);
        this.add("=\"");
        this.add(value);
        this.add("\"");
    }

    public void addAttributeNS(String prefix, String localName, String value) {
        if (this.currentLineWidth > this.lineWidth) {
            this.addLine();
            this.add(this.getAttributeIndent());
        } else {
            this.add(" ");
        }
        this.add(prefix);
        this.add(":");
        this.add(localName);
        this.add("=\"");
        this.add(value);
        this.add("\"");
    }

    public void startAttribute(String name) {
        if (this.currentLineWidth > this.lineWidth) {
            this.addLine();
            this.add(this.getAttributeIndent());
        } else {
            this.add(" ");
        }
        this.add(name);
        this.add("=\"");
    }

    public void addAttributeContent(String content) {
        this.add(content);
    }

    public void endAttribute() {
        this.add("\"");
    }

    protected void closeStartElement() {
        this.add(">");
        if (!this.isMixed) {
            this.addLine();
        }
        this.lastElementIsStart = false;
    }

    public void endEmptyElement() {
        this.removeLast();
        this.add("/>");
        if (!this.isMixed) {
            this.addLine();
        }
        this.lastElementIsStart = false;
    }

    public void endContentElement(String content) {
        this.add(">");
        this.add(content);
        this.add("</");
        String name = this.removeLast();
        this.add(name);
        this.add(">");
        if (!this.isMixed) {
            this.addLine();
        }
        this.lastElementIsStart = false;
    }

    public void endElement() {
        if (this.lastElementIsStart) {
            this.endEmptyElement();
        } else {
            boolean wasMixed = this.isMixed;
            String name = this.removeLast();
            if (name != null) {
                if (!wasMixed) {
                    this.add(this.getElementIndent(1));
                }
                this.add("</");
                this.add(name);
                this.add(">");
                if (!this.isMixed) {
                    this.addLine();
                }
            }
        }
    }

    protected String removeLast() {
        int end = this.elementNames.size();
        this.isMixed = this.mixed.remove(end - 1);
        String result = this.elementNames.remove(end - 1);
        if (result != null) {
            --this.depth;
        }
        return result;
    }

    protected String getElementIndent() {
        return this.getElementIndent(0);
    }

    protected String getElementIndent(int extra) {
        int nesting = this.depth + extra - 1;
        int i = this.indents.size() - 1;
        while (i < nesting) {
            this.indents.add(String.valueOf(this.indents.get(i)) + "  ");
            ++i;
        }
        return this.indents.get(nesting);
    }

    protected String getAttributeIndent() {
        int nesting = this.depth + 1;
        int i = this.indents.size() - 1;
        while (i < nesting) {
            this.indents.add(String.valueOf(this.indents.get(i)) + "  ");
            ++i;
        }
        return this.indents.get(nesting);
    }

    public void addText(String newString) {
        if (this.lastElementIsStart) {
            this.closeStartElement();
        }
        if (this.lineWidth != Integer.MAX_VALUE) {
            this.currentLineWidth += newString.length();
            int i = newString.length() - 1;
            block3: while (i >= 0) {
                switch (newString.charAt(i)) {
                    case '\n': 
                    case '\r': {
                        this.currentLineWidth = newString.length() - i;
                        break block3;
                    }
                    default: {
                        --i;
                    }
                }
            }
        }
        super.add(newString);
    }

    public void addCDATA(String newString) {
        if (this.lastElementIsStart) {
            this.closeStartElement();
        }
        this.add("<![CDATA[");
        if (this.lineWidth != Integer.MAX_VALUE) {
            this.currentLineWidth += newString.length();
            int i = newString.length() - 1;
            block3: while (i >= 0) {
                switch (newString.charAt(i)) {
                    case '\n': 
                    case '\r': {
                        this.currentLineWidth = newString.length() - i;
                        break block3;
                    }
                    default: {
                        --i;
                    }
                }
            }
        }
        super.add(newString);
        this.add("]]>");
    }

    public void addComment(String newString) {
        if (this.lastElementIsStart) {
            this.closeStartElement();
        }
        if (this.firstElementMark != null && (this.elementNames.isEmpty() || this.elementNames.size() == 1 && this.elementNames.get(0) == null)) {
            this.addLine();
        }
        this.add("<!--");
        if (this.lineWidth != Integer.MAX_VALUE) {
            this.currentLineWidth += newString.length();
            int i = newString.length() - 1;
            block3: while (i >= 0) {
                switch (newString.charAt(i)) {
                    case '\n': 
                    case '\r': {
                        this.currentLineWidth = newString.length() - i;
                        break block3;
                    }
                    default: {
                        --i;
                    }
                }
            }
        }
        super.add(newString);
        this.add("-->");
        if (this.firstElementMark == null) {
            this.addLine();
        }
    }

    public void addProcessingInstruction(String target, String data) {
        if (this.lastElementIsStart) {
            this.closeStartElement();
        }
        if (this.firstElementMark != null && (this.elementNames.isEmpty() || this.elementNames.size() == 1 && this.elementNames.get(0) == null)) {
            this.addLine();
        }
        this.add("<?");
        this.add(target == null ? "_" : target);
        if (data != null) {
            this.add(" ");
            if (this.lineWidth != Integer.MAX_VALUE) {
                this.currentLineWidth += data.length();
                int i = data.length() - 1;
                block3: while (i >= 0) {
                    switch (data.charAt(i)) {
                        case '\n': 
                        case '\r': {
                            this.currentLineWidth = data.length() - i;
                            break block3;
                        }
                        default: {
                            --i;
                        }
                    }
                }
            }
            super.add(data);
        }
        this.add("?>");
        if (this.firstElementMark == null) {
            this.addLine();
        }
    }

    public void add(String newString) {
        if (this.lineWidth != Integer.MAX_VALUE) {
            this.currentLineWidth += newString.length();
        }
        super.add(newString);
    }

    public void addLine() {
        super.addLine();
        this.currentLineWidth = 0;
    }

    public Object mark() {
        this.markedLineWidth = this.currentLineWidth;
        this.currentLineWidth = this.lineWidth - 2;
        return super.mark();
    }

    public void resetToMark(Object mark) {
        if (mark == null) {
            mark = this.firstElementMark;
        }
        super.resetToMark(mark);
        ++this.depth;
        this.currentLineWidth = this.markedLineWidth;
    }
}

