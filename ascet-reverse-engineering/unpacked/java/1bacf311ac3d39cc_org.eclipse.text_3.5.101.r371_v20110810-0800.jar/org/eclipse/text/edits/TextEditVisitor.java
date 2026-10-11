/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.text.edits;

import org.eclipse.text.edits.CopySourceEdit;
import org.eclipse.text.edits.CopyTargetEdit;
import org.eclipse.text.edits.CopyingRangeMarker;
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.MoveSourceEdit;
import org.eclipse.text.edits.MoveTargetEdit;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.RangeMarker;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.UndoEdit;

public class TextEditVisitor {
    public void preVisit(TextEdit edit) {
    }

    public void postVisit(TextEdit edit) {
    }

    public boolean visitNode(TextEdit edit) {
        return true;
    }

    public boolean visit(CopySourceEdit edit) {
        return this.visitNode(edit);
    }

    public boolean visit(CopyTargetEdit edit) {
        return this.visitNode(edit);
    }

    public boolean visit(MoveSourceEdit edit) {
        return this.visitNode(edit);
    }

    public boolean visit(MoveTargetEdit edit) {
        return this.visitNode(edit);
    }

    public boolean visit(RangeMarker edit) {
        return this.visitNode(edit);
    }

    public boolean visit(CopyingRangeMarker edit) {
        return this.visitNode(edit);
    }

    public boolean visit(DeleteEdit edit) {
        return this.visitNode(edit);
    }

    public boolean visit(InsertEdit edit) {
        return this.visitNode(edit);
    }

    public boolean visit(ReplaceEdit edit) {
        return this.visitNode(edit);
    }

    public boolean visit(UndoEdit edit) {
        return this.visitNode(edit);
    }

    public boolean visit(MultiTextEdit edit) {
        return this.visitNode(edit);
    }
}

