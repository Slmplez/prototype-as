/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.edits;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.text.edits.EditDocument;
import org.eclipse.text.edits.ISourceModifier;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.MoveTargetEdit;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.RangeMarker;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditCopier;
import org.eclipse.text.edits.TextEditMessages;
import org.eclipse.text.edits.TextEditProcessor;
import org.eclipse.text.edits.TextEditVisitor;

public final class MoveSourceEdit
extends TextEdit {
    private MoveTargetEdit fTarget;
    private ISourceModifier fModifier;
    private String fSourceContent;
    private MultiTextEdit fSourceRoot;

    public MoveSourceEdit(int offset, int length) {
        super(offset, length);
    }

    public MoveSourceEdit(int offset, int length, MoveTargetEdit target) {
        this(offset, length);
        this.setTargetEdit(target);
    }

    private MoveSourceEdit(MoveSourceEdit other) {
        super(other);
        if (other.fModifier != null) {
            this.fModifier = other.fModifier.copy();
        }
    }

    public MoveTargetEdit getTargetEdit() {
        return this.fTarget;
    }

    public void setTargetEdit(MoveTargetEdit edit) {
        this.fTarget = edit;
        this.fTarget.setSourceEdit(this);
    }

    public ISourceModifier getSourceModifier() {
        return this.fModifier;
    }

    public void setSourceModifier(ISourceModifier modifier) {
        this.fModifier = modifier;
    }

    String getContent() {
        if (this.fSourceContent == null) {
            return "";
        }
        return this.fSourceContent;
    }

    MultiTextEdit getSourceRoot() {
        return this.fSourceRoot;
    }

    void clearContent() {
        this.fSourceContent = null;
        this.fSourceRoot = null;
    }

    protected TextEdit doCopy() {
        return new MoveSourceEdit(this);
    }

    protected void postProcessCopy(TextEditCopier copier) {
        if (this.fTarget != null) {
            MoveSourceEdit source = (MoveSourceEdit)copier.getCopy(this);
            MoveTargetEdit target = (MoveTargetEdit)copier.getCopy(this.fTarget);
            if (source != null && target != null) {
                source.setTargetEdit(target);
            }
        }
    }

    protected void accept0(TextEditVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor);
        }
    }

    int traverseConsistencyCheck(TextEditProcessor processor, IDocument document, List sourceEdits) {
        int result = super.traverseConsistencyCheck(processor, document, sourceEdits);
        if (this.fSourceContent == null) {
            if (sourceEdits.size() <= result) {
                ArrayList<MoveSourceEdit> list = new ArrayList<MoveSourceEdit>();
                list.add(this);
                int i = sourceEdits.size();
                while (i < result) {
                    sourceEdits.add(null);
                    ++i;
                }
                sourceEdits.add(list);
            } else {
                ArrayList<MoveSourceEdit> list = (ArrayList<MoveSourceEdit>)sourceEdits.get(result);
                if (list == null) {
                    list = new ArrayList<MoveSourceEdit>();
                    sourceEdits.add(result, list);
                }
                list.add(this);
            }
        }
        return result;
    }

    void performConsistencyCheck(TextEditProcessor processor, IDocument document) throws MalformedTreeException {
        if (this.fTarget == null) {
            throw new MalformedTreeException(this.getParent(), this, TextEditMessages.getString("MoveSourceEdit.no_target"));
        }
        if (this.fTarget.getSourceEdit() != this) {
            throw new MalformedTreeException(this.getParent(), this, TextEditMessages.getString("MoveSourceEdit.different_source"));
        }
    }

    void traverseSourceComputation(TextEditProcessor processor, IDocument document) {
        this.performSourceComputation(processor, document);
    }

    void performSourceComputation(TextEditProcessor processor, IDocument document) {
        try {
            TextEdit[] children = this.removeChildren();
            if (children.length > 0) {
                String content = document.get(this.getOffset(), this.getLength());
                EditDocument subDocument = new EditDocument(content);
                this.fSourceRoot = new MultiTextEdit(this.getOffset(), this.getLength());
                this.fSourceRoot.addChildren(children);
                this.fSourceRoot.internalMoveTree(-this.getOffset());
                int processingStyle = this.getStyle(processor);
                TextEditProcessor subProcessor = TextEditProcessor.createSourceComputationProcessor(subDocument, this.fSourceRoot, processingStyle);
                subProcessor.performEdits();
                if (this.needsTransformation()) {
                    this.applyTransformation(subDocument, processingStyle);
                }
                this.fSourceContent = subDocument.get();
            } else {
                this.fSourceContent = document.get(this.getOffset(), this.getLength());
                if (this.needsTransformation()) {
                    EditDocument subDocument = new EditDocument(this.fSourceContent);
                    this.applyTransformation(subDocument, this.getStyle(processor));
                    this.fSourceContent = subDocument.get();
                }
            }
        }
        catch (BadLocationException badLocationException) {
            Assert.isTrue((boolean)false);
        }
    }

    private int getStyle(TextEditProcessor processor) {
        if ((processor.getStyle() & 2) != 0) {
            return 2;
        }
        return 0;
    }

    int performDocumentUpdating(IDocument document) throws BadLocationException {
        document.replace(this.getOffset(), this.getLength(), "");
        this.fDelta = -this.getLength();
        return this.fDelta;
    }

    boolean deleteChildren() {
        return false;
    }

    private boolean needsTransformation() {
        return this.fModifier != null;
    }

    private void applyTransformation(IDocument document, int style) throws MalformedTreeException {
        if ((style & 2) != 0 && this.fSourceRoot != null) {
            HashMap editMap = new HashMap();
            TextEdit newEdit = this.createEdit(editMap);
            ArrayList<ReplaceEdit> replaces = new ArrayList<ReplaceEdit>(Arrays.asList(this.fModifier.getModifications(document.get())));
            this.insertEdits(newEdit, replaces);
            try {
                newEdit.apply(document, style);
            }
            catch (BadLocationException badLocationException) {
                Assert.isTrue((boolean)false);
            }
            MoveSourceEdit.restorePositions(editMap);
        } else {
            MultiTextEdit newEdit = new MultiTextEdit(0, document.getLength());
            ReplaceEdit[] replaces = this.fModifier.getModifications(document.get());
            int i = 0;
            while (i < replaces.length) {
                newEdit.addChild(replaces[i]);
                ++i;
            }
            try {
                newEdit.apply(document, style);
            }
            catch (BadLocationException badLocationException) {
                Assert.isTrue((boolean)false);
            }
        }
    }

    private TextEdit createEdit(Map editMap) {
        MultiTextEdit result = new MultiTextEdit(0, this.fSourceRoot.getLength());
        editMap.put(result, this.fSourceRoot);
        MoveSourceEdit.createEdit(this.fSourceRoot, result, editMap);
        return result;
    }

    private static void createEdit(TextEdit source, TextEdit target, Map editMap) {
        TextEdit[] children = source.getChildren();
        int i = 0;
        while (i < children.length) {
            TextEdit child = children[i];
            if (!child.isDeleted()) {
                RangeMarker marker = new RangeMarker(child.getOffset(), child.getLength());
                target.addChild(marker);
                editMap.put(marker, child);
                MoveSourceEdit.createEdit(child, marker, editMap);
            }
            ++i;
        }
    }

    private void insertEdits(TextEdit root, List edits) {
        while (edits.size() > 0) {
            ReplaceEdit edit = (ReplaceEdit)edits.remove(0);
            MoveSourceEdit.insert(root, edit, edits);
        }
    }

    private static void insert(TextEdit parent, ReplaceEdit edit, List edits) {
        if (!parent.hasChildren()) {
            parent.addChild(edit);
            return;
        }
        TextEdit[] children = parent.getChildren();
        int removed = 0;
        int i = 0;
        while (i < children.length) {
            TextEdit child = children[i];
            if (child.covers(edit)) {
                MoveSourceEdit.insert(child, edit, edits);
                return;
            }
            if (edit.covers(child)) {
                parent.removeChild(i - removed++);
                edit.addChild(child);
            } else {
                IRegion intersect = MoveSourceEdit.intersect(edit, child);
                if (intersect != null) {
                    ReplaceEdit[] splits = MoveSourceEdit.splitEdit(edit, intersect);
                    MoveSourceEdit.insert(child, splits[0], edits);
                    edits.add(splits[1]);
                    return;
                }
            }
            ++i;
        }
        parent.addChild(edit);
    }

    public static IRegion intersect(TextEdit op1, TextEdit op2) {
        int offset2;
        int length1;
        int offset1 = op1.getOffset();
        int end1 = offset1 + (length1 = op1.getLength()) - 1;
        if (end1 < (offset2 = op2.getOffset())) {
            return null;
        }
        int length2 = op2.getLength();
        int end2 = offset2 + length2 - 1;
        if (end2 < offset1) {
            return null;
        }
        int end = Math.min(end1, end2);
        if (offset1 < offset2) {
            return new Region(offset2, end - offset2 + 1);
        }
        return new Region(offset1, end - offset1 + 1);
    }

    private static ReplaceEdit[] splitEdit(ReplaceEdit edit, IRegion intersect) {
        if (edit.getOffset() != intersect.getOffset()) {
            return MoveSourceEdit.splitIntersectRight(edit, intersect);
        }
        return MoveSourceEdit.splitIntersectLeft(edit, intersect);
    }

    private static ReplaceEdit[] splitIntersectRight(ReplaceEdit edit, IRegion intersect) {
        ReplaceEdit[] result = new ReplaceEdit[]{new ReplaceEdit(intersect.getOffset(), intersect.getLength(), ""), new ReplaceEdit(edit.getOffset(), intersect.getOffset() - edit.getOffset(), edit.getText())};
        return result;
    }

    private static ReplaceEdit[] splitIntersectLeft(ReplaceEdit edit, IRegion intersect) {
        ReplaceEdit[] result = new ReplaceEdit[]{new ReplaceEdit(intersect.getOffset(), intersect.getLength(), edit.getText()), new ReplaceEdit(intersect.getOffset() + intersect.getLength(), edit.getLength() - intersect.getLength(), "")};
        return result;
    }

    private static void restorePositions(Map editMap) {
        Iterator iter = editMap.keySet().iterator();
        while (iter.hasNext()) {
            TextEdit marker = (TextEdit)iter.next();
            TextEdit edit = (TextEdit)editMap.get(marker);
            if (marker.isDeleted()) {
                edit.markAsDeleted();
                continue;
            }
            edit.adjustOffset(marker.getOffset() - edit.getOffset());
            edit.adjustLength(marker.getLength() - edit.getLength());
        }
    }
}

