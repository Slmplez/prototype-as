/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

import org.eclipse.jdt.internal.formatter.FormatJavadocBlock;
import org.eclipse.jdt.internal.formatter.FormatJavadocNode;
import org.eclipse.jdt.internal.formatter.comment.IJavaDocTagConstants;

public class FormatJavadocText
extends FormatJavadocNode
implements IJavaDocTagConstants {
    long[] separators;
    int separatorsPtr = -1;
    private int htmlTagIndex = -1;
    boolean immutable = false;
    FormatJavadocNode[] htmlNodes;
    int[] htmlIndexes;
    int htmlNodesPtr = -1;
    int depth = 0;

    public FormatJavadocText(int start, int end, int line, int htmlIndex, int htmlDepth) {
        super(start, end, line);
        this.htmlTagIndex = htmlIndex;
        this.depth = htmlDepth;
    }

    void appendText(FormatJavadocText text) {
        text.immutable = this.immutable;
        if (this.depth == text.depth) {
            this.addSeparator(text);
            this.sourceEnd = text.sourceEnd;
            if (text.isClosingHtmlTag()) {
                this.htmlTagIndex = text.htmlTagIndex;
            }
        } else {
            this.appendNode(text);
        }
        if (text.isHtmlTag()) {
            switch (text.htmlTagIndex & 0xFF00) {
                case 512: {
                    text.linesBefore = this.htmlNodesPtr == -1 ? 0 : 2;
                    break;
                }
                case 4096: {
                    text.linesBefore = 1;
                    break;
                }
                case 256: {
                    if (text.isClosingHtmlTag()) break;
                    text.linesBefore = 1;
                    break;
                }
                case 1024: {
                    if (text.isClosingHtmlTag()) break;
                    text.linesBefore = 1;
                }
            }
        }
    }

    void appendNode(FormatJavadocNode node) {
        if (++this.htmlNodesPtr == 0) {
            this.htmlNodes = new FormatJavadocNode[10];
        } else if (this.htmlNodesPtr == this.htmlNodes.length) {
            int size = this.htmlNodesPtr + 10;
            this.htmlNodes = new FormatJavadocNode[size];
            System.arraycopy(this.htmlNodes, 0, this.htmlNodes, 0, this.htmlNodesPtr);
        }
        this.addSeparator(node);
        this.htmlNodes[this.htmlNodesPtr] = node;
        this.sourceEnd = node.sourceEnd;
    }

    private void addSeparator(FormatJavadocNode node) {
        if (++this.separatorsPtr == 0) {
            this.separators = new long[10];
            this.htmlIndexes = new int[10];
        } else if (this.separatorsPtr == this.separators.length) {
            int size = this.separatorsPtr + 10;
            this.separators = new long[size];
            System.arraycopy(this.separators, 0, this.separators, 0, this.separatorsPtr);
            this.htmlIndexes = new int[size];
            System.arraycopy(this.htmlIndexes, 0, this.htmlIndexes, 0, this.separatorsPtr);
        }
        this.separators[this.separatorsPtr] = ((long)this.sourceEnd << 32) + (long)node.sourceStart;
        this.htmlIndexes[this.separatorsPtr] = node.isText() ? ((FormatJavadocText)node).htmlTagIndex : -1;
    }

    void clean() {
        int length;
        int n = length = this.separators == null ? 0 : this.separators.length;
        if (this.separatorsPtr != length - 1) {
            this.separators = new long[this.separatorsPtr + 1];
            System.arraycopy(this.separators, 0, this.separators, 0, this.separatorsPtr + 1);
            this.htmlIndexes = new int[this.separatorsPtr + 1];
            System.arraycopy(this.htmlIndexes, 0, this.htmlIndexes, 0, this.separatorsPtr + 1);
        }
        int n2 = length = this.htmlNodes == null ? 0 : this.htmlNodes.length;
        if (this.htmlNodesPtr != length - 1) {
            this.htmlNodes = new FormatJavadocNode[this.htmlNodesPtr + 1];
            System.arraycopy(this.htmlNodes, 0, this.htmlNodes, 0, this.htmlNodesPtr + 1);
            int i = 0;
            while (i <= this.htmlNodesPtr) {
                this.htmlNodes[i].clean();
                ++i;
            }
        }
    }

    void closeTag() {
        this.htmlTagIndex |= 0x10000;
    }

    int getHtmlTagIndex() {
        return this.htmlTagIndex & 0xFFFF;
    }

    int getHtmlTagID() {
        return this.htmlTagIndex & 0xFF00;
    }

    FormatJavadocNode getLastNode() {
        if (this.htmlNodes != null) {
            return this.htmlNodes[this.htmlNodesPtr];
        }
        return null;
    }

    public boolean isClosingHtmlTag() {
        return this.htmlTagIndex != -1 && (this.htmlTagIndex & 0x10000) != 0;
    }

    public boolean isHtmlTag() {
        return this.htmlTagIndex != -1;
    }

    public boolean isImmutableHtmlTag() {
        return this.htmlTagIndex != -1 && (this.htmlTagIndex & 0xFF00) == 2048;
    }

    public boolean isImmutable() {
        return this.immutable || this.htmlTagIndex != -1 && (this.htmlTagIndex & 0xFF00) == 2048;
    }

    public boolean isTextAfterHtmlSeparatorTag(int separatorIndex) {
        int ptr = separatorIndex;
        if (ptr > this.separatorsPtr) {
            return false;
        }
        int tagIndex = this.htmlIndexes[ptr] & 0xFF00;
        return tagIndex != -1 && tagIndex == 4096;
    }

    public boolean isText() {
        return true;
    }

    void setHeaderLine(int javadocLineStart) {
        int i = 0;
        while (i < this.htmlNodesPtr) {
            FormatJavadocNode node = this.htmlNodes[i];
            if (!node.isText()) {
                ((FormatJavadocBlock)node).setHeaderLine(javadocLineStart);
            }
            ++i;
        }
    }

    protected void toString(StringBuffer buffer) {
        StringBuffer indentation = new StringBuffer();
        int t = 0;
        while (t <= this.depth) {
            indentation.append('\t');
            ++t;
        }
        buffer.append(indentation);
        if (this.isImmutable()) {
            buffer.append("immutable ");
        }
        buffer.append("text");
        super.toString(buffer);
        buffer.append(" (");
        buffer.append(this.separatorsPtr + 1).append(" sections, ");
        buffer.append(this.htmlNodesPtr + 1).append(" html tags, ");
        buffer.append(this.depth).append(" depth, ");
        buffer.append(this.linesBefore).append(" before, ");
        String tagID = "no";
        switch (this.getHtmlTagID()) {
            case 65280: {
                tagID = "mask";
                break;
            }
            case 256: {
                tagID = "single break";
                break;
            }
            case 512: {
                tagID = "code";
                break;
            }
            case 1024: {
                tagID = "break";
                break;
            }
            case 2048: {
                tagID = "immutable";
                break;
            }
            case 4096: {
                tagID = "separator";
            }
        }
        buffer.append(tagID).append(" tag id)");
        buffer.append('\n');
    }

    public void toStringDebug(StringBuffer buffer, char[] source) {
        if (buffer.length() > 0) {
            int l = 0;
            while (l < this.linesBefore) {
                buffer.append('\n');
                int t = 0;
                while (t < this.depth) {
                    buffer.append('\t');
                    ++t;
                }
                ++l;
            }
        }
        if (this.separatorsPtr == -1) {
            super.toStringDebug(buffer, source);
            return;
        }
        int ptr = 0;
        int nextStart = this.sourceStart;
        int idx = 0;
        while (idx <= this.separatorsPtr || this.htmlNodesPtr != -1 && ptr <= this.htmlNodesPtr) {
            if (idx > this.separatorsPtr) {
                FormatJavadocNode node = this.htmlNodes[ptr++];
                node.toStringDebug(buffer, source);
                return;
            }
            int end = (int)(this.separators[idx] >>> 32);
            if (this.htmlNodesPtr >= 0 && ptr <= this.htmlNodesPtr && end > this.htmlNodes[ptr].sourceStart) {
                FormatJavadocNode node = this.htmlNodes[ptr++];
                node.toStringDebug(buffer, source);
            } else {
                if (idx > 1 && source[nextStart] != '<') {
                    buffer.append('\n');
                    int t = 0;
                    while (t < this.depth) {
                        buffer.append('\t');
                        ++t;
                    }
                }
                buffer.append(source, nextStart, end - nextStart + 1);
            }
            nextStart = (int)this.separators[idx++];
        }
        if (source[nextStart] == '<') {
            switch (this.getHtmlTagID()) {
                case 512: {
                    buffer.append('\n');
                    int t = 0;
                    while (t < this.depth) {
                        buffer.append('\t');
                        ++t;
                    }
                    break;
                }
            }
        }
        buffer.append(source, nextStart, this.sourceEnd - nextStart + 1);
        buffer.append(' ');
    }
}

