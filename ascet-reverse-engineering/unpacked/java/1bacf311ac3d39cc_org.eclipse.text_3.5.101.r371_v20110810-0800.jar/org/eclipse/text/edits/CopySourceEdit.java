/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.edits;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.CopyTargetEdit;
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.EditDocument;
import org.eclipse.text.edits.ISourceModifier;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.MoveSourceEdit;
import org.eclipse.text.edits.MoveTargetEdit;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.RangeMarker;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditCopier;
import org.eclipse.text.edits.TextEditMessages;
import org.eclipse.text.edits.TextEditProcessor;
import org.eclipse.text.edits.TextEditVisitor;

public final class CopySourceEdit
extends TextEdit {
    private CopyTargetEdit fTarget;
    private ISourceModifier fModifier;
    private String fSourceContent;
    private TextEdit fSourceRoot;

    public CopySourceEdit(int offset, int length) {
        super(offset, length);
    }

    public CopySourceEdit(int offset, int length, CopyTargetEdit target) {
        this(offset, length);
        this.setTargetEdit(target);
    }

    private CopySourceEdit(CopySourceEdit other) {
        super(other);
        if (other.fModifier != null) {
            this.fModifier = other.fModifier.copy();
        }
    }

    public CopyTargetEdit getTargetEdit() {
        return this.fTarget;
    }

    public void setTargetEdit(CopyTargetEdit edit) throws MalformedTreeException {
        Assert.isNotNull((Object)edit);
        if (this.fTarget != edit) {
            this.fTarget = edit;
            this.fTarget.setSourceEdit(this);
        }
    }

    public ISourceModifier getSourceModifier() {
        return this.fModifier;
    }

    public void setSourceModifier(ISourceModifier modifier) {
        this.fModifier = modifier;
    }

    protected TextEdit doCopy() {
        return new CopySourceEdit(this);
    }

    protected void accept0(TextEditVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor);
        }
    }

    String getContent() {
        if (this.fSourceContent == null) {
            return "";
        }
        return this.fSourceContent;
    }

    void clearContent() {
        this.fSourceContent = null;
    }

    protected void postProcessCopy(TextEditCopier copier) {
        if (this.fTarget != null) {
            CopySourceEdit source = (CopySourceEdit)copier.getCopy(this);
            CopyTargetEdit target = (CopyTargetEdit)copier.getCopy(this.fTarget);
            if (source != null && target != null) {
                source.setTargetEdit(target);
            }
        }
    }

    int traverseConsistencyCheck(TextEditProcessor processor, IDocument document, List sourceEdits) {
        int result = super.traverseConsistencyCheck(processor, document, sourceEdits);
        if (this.fSourceContent == null) {
            if (sourceEdits.size() <= result) {
                ArrayList<CopySourceEdit> list = new ArrayList<CopySourceEdit>();
                list.add(this);
                int i = sourceEdits.size();
                while (i < result) {
                    sourceEdits.add(null);
                    ++i;
                }
                sourceEdits.add(list);
            } else {
                ArrayList<CopySourceEdit> list = (ArrayList<CopySourceEdit>)sourceEdits.get(result);
                if (list == null) {
                    list = new ArrayList<CopySourceEdit>();
                    sourceEdits.add(result, list);
                }
                list.add(this);
            }
        }
        return result;
    }

    void performConsistencyCheck(TextEditProcessor processor, IDocument document) throws MalformedTreeException {
        if (this.fTarget == null) {
            throw new MalformedTreeException(this.getParent(), this, TextEditMessages.getString("CopySourceEdit.no_target"));
        }
        if (this.fTarget.getSourceEdit() != this) {
            throw new MalformedTreeException(this.getParent(), this, TextEditMessages.getString("CopySourceEdit.different_source"));
        }
    }

    void traverseSourceComputation(TextEditProcessor processor, IDocument document) {
        this.performSourceComputation(processor, document);
    }

    void performSourceComputation(TextEditProcessor processor, IDocument document) {
        try {
            MultiTextEdit root = new MultiTextEdit(this.getOffset(), this.getLength());
            root.internalSetChildren(this.internalGetChildren());
            this.fSourceContent = document.get(this.getOffset(), this.getLength());
            this.fSourceRoot = PartialCopier.perform(root);
            this.fSourceRoot.internalMoveTree(-this.getOffset());
            if (this.fSourceRoot.hasChildren()) {
                EditDocument subDocument = new EditDocument(this.fSourceContent);
                TextEditProcessor subProcessor = TextEditProcessor.createSourceComputationProcessor(subDocument, this.fSourceRoot, 0);
                subProcessor.performEdits();
                if (this.needsTransformation()) {
                    this.applyTransformation(subDocument);
                }
                this.fSourceContent = subDocument.get();
                this.fSourceRoot = null;
            } else if (this.needsTransformation()) {
                EditDocument subDocument = new EditDocument(this.fSourceContent);
                this.applyTransformation(subDocument);
                this.fSourceContent = subDocument.get();
            }
        }
        catch (BadLocationException badLocationException) {
            Assert.isTrue((boolean)false);
        }
    }

    private boolean needsTransformation() {
        return this.fModifier != null;
    }

    private void applyTransformation(IDocument document) throws MalformedTreeException {
        MultiTextEdit newEdit = new MultiTextEdit(0, document.getLength());
        ReplaceEdit[] replaces = this.fModifier.getModifications(document.get());
        int i = 0;
        while (i < replaces.length) {
            newEdit.addChild(replaces[i]);
            ++i;
        }
        try {
            newEdit.apply(document, 0);
        }
        catch (BadLocationException badLocationException) {
            Assert.isTrue((boolean)false);
        }
    }

    int performDocumentUpdating(IDocument document) throws BadLocationException {
        this.fDelta = 0;
        return this.fDelta;
    }

    boolean deleteChildren() {
        return false;
    }

    private static class PartialCopier
    extends TextEditVisitor {
        TextEdit fResult;
        List fParents = new ArrayList();
        TextEdit fCurrentParent;

        private PartialCopier() {
        }

        public static TextEdit perform(TextEdit source) {
            PartialCopier copier = new PartialCopier();
            source.accept(copier);
            return copier.fResult;
        }

        private void manageCopy(TextEdit copy) {
            if (this.fResult == null) {
                this.fResult = copy;
            }
            if (this.fCurrentParent != null) {
                this.fCurrentParent.addChild(copy);
            }
            this.fParents.add(this.fCurrentParent);
            this.fCurrentParent = copy;
        }

        public void postVisit(TextEdit edit) {
            this.fCurrentParent = (TextEdit)this.fParents.remove(this.fParents.size() - 1);
        }

        public boolean visitNode(TextEdit edit) {
            this.manageCopy(edit.doCopy());
            return true;
        }

        public boolean visit(CopySourceEdit edit) {
            this.manageCopy(new RangeMarker(edit.getOffset(), edit.getLength()));
            return true;
        }

        public boolean visit(CopyTargetEdit edit) {
            this.manageCopy(new InsertEdit(edit.getOffset(), edit.getSourceEdit().getContent()));
            return true;
        }

        public boolean visit(MoveSourceEdit edit) {
            this.manageCopy(new DeleteEdit(edit.getOffset(), edit.getLength()));
            return true;
        }

        public boolean visit(MoveTargetEdit edit) {
            this.manageCopy(new InsertEdit(edit.getOffset(), edit.getSourceEdit().getContent()));
            return true;
        }
    }
}

