/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.formatter.FormatJavadocNode;
import org.eclipse.jdt.internal.formatter.FormatJavadocReference;
import org.eclipse.jdt.internal.formatter.FormatJavadocText;
import org.eclipse.jdt.internal.formatter.comment.IJavaDocTagConstants;

public class FormatJavadocBlock
extends FormatJavadocNode
implements IJavaDocTagConstants {
    static final int INLINED = 1;
    static final int FIRST = 2;
    static final int ON_HEADER_LINE = 4;
    static final int TEXT_ON_TAG_LINE = 8;
    static final int ONE_LINE_TAG = 16;
    static final int PARAM_TAG = 32;
    static final int IN_PARAM_TAG = 64;
    static final int IN_DESCRIPTION = 128;
    static final int IMMUTABLE = 256;
    static final int MAX_TAG_HIERARCHY = 10;
    private int tagValue = 0;
    int tagEnd;
    FormatJavadocReference reference;
    FormatJavadocNode[] nodes;
    int nodesPtr = -1;
    int flags = 0;

    public FormatJavadocBlock(int start, int end, int line, int value) {
        super(start, end, line);
        this.tagValue = value;
        this.tagEnd = end;
        switch (value) {
            case 2: 
            case 4: 
            case 5: 
            case 15: {
                this.flags |= 0x20;
                break;
            }
            case 18: 
            case 19: {
                this.flags |= 0x100;
            }
        }
    }

    private void addNode(FormatJavadocNode node) {
        if (++this.nodesPtr == 0) {
            this.nodes = new FormatJavadocNode[10];
        } else if (this.nodesPtr >= this.nodes.length) {
            this.nodes = new FormatJavadocNode[this.nodes.length + 10];
            System.arraycopy(this.nodes, 0, this.nodes, 0, this.nodesPtr);
        }
        this.nodes[this.nodesPtr] = node;
        this.sourceEnd = node.sourceEnd;
    }

    void addBlock(FormatJavadocBlock block, int htmlLevel) {
        FormatJavadocText lastText;
        FormatJavadocText[] textHierarchy;
        if (this.nodes != null && (textHierarchy = this.getTextHierarchy(block, htmlLevel)) != null && (lastText = textHierarchy[htmlLevel]) != null) {
            lastText.appendNode(block);
            int i = htmlLevel - 1;
            while (i >= 0) {
                textHierarchy[i].sourceEnd = block.sourceEnd;
                --i;
            }
            this.sourceEnd = block.sourceEnd;
            if (this.isParamTag()) {
                block.flags |= 0x40;
            } else if (this.isDescription()) {
                block.flags |= 0x80;
            }
            block.flags |= 1;
            return;
        }
        this.addNode(block);
        if (this.isParamTag()) {
            block.flags |= 0x40;
        } else if (this.isDescription()) {
            block.flags |= 0x80;
        }
        block.flags |= 1;
    }

    void addText(FormatJavadocText text) {
        FormatJavadocText[] textHierarchy;
        if (this.nodes != null && (textHierarchy = this.getTextHierarchy(text, text.depth)) != null) {
            FormatJavadocText parentText;
            FormatJavadocText lastText = textHierarchy[text.depth];
            if (lastText != null) {
                lastText.appendText(text);
                int i = text.depth - 1;
                while (i >= 0) {
                    textHierarchy[i].sourceEnd = text.sourceEnd;
                    --i;
                }
                this.sourceEnd = text.sourceEnd;
                return;
            }
            if (text.depth > 0 && (parentText = textHierarchy[text.depth - 1]) != null) {
                parentText.appendText(text);
                int i = text.depth - 2;
                while (i >= 0) {
                    textHierarchy[i].sourceEnd = text.sourceEnd;
                    --i;
                }
                this.sourceEnd = text.sourceEnd;
                return;
            }
        }
        if (text.isHtmlTag()) {
            switch (text.getHtmlTagID()) {
                case 512: {
                    text.linesBefore = this.nodesPtr == -1 ? 0 : 2;
                    break;
                }
                case 4096: {
                    text.linesBefore = 1;
                }
            }
        }
        this.addNode(text);
        if (this.isImmutable()) {
            text.immutable = true;
        }
    }

    void clean() {
        int length;
        int n = length = this.nodes == null ? 0 : this.nodes.length;
        if (this.nodesPtr != length - 1) {
            this.nodes = new FormatJavadocNode[this.nodesPtr + 1];
            System.arraycopy(this.nodes, 0, this.nodes, 0, this.nodesPtr + 1);
        }
        int i = 0;
        while (i <= this.nodesPtr) {
            this.nodes[i].clean();
            ++i;
        }
    }

    FormatJavadocNode getLastNode() {
        if (this.nodes != null) {
            return this.nodes[this.nodesPtr];
        }
        return null;
    }

    FormatJavadocText[] getTextHierarchy(FormatJavadocNode node, int htmlDepth) {
        if (this.nodes == null) {
            return null;
        }
        FormatJavadocText[] textHierarchy = null;
        int ptr = 0;
        FormatJavadocText text = node.isText() ? (FormatJavadocText)node : null;
        FormatJavadocNode lastNode = this.nodes[this.nodesPtr];
        while (lastNode.isText()) {
            boolean lastTextCanHaveChildren;
            FormatJavadocText lastText = (FormatJavadocText)lastNode;
            int lastTagCategory = lastText.getHtmlTagID();
            boolean lastSingleTag = lastTagCategory <= 256;
            boolean bl = lastTextCanHaveChildren = lastText.isHtmlTag() && !lastText.isClosingHtmlTag() && !lastSingleTag;
            if (lastText.depth == htmlDepth || lastText.htmlNodesPtr == -1) {
                if (lastText.isHtmlTag()) {
                    boolean setLinesBefore;
                    boolean bl2 = setLinesBefore = lastText.separatorsPtr == -1 || ptr == 0 && lastText.isClosingHtmlTag();
                    if (!setLinesBefore && ptr > 0 && lastText.isClosingHtmlTag()) {
                        FormatJavadocText parentText = textHierarchy[ptr - 1];
                        int textStart = (int)parentText.separators[parentText.separatorsPtr];
                        if (textStart < lastText.sourceStart) {
                            setLinesBefore = true;
                        }
                    }
                    if (setLinesBefore) {
                        switch (lastText.getHtmlTagID()) {
                            case 512: {
                                if (node.linesBefore >= 2) break;
                                node.linesBefore = 2;
                                break;
                            }
                            case 256: 
                            case 4096: {
                                if (node.linesBefore >= 1) break;
                                node.linesBefore = 1;
                            }
                        }
                    }
                    if (text != null && text.isHtmlTag() && !text.isClosingHtmlTag() && text.getHtmlTagIndex() == lastText.getHtmlTagIndex() && !lastText.isClosingHtmlTag()) {
                        lastText.closeTag();
                        return textHierarchy;
                    }
                }
                if (lastTextCanHaveChildren || htmlDepth == 0 && !lastText.isHtmlTag() && text != null && !text.isHtmlTag()) {
                    if (textHierarchy == null) {
                        textHierarchy = new FormatJavadocText[htmlDepth + 1];
                    }
                    textHierarchy[ptr] = lastText;
                    return textHierarchy;
                }
                return textHierarchy;
            }
            if (textHierarchy == null) {
                textHierarchy = new FormatJavadocText[htmlDepth + 1];
            }
            textHierarchy[ptr++] = lastText;
            lastNode = lastText.htmlNodes[lastText.htmlNodesPtr];
        }
        return textHierarchy;
    }

    public boolean hasTextOnTagLine() {
        return (this.flags & 8) != 0;
    }

    public boolean isDescription() {
        return this.tagValue == 0;
    }

    public boolean isFirst() {
        return (this.flags & 2) != 0;
    }

    public boolean isHeaderLine() {
        return (this.flags & 4) != 0;
    }

    public boolean isImmutable() {
        return (this.flags & 0x100) == 256;
    }

    public boolean isInDescription() {
        return this.tagValue == 0 || (this.flags & 0x80) == 128;
    }

    public boolean isInlined() {
        return (this.flags & 1) != 0;
    }

    public boolean isInParamTag() {
        return (this.flags & 0x60) != 0;
    }

    public boolean isOneLineTag() {
        return (this.flags & 0x10) != 0;
    }

    public boolean isParamTag() {
        return (this.flags & 0x20) == 32;
    }

    void setHeaderLine(int javadocLineStart) {
        if (javadocLineStart == this.lineStart) {
            this.flags |= 4;
        }
        int i = 0;
        while (i < this.nodesPtr) {
            this.nodes[i].setHeaderLine(javadocLineStart);
            ++i;
        }
    }

    protected void toString(StringBuffer buffer) {
        boolean inlined;
        boolean bl = inlined = (this.flags & 1) != 0;
        if (inlined) {
            buffer.append("\t{");
        }
        buffer.append('@');
        if (this.tagValue == 100) {
            buffer.append("others_tag");
        } else {
            buffer.append(TAG_NAMES[this.tagValue]);
        }
        super.toString(buffer);
        if (this.reference == null) {
            buffer.append('\n');
        } else {
            buffer.append(" (");
            this.reference.toString(buffer);
            buffer.append(")\n");
        }
        StringBuffer flagsBuffer = new StringBuffer();
        if (this.isDescription()) {
            if (flagsBuffer.length() > 0) {
                flagsBuffer.append(',');
            }
            flagsBuffer.append("description");
        }
        if (this.isFirst()) {
            if (flagsBuffer.length() > 0) {
                flagsBuffer.append(',');
            }
            flagsBuffer.append("first");
        }
        if (this.isHeaderLine()) {
            if (flagsBuffer.length() > 0) {
                flagsBuffer.append(',');
            }
            flagsBuffer.append("header line");
        }
        if (this.isImmutable()) {
            if (flagsBuffer.length() > 0) {
                flagsBuffer.append(',');
            }
            flagsBuffer.append("immutable");
        }
        if (this.isInDescription()) {
            if (flagsBuffer.length() > 0) {
                flagsBuffer.append(',');
            }
            flagsBuffer.append("in description");
        }
        if (this.isInlined()) {
            if (flagsBuffer.length() > 0) {
                flagsBuffer.append(',');
            }
            flagsBuffer.append("inlined");
        }
        if (this.isInParamTag()) {
            if (flagsBuffer.length() > 0) {
                flagsBuffer.append(',');
            }
            flagsBuffer.append("in param tag");
        }
        if (this.isOneLineTag()) {
            if (flagsBuffer.length() > 0) {
                flagsBuffer.append(',');
            }
            flagsBuffer.append("one line tag");
        }
        if (this.isParamTag()) {
            if (flagsBuffer.length() > 0) {
                flagsBuffer.append(',');
            }
            flagsBuffer.append("param tag");
        }
        if (flagsBuffer.length() > 0) {
            if (inlined) {
                buffer.append('\t');
            }
            buffer.append("\tflags: ");
            buffer.append(flagsBuffer);
            buffer.append('\n');
        }
        if (this.nodesPtr > -1) {
            int i = 0;
            while (i <= this.nodesPtr) {
                if (inlined) {
                    buffer.append('\t');
                }
                this.nodes[i].toString(buffer);
                ++i;
            }
        }
    }

    public String toStringDebug(char[] source) {
        StringBuffer buffer = new StringBuffer();
        this.toStringDebug(buffer, source);
        return buffer.toString();
    }

    public void toStringDebug(StringBuffer buffer, char[] source) {
        if (this.tagValue > 0) {
            buffer.append(source, this.sourceStart, this.tagEnd - this.sourceStart + 1);
            buffer.append(' ');
        }
        if (this.reference != null) {
            this.reference.toStringDebug(buffer, source);
        }
        int i = 0;
        while (i <= this.nodesPtr) {
            this.nodes[i].toStringDebug(buffer, source);
            ++i;
        }
    }

    void update(Scanner scanner) {
        int blockEnd = scanner.getLineNumber(this.sourceEnd);
        if (blockEnd == this.lineStart) {
            this.flags |= 0x10;
        }
        int i = 0;
        while (i <= this.nodesPtr) {
            if (!this.nodes[i].isText()) {
                ((FormatJavadocBlock)this.nodes[i]).update(scanner);
            }
            ++i;
        }
    }
}

