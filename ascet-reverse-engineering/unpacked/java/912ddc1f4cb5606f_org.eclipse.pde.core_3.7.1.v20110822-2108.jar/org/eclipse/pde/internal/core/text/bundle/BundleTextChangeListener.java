/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.text.edits.InsertEdit
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.text.AbstractKeyValueTextChangeListener;
import org.eclipse.pde.internal.core.text.IDocumentKey;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PDEManifestElement;
import org.eclipse.pde.internal.core.text.bundle.PackageFriend;
import org.eclipse.pde.internal.core.util.PropertiesUtil;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.TextEdit;

public class BundleTextChangeListener
extends AbstractKeyValueTextChangeListener {
    public BundleTextChangeListener(IDocument document) {
        super(document, false);
    }

    public BundleTextChangeListener(IDocument document, boolean generateReadableNames) {
        super(document, generateReadableNames);
    }

    public TextEdit[] getTextOperations() {
        TextEdit[] ops = super.getTextOperations();
        try {
            if (ops.length == 0 || !PropertiesUtil.isNewlineNeeded(this.fDocument)) {
                return ops;
            }
        }
        catch (BadLocationException badLocationException) {}
        TextEdit[] result = new TextEdit[ops.length + 1];
        result[ops.length] = new InsertEdit(PropertiesUtil.getInsertOffset(this.fDocument), this.fSep);
        if (this.fReadableNames != null) {
            this.fReadableNames.put(result[ops.length], PDECoreMessages.BundleTextChangeListener_editNames_newLine);
        }
        System.arraycopy(ops, 0, result, 0, ops.length);
        return result;
    }

    protected void insertKey(IDocumentKey key, String name) {
        int offset = PropertiesUtil.getInsertOffset(this.fDocument);
        StringBuffer buffer = new StringBuffer(key.write());
        try {
            if (PropertiesUtil.isNewlineNeeded(this.fDocument) && buffer.substring(buffer.length() - this.fSep.length()).equals(this.fSep)) {
                buffer.insert(0, this.fSep);
                buffer.setLength(buffer.length() - this.fSep.length());
            }
        }
        catch (BadLocationException badLocationException) {}
        InsertEdit edit = new InsertEdit(offset, buffer.toString());
        this.fOperationTable.put(key, edit);
        if (this.fReadableNames != null) {
            this.fReadableNames.put(edit, name);
        }
    }

    public void modelChanged(IModelChangedEvent event) {
        Object[] objects = event.getChangedObjects();
        int i = 0;
        while (i < objects.length) {
            Object object = objects[i];
            if (object instanceof PDEManifestElement) {
                object = ((PDEManifestElement)object).getHeader();
            } else if (object instanceof PackageFriend) {
                object = ((PackageFriend)object).getHeader();
            }
            if (object instanceof ManifestHeader) {
                String name;
                ManifestHeader header = (ManifestHeader)object;
                Object op = this.fOperationTable.remove(header);
                if (this.fReadableNames != null) {
                    this.fReadableNames.remove(op);
                }
                if (header.getValue() == null || header.getValue().trim().length() == 0) {
                    name = this.fReadableNames == null ? null : NLS.bind((String)PDECoreMessages.BundleTextChangeListener_editNames_remove, (Object)header.fName);
                    this.deleteKey(header, name);
                } else {
                    name = this.fReadableNames == null ? null : NLS.bind((String)(header.getOffset() == -1 ? PDECoreMessages.BundleTextChangeListener_editNames_insert : PDECoreMessages.BundleTextChangeListener_editNames_modify), (Object)header.fName);
                    this.modifyKey(header, name);
                }
            }
            ++i;
        }
    }
}

