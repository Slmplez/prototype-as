/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.text.build;

import org.eclipse.jface.text.IDocument;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.text.AbstractKeyValueTextChangeListener;
import org.eclipse.pde.internal.core.text.IDocumentKey;

public class PropertiesTextChangeListener
extends AbstractKeyValueTextChangeListener {
    public PropertiesTextChangeListener(IDocument document) {
        super(document, false);
    }

    public PropertiesTextChangeListener(IDocument document, boolean generateReadableNames) {
        super(document, generateReadableNames);
    }

    public void modelChanged(IModelChangedEvent event) {
        Object[] objects = event.getChangedObjects();
        int i = 0;
        while (i < objects.length) {
            Object object = objects[i];
            IDocumentKey key = (IDocumentKey)object;
            Object op = this.fOperationTable.remove(key);
            if (this.fReadableNames != null) {
                this.fReadableNames.remove(op);
            }
            String name = null;
            switch (event.getChangeType()) {
                case 2: {
                    if (this.fReadableNames != null) {
                        name = NLS.bind((String)PDECoreMessages.PropertiesTextChangeListener_editNames_remove, (Object)key.getName());
                    }
                    this.deleteKey(key, name);
                    break;
                }
                default: {
                    if (this.fReadableNames != null) {
                        name = NLS.bind((String)(key.getOffset() == -1 ? PDECoreMessages.PropertiesTextChangeListener_editNames_insert : PDECoreMessages.PropertiesTextChangeListener_editNames_delete), (Object)key.getName());
                    }
                    this.modifyKey(key, name);
                }
            }
            ++i;
        }
    }
}

