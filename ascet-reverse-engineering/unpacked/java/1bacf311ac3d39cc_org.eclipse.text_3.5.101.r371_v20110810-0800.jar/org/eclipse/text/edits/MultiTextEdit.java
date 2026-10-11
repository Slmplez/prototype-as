/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.edits;

import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditProcessor;
import org.eclipse.text.edits.TextEditVisitor;

public class MultiTextEdit
extends TextEdit {
    private boolean fDefined;
    static /* synthetic */ Class class$0;

    public MultiTextEdit() {
        super(0, Integer.MAX_VALUE);
        this.fDefined = false;
    }

    public MultiTextEdit(int offset, int length) {
        super(offset, length);
        this.fDefined = true;
    }

    protected MultiTextEdit(MultiTextEdit other) {
        super(other);
    }

    protected void checkIntegrity() throws MalformedTreeException {
    }

    final boolean isDefined() {
        if (this.fDefined) {
            return true;
        }
        return this.hasChildren();
    }

    public final int getOffset() {
        if (this.fDefined) {
            return super.getOffset();
        }
        List children = this.internalGetChildren();
        if (children == null || children.size() == 0) {
            return 0;
        }
        return ((TextEdit)children.get(0)).getOffset();
    }

    public final int getLength() {
        if (this.fDefined) {
            return super.getLength();
        }
        List children = this.internalGetChildren();
        if (children == null || children.size() == 0) {
            return 0;
        }
        TextEdit first = (TextEdit)children.get(0);
        TextEdit last = (TextEdit)children.get(children.size() - 1);
        return last.getOffset() - first.getOffset() + last.getLength();
    }

    public final boolean covers(TextEdit other) {
        if (this.fDefined) {
            return super.covers(other);
        }
        return true;
    }

    protected boolean canZeroLengthCover() {
        return true;
    }

    protected TextEdit doCopy() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.text.edits.MultiTextEdit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Assert.isTrue((clazz == this.getClass() ? 1 : 0) != 0, (String)"Subclasses must reimplement copy0");
        return new MultiTextEdit(this);
    }

    protected void accept0(TextEditVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor);
        }
    }

    void adjustOffset(int delta) {
        if (this.fDefined) {
            super.adjustOffset(delta);
        }
    }

    void adjustLength(int delta) {
        if (this.fDefined) {
            super.adjustLength(delta);
        }
    }

    void performConsistencyCheck(TextEditProcessor processor, IDocument document) throws MalformedTreeException {
        this.checkIntegrity();
    }

    int performDocumentUpdating(IDocument document) throws BadLocationException {
        this.fDelta = 0;
        return this.fDelta;
    }

    boolean deleteChildren() {
        return false;
    }

    void aboutToBeAdded(TextEdit parent) {
        this.defineRegion(parent.getOffset());
    }

    void defineRegion(int parentOffset) {
        if (this.fDefined) {
            return;
        }
        if (this.hasChildren()) {
            IRegion region = MultiTextEdit.getCoverage(this.getChildren());
            this.internalSetOffset(region.getOffset());
            this.internalSetLength(region.getLength());
        } else {
            this.internalSetOffset(parentOffset);
            this.internalSetLength(0);
        }
        this.fDefined = true;
    }

    void internalToString(StringBuffer buffer, int indent) {
        super.internalToString(buffer, indent);
        if (!this.fDefined) {
            buffer.append(" [undefined]");
        }
    }
}

