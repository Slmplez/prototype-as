/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jdt.internal.formatter.align;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jdt.internal.formatter.Location;
import org.eclipse.jdt.internal.formatter.Scribe;
import org.eclipse.jdt.internal.formatter.align.AlignmentException;

public class Alignment {
    public int kind;
    public static final int ALLOCATION = 1;
    public static final int ANNOTATION_MEMBERS_VALUE_PAIRS = 2;
    public static final int ARRAY_INITIALIZER = 3;
    public static final int ASSIGNMENT = 4;
    public static final int BINARY_EXPRESSION = 5;
    public static final int CASCADING_MESSAGE_SEND = 6;
    public static final int COMPACT_IF = 7;
    public static final int COMPOUND_ASSIGNMENT = 8;
    public static final int CONDITIONAL_EXPRESSION = 9;
    public static final int ENUM_CONSTANTS = 10;
    public static final int ENUM_CONSTANTS_ARGUMENTS = 11;
    public static final int EXPLICIT_CONSTRUCTOR_CALL = 12;
    public static final int FIELD_DECLARATION_ASSIGNMENT = 13;
    public static final int LOCAL_DECLARATION_ASSIGNMENT = 14;
    public static final int MESSAGE_ARGUMENTS = 15;
    public static final int MESSAGE_SEND = 16;
    public static final int METHOD_ARGUMENTS = 17;
    public static final int METHOD_DECLARATION = 18;
    public static final int MULTIPLE_FIELD = 19;
    public static final int SUPER_CLASS = 20;
    public static final int SUPER_INTERFACES = 21;
    public static final int THROWS = 22;
    public static final int TYPE_MEMBERS = 23;
    public static final int STRING_CONCATENATION = 24;
    public static final int TRY_RESOURCES = 25;
    public static final int MULTI_CATCH = 26;
    public String name;
    public static final String[] NAMES = new String[]{"", "allocation", "annotationMemberValuePairs", "array_initializer", "assignmentAlignment", "binaryExpressionAlignment", "cascadingMessageSendAlignment", "compactIf", "compoundAssignmentAlignment", "conditionalExpression", "enumConstants", "enumConstantArguments", "explicit_constructor_call", "fieldDeclarationAssignmentAlignment", "localDeclarationAssignmentAlignment", "messageArguments", "messageAlignment", "methodArguments", "methodDeclaration", "multiple_field", "superclass", "superInterfaces", "throws", "typeMembers", "stringConcatenation", "tryResources", "unionTypeInMulticatch"};
    public Alignment enclosing;
    public Location location;
    public int fragmentIndex;
    public int fragmentCount;
    public int[] fragmentIndentations;
    public boolean needRedoColumnAlignment;
    public int chunkStartIndex;
    public int chunkKind;
    public int originalIndentationLevel;
    public int breakIndentationLevel;
    public int shiftBreakIndentationLevel;
    public int[] fragmentBreaks;
    public boolean wasSplit;
    public boolean blockAlign = false;
    public boolean tooLong = false;
    public Scribe scribe;
    private boolean reset = false;
    public static final int M_FORCE = 1;
    public static final int M_INDENT_ON_COLUMN = 2;
    public static final int M_INDENT_BY_ONE = 4;
    public static final int M_COMPACT_SPLIT = 16;
    public static final int M_COMPACT_FIRST_BREAK_SPLIT = 32;
    public static final int M_ONE_PER_LINE_SPLIT = 48;
    public static final int M_NEXT_SHIFTED_SPLIT = 64;
    public static final int M_NEXT_PER_LINE_SPLIT = 80;
    public static final int M_MULTICOLUMN = 256;
    public static final int M_NO_ALIGNMENT = 0;
    public int mode;
    public static final int SPLIT_MASK = 112;
    public static final int R_OUTERMOST = 1;
    public static final int R_INNERMOST = 2;
    public int tieBreakRule;
    public int startingColumn = -1;
    public static final int NONE = 0;
    public static final int BREAK = 1;
    public static final int CHUNK_FIELD = 1;
    public static final int CHUNK_METHOD = 2;
    public static final int CHUNK_TYPE = 3;
    public static final int CHUNK_ENUM = 4;

    public Alignment(int kind, int mode, int tieBreakRule, Scribe scribe, int fragmentCount, int sourceRestart, int continuationIndent) {
        Assert.isTrue((kind >= 1 && kind <= 26 ? 1 : 0) != 0);
        this.kind = kind;
        this.name = NAMES[kind];
        this.location = new Location(scribe, sourceRestart);
        this.mode = mode;
        this.tieBreakRule = tieBreakRule;
        this.fragmentCount = fragmentCount;
        this.scribe = scribe;
        this.originalIndentationLevel = this.scribe.indentationLevel;
        this.wasSplit = false;
        int indentSize = this.scribe.indentationSize;
        int currentColumn = this.location.outputColumn;
        if (currentColumn == 1) {
            currentColumn = this.location.outputIndentationLevel + 1;
        }
        if ((mode & 2) != 0) {
            this.breakIndentationLevel = this.scribe.getNextIndentationLevel(currentColumn);
            if (this.breakIndentationLevel == this.location.outputIndentationLevel) {
                this.breakIndentationLevel += continuationIndent * indentSize;
            }
        } else {
            this.breakIndentationLevel = (mode & 4) != 0 ? this.location.outputIndentationLevel + indentSize : this.location.outputIndentationLevel + continuationIndent * indentSize;
        }
        this.shiftBreakIndentationLevel = this.breakIndentationLevel + indentSize;
        this.fragmentIndentations = new int[this.fragmentCount];
        this.fragmentBreaks = new int[this.fragmentCount];
        if ((this.mode & 1) != 0) {
            this.couldBreak();
        }
    }

    public boolean checkChunkStart(int chunk, int startIndex, int sourceRestart) {
        if (this.chunkKind != chunk) {
            this.chunkKind = chunk;
            if (startIndex != this.chunkStartIndex) {
                this.chunkStartIndex = startIndex;
                this.location.update(this.scribe, sourceRestart);
                this.reset();
            }
            return true;
        }
        return false;
    }

    public void checkColumn() {
        if ((this.mode & 0x100) != 0 && this.fragmentCount > 0) {
            int fragmentIndentation;
            int currentIndentation = this.scribe.getNextIndentationLevel(this.scribe.column + (this.scribe.needSpace ? 1 : 0));
            if (currentIndentation > (fragmentIndentation = this.fragmentIndentations[this.fragmentIndex])) {
                this.fragmentIndentations[this.fragmentIndex] = currentIndentation;
                if (fragmentIndentation != 0) {
                    int i = this.fragmentIndex + 1;
                    while (i < this.fragmentCount) {
                        this.fragmentIndentations[i] = 0;
                        ++i;
                    }
                    this.needRedoColumnAlignment = true;
                }
            }
            if (this.needRedoColumnAlignment && this.fragmentIndex == this.fragmentCount - 1) {
                this.needRedoColumnAlignment = false;
                int relativeDepth = 0;
                Alignment targetAlignment = this.scribe.memberAlignment;
                while (targetAlignment != null) {
                    if (targetAlignment == this) {
                        throw new AlignmentException(2, relativeDepth);
                    }
                    targetAlignment = targetAlignment.enclosing;
                    ++relativeDepth;
                }
            }
        }
    }

    public int depth() {
        int depth = 0;
        Alignment current = this.enclosing;
        while (current != null) {
            ++depth;
            current = current.enclosing;
        }
        return depth;
    }

    public boolean canAlign() {
        if (this.tooLong) {
            return true;
        }
        boolean canAlign = true;
        Alignment enclosingAlignment = this.enclosing;
        while (enclosingAlignment != null) {
            switch (enclosingAlignment.kind) {
                case 1: 
                case 15: {
                    if (enclosingAlignment.isWrapped() && (enclosingAlignment.fragmentIndex > 0 || enclosingAlignment.fragmentCount < 2)) {
                        return !this.blockAlign;
                    }
                    if (enclosingAlignment.tooLong) {
                        return true;
                    }
                    canAlign = false;
                    break;
                }
                case 16: {
                    switch (this.kind) {
                        case 1: 
                        case 15: 
                        case 16: {
                            Alignment superEnclosingAlignment = enclosingAlignment.enclosing;
                            while (superEnclosingAlignment != null) {
                                switch (superEnclosingAlignment.kind) {
                                    case 1: 
                                    case 15: 
                                    case 16: {
                                        if (this.scribe.nlsTagCounter == 0) {
                                            enclosingAlignment.blockAlign = true;
                                        }
                                        return !this.blockAlign;
                                    }
                                }
                                superEnclosingAlignment = superEnclosingAlignment.enclosing;
                            }
                            break;
                        }
                    }
                    return !this.blockAlign;
                }
            }
            enclosingAlignment = enclosingAlignment.enclosing;
        }
        return canAlign && !this.blockAlign;
    }

    public boolean couldBreak() {
        if (this.fragmentCount == 0) {
            return false;
        }
        switch (this.mode & 0x70) {
            case 32: {
                if (this.fragmentBreaks[0] == 0) {
                    this.fragmentBreaks[0] = 1;
                    this.fragmentIndentations[0] = this.breakIndentationLevel;
                    this.wasSplit = true;
                    return true;
                }
                int i = this.fragmentIndex;
                do {
                    if (this.fragmentBreaks[i] != 0) continue;
                    this.fragmentBreaks[i] = 1;
                    this.fragmentIndentations[i] = this.breakIndentationLevel;
                    this.wasSplit = true;
                    return true;
                } while (--i >= 0);
                break;
            }
            case 16: {
                int i = this.fragmentIndex;
                do {
                    if (this.fragmentBreaks[i] != 0) continue;
                    this.fragmentBreaks[i] = 1;
                    this.fragmentIndentations[i] = this.breakIndentationLevel;
                    this.wasSplit = true;
                    return true;
                } while (--i >= 0);
                break;
            }
            case 64: {
                if (this.fragmentBreaks[0] != 0) break;
                this.fragmentBreaks[0] = 1;
                this.fragmentIndentations[0] = this.breakIndentationLevel;
                int i = 1;
                while (i < this.fragmentCount) {
                    this.fragmentBreaks[i] = 1;
                    this.fragmentIndentations[i] = this.shiftBreakIndentationLevel;
                    ++i;
                }
                this.wasSplit = true;
                return true;
            }
            case 48: {
                if (this.fragmentBreaks[0] != 0) break;
                int i = 0;
                while (i < this.fragmentCount) {
                    this.fragmentBreaks[i] = 1;
                    this.fragmentIndentations[i] = this.breakIndentationLevel;
                    ++i;
                }
                this.wasSplit = true;
                return true;
            }
            case 80: {
                if (this.fragmentBreaks[0] != 0 || this.fragmentCount <= 1 || this.fragmentBreaks[1] != 0) break;
                if ((this.mode & 2) != 0) {
                    this.fragmentIndentations[0] = this.breakIndentationLevel;
                }
                int i = 1;
                while (i < this.fragmentCount) {
                    this.fragmentBreaks[i] = 1;
                    this.fragmentIndentations[i] = this.breakIndentationLevel;
                    ++i;
                }
                this.wasSplit = true;
                return true;
            }
        }
        return false;
    }

    public boolean isWrapped() {
        if (this.fragmentCount == 0) {
            return false;
        }
        return this.fragmentBreaks[this.fragmentIndex] == 1;
    }

    public int wrappedIndex() {
        int i = 0;
        int max = this.fragmentCount;
        while (i < max) {
            if (this.fragmentBreaks[i] == 1) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public void performFragmentEffect() {
        if (this.fragmentCount == 0) {
            return;
        }
        if ((this.mode & 0x100) == 0) {
            switch (this.mode & 0x70) {
                case 16: 
                case 32: 
                case 48: 
                case 64: 
                case 80: {
                    break;
                }
                default: {
                    return;
                }
            }
        }
        int fragmentIndentation = this.fragmentIndentations[this.fragmentIndex];
        if (this.startingColumn < 0 || fragmentIndentation + 1 < this.startingColumn) {
            if (this.fragmentBreaks[this.fragmentIndex] == 1) {
                this.scribe.printNewLine();
            }
            if (fragmentIndentation > 0) {
                this.scribe.indentationLevel = fragmentIndentation;
            }
        }
    }

    public void reset() {
        this.wasSplit = false;
        if (this.fragmentCount > 0) {
            this.fragmentIndentations = new int[this.fragmentCount];
            this.fragmentBreaks = new int[this.fragmentCount];
        }
        if ((this.mode & 1) != 0) {
            this.couldBreak();
        }
        this.reset = true;
    }

    public void toFragmentsString(StringBuffer buffer) {
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(10);
        return this.toString(buffer, -1);
    }

    public String toString(StringBuffer buffer, int level) {
        StringBuffer indentation = new StringBuffer();
        int i = 0;
        while (i < level) {
            indentation.append('\t');
            ++i;
        }
        buffer.append(indentation);
        buffer.append("<kind: ").append(this.kind).append("> ");
        buffer.append("<name: ").append(this.name).append(">\n");
        buffer.append(indentation);
        buffer.append("<depth=").append(this.depth()).append("><breakIndent=").append(this.breakIndentationLevel).append("><shiftBreakIndent=").append(this.shiftBreakIndentationLevel).append(">\n");
        buffer.append(indentation);
        buffer.append("<location=").append(this.location.toString()).append(">\n");
        buffer.append(indentation).append("<fragments:\n");
        i = 0;
        while (i < this.fragmentCount) {
            buffer.append(indentation).append(" - ").append(i).append(": ").append("<break: ").append(this.fragmentBreaks[i] > 0 ? "YES" : "NO").append(">").append("<indent: ").append(this.fragmentIndentations[i]).append(">\n");
            ++i;
        }
        buffer.append(indentation).append(">\n");
        if (this.enclosing != null && level >= 0) {
            buffer.append(indentation).append("<enclosing assignement:\n");
            this.enclosing.toString(buffer, level + 1);
            buffer.append(indentation).append(">\n");
        }
        return buffer.toString();
    }

    public void update() {
        int i = 1;
        while (i < this.fragmentCount) {
            if (this.fragmentBreaks[i] == 1) {
                this.fragmentIndentations[i] = this.breakIndentationLevel;
            }
            ++i;
        }
    }

    public boolean wasReset() {
        return this.reset;
    }
}

