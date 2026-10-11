/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.jdom.IDOMMember;
import org.eclipse.jdt.internal.core.jdom.DOMNode;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

abstract class DOMMember
extends DOMNode
implements IDOMMember {
    protected int fFlags = 0;
    protected String fComment = null;
    protected int[] fCommentRange;
    protected char[] fModifiers = null;
    protected int[] fModifierRange;

    DOMMember() {
    }

    DOMMember(char[] document, int[] sourceRange, String name, int[] nameRange, int[] commentRange, int flags, int[] modifierRange) {
        super(document, sourceRange, name, nameRange);
        this.fFlags = flags;
        this.fComment = null;
        this.fCommentRange = commentRange;
        this.fModifierRange = modifierRange;
        this.setHasComment(commentRange[0] >= 0);
    }

    protected void appendFragmentedContents(CharArrayBuffer buffer) {
        if (this.isDetailed()) {
            this.appendMemberHeaderFragment(buffer);
            this.appendMemberDeclarationContents(buffer);
            this.appendMemberBodyContents(buffer);
        } else {
            this.appendSimpleContents(buffer);
        }
    }

    protected abstract void appendMemberBodyContents(CharArrayBuffer var1);

    protected abstract void appendMemberDeclarationContents(CharArrayBuffer var1);

    protected void appendMemberHeaderFragment(CharArrayBuffer buffer) {
        String fragment;
        int spaceEnd;
        int spaceStart;
        if (this.hasComment()) {
            spaceStart = this.fSourceRange[0];
            spaceEnd = this.fCommentRange[0];
            if (spaceEnd > 0) {
                buffer.append(this.fDocument, spaceStart, spaceEnd - spaceStart);
            }
        }
        if ((fragment = this.getComment()) != null) {
            buffer.append(fragment);
        }
        if ((spaceEnd = this.fModifierRange[0] >= 0 ? this.fModifierRange[0] - 1 : this.getMemberDeclarationStartPosition() - 1) >= (spaceStart = this.fCommentRange[1] >= 0 ? this.fCommentRange[1] + 1 : this.fSourceRange[0])) {
            buffer.append(this.fDocument, spaceStart, spaceEnd + 1 - spaceStart);
        }
        buffer.append(this.getModifiersText());
    }

    protected abstract void appendSimpleContents(CharArrayBuffer var1);

    protected String[] appendString(String[] list, String element) {
        String[] copy = new String[list.length + 1];
        System.arraycopy(list, 0, copy, 0, list.length);
        copy[list.length] = element;
        return copy;
    }

    protected char[] generateFlags() {
        char[] flags = Flags.toString(this.getFlags()).toCharArray();
        if (flags.length == 0) {
            return flags;
        }
        return CharOperation.concat(flags, new char[]{' '});
    }

    public String getComment() {
        this.becomeDetailed();
        if (this.hasComment()) {
            if (this.fComment != null) {
                return this.fComment;
            }
            return new String(this.fDocument, this.fCommentRange[0], this.fCommentRange[1] + 1 - this.fCommentRange[0]);
        }
        return null;
    }

    public int getFlags() {
        return this.fFlags;
    }

    protected abstract int getMemberDeclarationStartPosition();

    protected char[] getModifiersText() {
        if (this.fModifiers == null) {
            if (this.fModifierRange[0] < 0) {
                return null;
            }
            return CharOperation.subarray(this.fDocument, this.fModifierRange[0], this.fModifierRange[1] + 1);
        }
        return this.fModifiers;
    }

    protected boolean hasBody() {
        return this.getMask(16);
    }

    protected boolean hasComment() {
        return this.getMask(32);
    }

    protected void offset(int offset) {
        super.offset(offset);
        this.offsetRange(this.fCommentRange, offset);
        this.offsetRange(this.fModifierRange, offset);
    }

    public void setComment(String comment) {
        this.becomeDetailed();
        this.fComment = comment;
        this.fragment();
        this.setHasComment(comment != null);
        if (comment != null && comment.indexOf("@deprecated") >= 0) {
            this.fFlags |= 0x100000;
            return;
        }
        this.fFlags &= 0xFFEFFFFF;
    }

    public void setFlags(int flags) {
        this.becomeDetailed();
        this.fFlags = Flags.isDeprecated(this.fFlags) ? flags | 0x100000 : flags & 0xFFEFFFFF;
        this.fragment();
        this.fModifiers = this.generateFlags();
    }

    protected void setHasBody(boolean hasBody) {
        this.setMask(16, hasBody);
    }

    protected void setHasComment(boolean hasComment) {
        this.setMask(32, hasComment);
    }

    protected void setStartPosition(int start) {
        if (this.fCommentRange[0] >= 0) {
            this.fCommentRange[0] = start;
        }
        super.setStartPosition(start);
    }

    protected void shareContents(DOMNode node) {
        super.shareContents(node);
        DOMMember member = (DOMMember)node;
        this.fComment = member.fComment;
        this.fCommentRange = this.rangeCopy(member.fCommentRange);
        this.fFlags = member.fFlags;
        this.fModifiers = member.fModifiers;
        this.fModifierRange = this.rangeCopy(member.fModifierRange);
    }
}

