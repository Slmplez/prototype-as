/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Comment;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.DefaultASTVisitor;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.Util;

class DefaultCommentMapper {
    Comment[] comments;
    Scanner scanner;
    int leadingPtr;
    ASTNode[] leadingNodes;
    long[] leadingIndexes;
    int trailingPtr;
    int lastTrailingPtr;
    ASTNode[] trailingNodes;
    long[] trailingIndexes;
    static final int STORAGE_INCREMENT = 16;

    DefaultCommentMapper(Comment[] table) {
        this.comments = table;
    }

    boolean hasSameTable(Comment[] table) {
        return this.comments == table;
    }

    Comment getComment(int position) {
        if (this.comments == null) {
            return null;
        }
        int size = this.comments.length;
        if (size == 0) {
            return null;
        }
        int index = this.getCommentIndex(0, position, 0);
        if (index < 0) {
            return null;
        }
        return this.comments[index];
    }

    private int getCommentIndex(int start, int position, int exact) {
        if (position == 0) {
            if (this.comments.length > 0 && this.comments[0].getStartPosition() == 0) {
                return 0;
            }
            return -1;
        }
        int bottom = start;
        int top = this.comments.length - 1;
        int i = 0;
        int index = -1;
        Comment comment = null;
        while (bottom <= top) {
            i = bottom + (top - bottom) / 2;
            comment = this.comments[i];
            int commentStart = comment.getStartPosition();
            if (position < commentStart) {
                top = i - 1;
                continue;
            }
            if (position >= commentStart + comment.getLength()) {
                bottom = i + 1;
                continue;
            }
            index = i;
            break;
        }
        if (index < 0 && exact != 0) {
            comment = this.comments[i];
            if (position < comment.getStartPosition()) {
                return exact < 0 ? i - 1 : i;
            }
            return exact < 0 ? i : i + 1;
        }
        return index;
    }

    public int getExtendedStartPosition(ASTNode node) {
        if (this.leadingPtr >= 0) {
            long range = -1L;
            int i = 0;
            while (range < 0L && i <= this.leadingPtr) {
                if (this.leadingNodes[i] == node) {
                    range = this.leadingIndexes[i];
                }
                ++i;
            }
            if (range >= 0L) {
                return this.comments[(int)(range >> 32)].getStartPosition();
            }
        }
        return node.getStartPosition();
    }

    public final int getLineNumber(int position, int[] lineRange) {
        int[] lineEnds;
        int length = (lineEnds = this.scanner.lineEnds).length;
        return Util.getLineNumber(position, lineEnds, (lineRange[0] > length ? length : lineRange[0]) - 1, (lineRange[1] > length ? length : lineRange[1]) - 1);
    }

    public int getExtendedEnd(ASTNode node) {
        int end = node.getStartPosition() + node.getLength();
        if (this.trailingPtr >= 0) {
            long range = -1L;
            int i = 0;
            while (range < 0L && i <= this.trailingPtr) {
                if (this.trailingNodes[i] == node) {
                    range = this.trailingIndexes[i];
                }
                ++i;
            }
            if (range >= 0L) {
                Comment lastComment = this.comments[(int)range];
                end = lastComment.getStartPosition() + lastComment.getLength();
            }
        }
        return end - 1;
    }

    public int getExtendedLength(ASTNode node) {
        return this.getExtendedEnd(node) - this.getExtendedStartPosition(node) + 1;
    }

    int firstLeadingCommentIndex(ASTNode node) {
        if (this.leadingPtr >= 0) {
            int i = 0;
            while (i <= this.leadingPtr) {
                if (this.leadingNodes[i] == node) {
                    return (int)(this.leadingIndexes[i] >> 32);
                }
                ++i;
            }
        }
        return -1;
    }

    int lastTrailingCommentIndex(ASTNode node) {
        if (this.trailingPtr >= 0) {
            int i = 0;
            while (i <= this.trailingPtr) {
                if (this.trailingNodes[i] == node) {
                    return (int)this.trailingIndexes[i];
                }
                ++i;
            }
        }
        return -1;
    }

    void initialize(CompilationUnit unit, Scanner sc) {
        this.leadingPtr = -1;
        this.trailingPtr = -1;
        this.comments = unit.optionalCommentTable;
        if (this.comments == null) {
            return;
        }
        int size = this.comments.length;
        if (size == 0) {
            return;
        }
        this.scanner = sc;
        this.scanner.tokenizeWhiteSpace = true;
        CommentMapperVisitor commentVisitor = new CommentMapperVisitor();
        unit.accept(commentVisitor);
        int leadingCount = this.leadingPtr + 1;
        if (leadingCount > 0 && leadingCount < this.leadingIndexes.length) {
            this.leadingNodes = new ASTNode[leadingCount];
            System.arraycopy(this.leadingNodes, 0, this.leadingNodes, 0, leadingCount);
            this.leadingIndexes = new long[leadingCount];
            System.arraycopy(this.leadingIndexes, 0, this.leadingIndexes, 0, leadingCount);
        }
        if (this.trailingPtr >= 0) {
            while (this.trailingIndexes[this.trailingPtr] == -1L) {
                --this.trailingPtr;
                if (this.trailingPtr >= 0) continue;
                this.trailingIndexes = null;
                this.trailingNodes = null;
                break;
            }
            int trailingCount = this.trailingPtr + 1;
            if (trailingCount > 0 && trailingCount < this.trailingIndexes.length) {
                this.trailingNodes = new ASTNode[trailingCount];
                System.arraycopy(this.trailingNodes, 0, this.trailingNodes, 0, trailingCount);
                this.trailingIndexes = new long[trailingCount];
                System.arraycopy(this.trailingIndexes, 0, this.trailingIndexes, 0, trailingCount);
            }
        }
        this.scanner = null;
    }

    int storeLeadingComments(ASTNode node, int previousEnd, int[] parentLineRange) {
        int nodeStart;
        int extended = nodeStart = node.getStartPosition();
        int previousEndLine = this.getLineNumber(previousEnd, parentLineRange);
        int nodeStartLine = this.getLineNumber(nodeStart, parentLineRange);
        int idx = this.getCommentIndex(0, nodeStart, -1);
        if (idx == -1) {
            return nodeStart;
        }
        int startIdx = -1;
        int endIdx = idx;
        int previousStart = nodeStart;
        while (idx >= 0 && previousStart >= previousEnd) {
            Comment comment = this.comments[idx];
            int commentStart = comment.getStartPosition();
            int end = commentStart + comment.getLength() - 1;
            int commentLine = this.getLineNumber(commentStart, parentLineRange);
            if (end <= previousEnd || commentLine == previousEndLine && commentLine != nodeStartLine) break;
            if (end + 1 < previousStart) {
                this.scanner.resetTo(end + 1, previousStart);
                try {
                    int token = this.scanner.getNextToken();
                    if (token != 1000 || this.scanner.currentPosition != previousStart) {
                        if (idx != endIdx) break;
                        return nodeStart;
                    }
                }
                catch (InvalidInputException invalidInputException) {
                    return nodeStart;
                }
                char[] gap = this.scanner.getCurrentIdentifierSource();
                int nbrLine = 0;
                int pos = -1;
                while ((pos = CharOperation.indexOf('\n', gap, pos + 1)) >= 0) {
                    ++nbrLine;
                }
                if (nbrLine > 1) break;
            }
            previousStart = commentStart;
            startIdx = idx--;
        }
        if (startIdx != -1) {
            int commentStart = this.comments[startIdx].getStartPosition();
            if (previousEnd < commentStart && previousEndLine != nodeStartLine) {
                int lastTokenEnd = previousEnd;
                this.scanner.resetTo(previousEnd, commentStart);
                try {
                    while (this.scanner.currentPosition < commentStart) {
                        if (this.scanner.getNextToken() == 1000) continue;
                        lastTokenEnd = this.scanner.getCurrentTokenEndPosition();
                    }
                }
                catch (InvalidInputException invalidInputException) {}
                int lastTokenLine = this.getLineNumber(lastTokenEnd, parentLineRange);
                int length = this.comments.length;
                while (startIdx < length && lastTokenLine == this.getLineNumber(this.comments[startIdx].getStartPosition(), parentLineRange) && nodeStartLine != lastTokenLine) {
                    ++startIdx;
                }
            }
            if (startIdx <= endIdx) {
                if (++this.leadingPtr == 0) {
                    this.leadingNodes = new ASTNode[16];
                    this.leadingIndexes = new long[16];
                } else if (this.leadingPtr == this.leadingNodes.length) {
                    int newLength = this.leadingPtr * 3 / 2 + 16;
                    this.leadingNodes = new ASTNode[newLength];
                    System.arraycopy(this.leadingNodes, 0, this.leadingNodes, 0, this.leadingPtr);
                    this.leadingIndexes = new long[newLength];
                    System.arraycopy(this.leadingIndexes, 0, this.leadingIndexes, 0, this.leadingPtr);
                }
                this.leadingNodes[this.leadingPtr] = node;
                this.leadingIndexes[this.leadingPtr] = ((long)startIdx << 32) + (long)endIdx;
                extended = this.comments[endIdx].getStartPosition();
            }
        }
        return extended;
    }

    int storeTrailingComments(ASTNode node, int nextStart, boolean lastChild, int[] parentLineRange) {
        int nodeEnd = node.getStartPosition() + node.getLength() - 1;
        if (nodeEnd == nextStart) {
            if (++this.trailingPtr == 0) {
                this.trailingNodes = new ASTNode[16];
                this.trailingIndexes = new long[16];
                this.lastTrailingPtr = -1;
            } else if (this.trailingPtr == this.trailingNodes.length) {
                int newLength = this.trailingPtr * 3 / 2 + 16;
                this.trailingNodes = new ASTNode[newLength];
                System.arraycopy(this.trailingNodes, 0, this.trailingNodes, 0, this.trailingPtr);
                this.trailingIndexes = new long[newLength];
                System.arraycopy(this.trailingIndexes, 0, this.trailingIndexes, 0, this.trailingPtr);
            }
            this.trailingNodes[this.trailingPtr] = node;
            this.trailingIndexes[this.trailingPtr] = -1L;
            return nodeEnd;
        }
        int extended = nodeEnd;
        int nodeEndLine = this.getLineNumber(nodeEnd, parentLineRange);
        int idx = this.getCommentIndex(0, nodeEnd, 1);
        if (idx == -1) {
            return nodeEnd;
        }
        int startIdx = idx;
        int endIdx = -1;
        int length = this.comments.length;
        int commentStart = extended + 1;
        int previousEnd = nodeEnd + 1;
        int sameLineIdx = -1;
        while (idx < length && commentStart < nextStart) {
            int commentLine;
            Comment comment = this.comments[idx];
            commentStart = comment.getStartPosition();
            if (commentStart >= nextStart) break;
            if (previousEnd < commentStart) {
                this.scanner.resetTo(previousEnd, commentStart);
                try {
                    int token = this.scanner.getNextToken();
                    if (token != 1000 || this.scanner.currentPosition != commentStart) {
                        if (idx != startIdx) break;
                        return nodeEnd;
                    }
                }
                catch (InvalidInputException invalidInputException) {
                    return nodeEnd;
                }
                char[] gap = this.scanner.getCurrentIdentifierSource();
                int nbrLine = 0;
                int pos = -1;
                while ((pos = CharOperation.indexOf('\n', gap, pos + 1)) >= 0) {
                    ++nbrLine;
                }
                if (nbrLine > 1) break;
            }
            if ((commentLine = this.getLineNumber(commentStart, parentLineRange)) == nodeEndLine) {
                sameLineIdx = idx;
            }
            previousEnd = commentStart + comment.getLength();
            endIdx = idx++;
        }
        if (endIdx != -1) {
            long nodeRange;
            int previousLine;
            int nextLine;
            if (!lastChild && (nextLine = this.getLineNumber(nextStart, parentLineRange)) - (previousLine = this.getLineNumber(previousEnd, parentLineRange)) <= 1) {
                if (sameLineIdx == -1) {
                    return nodeEnd;
                }
                endIdx = sameLineIdx;
            }
            if (++this.trailingPtr == 0) {
                this.trailingNodes = new ASTNode[16];
                this.trailingIndexes = new long[16];
                this.lastTrailingPtr = -1;
            } else if (this.trailingPtr == this.trailingNodes.length) {
                int newLength = this.trailingPtr * 3 / 2 + 16;
                this.trailingNodes = new ASTNode[newLength];
                System.arraycopy(this.trailingNodes, 0, this.trailingNodes, 0, this.trailingPtr);
                this.trailingIndexes = new long[newLength];
                System.arraycopy(this.trailingIndexes, 0, this.trailingIndexes, 0, this.trailingPtr);
            }
            this.trailingNodes[this.trailingPtr] = node;
            this.trailingIndexes[this.trailingPtr] = nodeRange = ((long)startIdx << 32) + (long)endIdx;
            extended = this.comments[endIdx].getStartPosition() + this.comments[endIdx].getLength() - 1;
            ASTNode previousNode = node;
            int ptr = this.trailingPtr - 1;
            while (ptr >= 0) {
                ASTNode unresolved;
                long range = this.trailingIndexes[ptr];
                if (range != -1L || previousNode != (unresolved = this.trailingNodes[ptr]).getParent()) break;
                this.trailingIndexes[ptr] = nodeRange;
                previousNode = unresolved;
                --ptr;
            }
            if (ptr > this.lastTrailingPtr) {
                int offset = ptr - this.lastTrailingPtr;
                int i = ptr + 1;
                while (i <= this.trailingPtr) {
                    this.trailingNodes[i - offset] = this.trailingNodes[i];
                    this.trailingIndexes[i - offset] = this.trailingIndexes[i];
                    ++i;
                }
                this.trailingPtr -= offset;
            }
            this.lastTrailingPtr = this.trailingPtr;
        }
        return extended;
    }

    class CommentMapperVisitor
    extends DefaultASTVisitor {
        ASTNode topSiblingParent = null;
        ASTNode[] siblings = new ASTNode[10];
        int[][] parentLineRange = new int[10][];
        int siblingPtr = -1;

        CommentMapperVisitor() {
        }

        protected boolean visitNode(ASTNode node) {
            int[] nArray;
            ASTNode sibling;
            ASTNode parent = node.getParent();
            int previousEnd = parent.getStartPosition();
            ASTNode aSTNode = sibling = parent == this.topSiblingParent ? this.siblings[this.siblingPtr] : null;
            if (sibling != null) {
                try {
                    previousEnd = DefaultCommentMapper.this.storeTrailingComments(sibling, node.getStartPosition(), false, this.parentLineRange[this.siblingPtr]);
                }
                catch (Exception exception) {}
            }
            if ((node.typeAndFlags & 1) != 0) {
                return false;
            }
            if (this.siblingPtr > -1) {
                nArray = this.parentLineRange[this.siblingPtr];
            } else {
                int[] nArray2 = new int[2];
                nArray2[0] = 1;
                nArray = nArray2;
                nArray2[1] = DefaultCommentMapper.this.scanner.linePtr + 1;
            }
            int[] previousLineRange = nArray;
            try {
                DefaultCommentMapper.this.storeLeadingComments(node, previousEnd, previousLineRange);
            }
            catch (Exception exception) {}
            if (this.topSiblingParent != parent) {
                if (this.siblings.length == ++this.siblingPtr) {
                    this.siblings = new ASTNode[this.siblingPtr * 2];
                    System.arraycopy(this.siblings, 0, this.siblings, 0, this.siblingPtr);
                    int[][] nArrayArray = new int[this.siblingPtr * 2][];
                    this.parentLineRange = nArrayArray;
                    System.arraycopy(this.parentLineRange, 0, nArrayArray, 0, this.siblingPtr);
                }
                if (this.topSiblingParent == null) {
                    this.parentLineRange[this.siblingPtr] = previousLineRange;
                } else {
                    int parentStart = parent.getStartPosition();
                    int firstLine = DefaultCommentMapper.this.getLineNumber(parentStart, previousLineRange);
                    int lastLine = DefaultCommentMapper.this.getLineNumber(parentStart + parent.getLength() - 1, previousLineRange);
                    if (this.parentLineRange[this.siblingPtr] == null) {
                        this.parentLineRange[this.siblingPtr] = new int[]{firstLine, lastLine};
                    } else {
                        int[] lineRange = this.parentLineRange[this.siblingPtr];
                        lineRange[0] = firstLine;
                        lineRange[1] = lastLine;
                    }
                }
                this.topSiblingParent = parent;
            }
            this.siblings[this.siblingPtr] = node;
            return true;
        }

        protected void endVisitNode(ASTNode node) {
            ASTNode sibling;
            ASTNode aSTNode = sibling = this.topSiblingParent == node ? this.siblings[this.siblingPtr] : null;
            if (sibling != null) {
                try {
                    DefaultCommentMapper.this.storeTrailingComments(sibling, node.getStartPosition() + node.getLength() - 1, true, this.parentLineRange[this.siblingPtr]);
                }
                catch (Exception exception) {}
            }
            if (this.topSiblingParent != null && this.topSiblingParent == node) {
                --this.siblingPtr;
                this.topSiblingParent = node.getParent();
            }
        }

        public boolean visit(Modifier modifier) {
            return false;
        }

        public boolean visit(CompilationUnit node) {
            return true;
        }
    }
}

