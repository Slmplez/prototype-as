/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.undo;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.undo.DocumentUndoManager;
import org.eclipse.text.undo.IDocumentUndoManager;

public final class DocumentUndoManagerRegistry {
    private static Map fgFactory = new HashMap();

    private DocumentUndoManagerRegistry() {
    }

    public static synchronized void connect(IDocument document) {
        Assert.isNotNull((Object)document);
        Record record = (Record)fgFactory.get(document);
        if (record == null) {
            record = new Record(document);
            fgFactory.put(document, record);
        }
        Record record2 = record;
        record2.count = record2.count + 1;
    }

    public static synchronized void disconnect(IDocument document) {
        Record record;
        Assert.isNotNull((Object)document);
        Record record2 = record = (Record)fgFactory.get(document);
        record2.count = record2.count - 1;
        if (record.count == 0) {
            fgFactory.remove(document);
        }
    }

    public static synchronized IDocumentUndoManager getDocumentUndoManager(IDocument document) {
        Assert.isNotNull((Object)document);
        Record record = (Record)fgFactory.get(document);
        if (record == null) {
            return null;
        }
        return record.undoManager;
    }

    private static final class Record {
        private int count = 0;
        private IDocumentUndoManager undoManager;

        public Record(IDocument document) {
            this.undoManager = new DocumentUndoManager(document);
        }
    }
}

