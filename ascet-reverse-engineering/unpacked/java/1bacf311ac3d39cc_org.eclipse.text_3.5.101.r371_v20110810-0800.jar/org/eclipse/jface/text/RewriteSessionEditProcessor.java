/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentRewriteSession;
import org.eclipse.jface.text.DocumentRewriteSessionType;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.text.edits.CopyTargetEdit;
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.MoveTargetEdit;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditProcessor;
import org.eclipse.text.edits.TextEditVisitor;
import org.eclipse.text.edits.UndoEdit;

public final class RewriteSessionEditProcessor
extends TextEditProcessor {
    private static final int THRESHOLD = 1000;

    public RewriteSessionEditProcessor(IDocument document, TextEdit root, int style) {
        super(document, root, style);
    }

    public UndoEdit performEdits() throws MalformedTreeException, BadLocationException {
        IDocument document = this.getDocument();
        if (!(document instanceof IDocumentExtension4)) {
            return super.performEdits();
        }
        IDocumentExtension4 extension = (IDocumentExtension4)((Object)document);
        boolean isLargeEdit = RewriteSessionEditProcessor.isLargeEdit(this.getRoot());
        DocumentRewriteSessionType type = isLargeEdit ? DocumentRewriteSessionType.UNRESTRICTED : DocumentRewriteSessionType.UNRESTRICTED_SMALL;
        DocumentRewriteSession session = extension.startRewriteSession(type);
        try {
            UndoEdit undoEdit = super.performEdits();
            return undoEdit;
        }
        finally {
            extension.stopRewriteSession(session);
        }
    }

    public static boolean isLargeEdit(TextEdit edit) {
        SizeVisitor sizeVisitor = new SizeVisitor();
        edit.accept(sizeVisitor);
        return sizeVisitor.fSize > 1000;
    }

    private static final class SizeVisitor
    extends TextEditVisitor {
        int fSize = 0;

        private SizeVisitor() {
        }

        public boolean visit(CopyTargetEdit edit) {
            this.fSize += edit.getLength();
            return super.visit(edit);
        }

        public boolean visit(DeleteEdit edit) {
            this.fSize += edit.getLength();
            return super.visit(edit);
        }

        public boolean visit(InsertEdit edit) {
            this.fSize += edit.getText().length();
            return super.visit(edit);
        }

        public boolean visit(MoveTargetEdit edit) {
            this.fSize += edit.getLength();
            return super.visit(edit);
        }

        public boolean visit(ReplaceEdit edit) {
            this.fSize += Math.max(edit.getLength(), edit.getText().length());
            return super.visit(edit);
        }
    }
}

