/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.Arrays;
import java.util.List;
import org.eclipse.jdt.core.dom.LineComment;
import org.eclipse.jdt.core.formatter.IndentManipulation;
import org.eclipse.jdt.internal.compiler.util.Util;

public class LineCommentEndOffsets {
    private int[] offsets;
    private final List commentList;

    public LineCommentEndOffsets(List commentList) {
        this.commentList = commentList;
        this.offsets = null;
    }

    private int[] getOffsets() {
        if (this.offsets == null) {
            if (this.commentList != null) {
                int nComments = this.commentList.size();
                int count = 0;
                int i = 0;
                while (i < nComments) {
                    Object curr = this.commentList.get(i);
                    if (curr instanceof LineComment) {
                        ++count;
                    }
                    ++i;
                }
                this.offsets = new int[count];
                i = 0;
                int k = 0;
                while (i < nComments) {
                    Object curr = this.commentList.get(i);
                    if (curr instanceof LineComment) {
                        LineComment comment = (LineComment)curr;
                        this.offsets[k++] = comment.getStartPosition() + comment.getLength();
                    }
                    ++i;
                }
            } else {
                this.offsets = Util.EMPTY_INT_ARRAY;
            }
        }
        return this.offsets;
    }

    public boolean isEndOfLineComment(int offset) {
        return offset >= 0 && Arrays.binarySearch(this.getOffsets(), offset) >= 0;
    }

    public boolean isEndOfLineComment(int offset, char[] content) {
        if (offset < 0 || offset < content.length && !IndentManipulation.isLineDelimiterChar(content[offset])) {
            return false;
        }
        return Arrays.binarySearch(this.getOffsets(), offset) >= 0;
    }

    public boolean remove(int offset) {
        int[] offsetArray = this.getOffsets();
        int index = Arrays.binarySearch(offsetArray, offset);
        if (index >= 0) {
            if (index > 0) {
                System.arraycopy(offsetArray, 0, offsetArray, 1, index);
            }
            offsetArray[0] = -1;
            return true;
        }
        return false;
    }
}

