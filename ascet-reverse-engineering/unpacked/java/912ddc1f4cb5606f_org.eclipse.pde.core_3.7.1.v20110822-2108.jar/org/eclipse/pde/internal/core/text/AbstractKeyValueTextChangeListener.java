/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.text.edits.DeleteEdit
 *  org.eclipse.text.edits.InsertEdit
 *  org.eclipse.text.edits.ReplaceEdit
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.pde.internal.core.text;

import java.util.HashMap;
import org.eclipse.jface.text.IDocument;
import org.eclipse.pde.internal.core.text.AbstractTextChangeListener;
import org.eclipse.pde.internal.core.text.IDocumentKey;
import org.eclipse.pde.internal.core.util.PropertiesUtil;
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;

public abstract class AbstractKeyValueTextChangeListener
extends AbstractTextChangeListener {
    protected HashMap fReadableNames = null;

    public AbstractKeyValueTextChangeListener(IDocument document, boolean generateReadableNames) {
        super(document);
        if (generateReadableNames) {
            this.fReadableNames = new HashMap();
        }
    }

    public TextEdit[] getTextOperations() {
        if (this.fOperationTable.size() == 0) {
            return new TextEdit[0];
        }
        return this.fOperationTable.values().toArray(new TextEdit[this.fOperationTable.size()]);
    }

    protected void insertKey(IDocumentKey key, String name) {
        int offset = PropertiesUtil.getInsertOffset(this.fDocument);
        InsertEdit edit = new InsertEdit(offset, key.write());
        this.fOperationTable.put(key, edit);
        if (this.fReadableNames != null) {
            this.fReadableNames.put(edit, name);
        }
    }

    protected void deleteKey(IDocumentKey key, String name) {
        if (key.getOffset() >= 0) {
            DeleteEdit edit = new DeleteEdit(key.getOffset(), key.getLength());
            this.fOperationTable.put(key, edit);
            if (this.fReadableNames != null) {
                this.fReadableNames.put(edit, name);
            }
        }
    }

    protected void modifyKey(IDocumentKey key, String name) {
        if (key.getOffset() == -1) {
            this.insertKey(key, name);
        } else {
            ReplaceEdit edit = new ReplaceEdit(key.getOffset(), key.getLength(), key.write());
            this.fOperationTable.put(key, edit);
            if (this.fReadableNames != null) {
                this.fReadableNames.put(edit, name);
            }
        }
    }

    public String getReadableName(TextEdit edit) {
        if (this.fReadableNames != null && this.fReadableNames.containsKey(edit)) {
            return (String)this.fReadableNames.get(edit);
        }
        return null;
    }
}

