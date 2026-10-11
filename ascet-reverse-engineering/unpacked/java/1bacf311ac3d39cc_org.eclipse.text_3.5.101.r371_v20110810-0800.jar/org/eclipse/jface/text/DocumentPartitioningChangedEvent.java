/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;

public class DocumentPartitioningChangedEvent {
    private final IDocument fDocument;
    private final Map fMap = new HashMap();

    public DocumentPartitioningChangedEvent(IDocument document) {
        this.fDocument = document;
    }

    public IDocument getDocument() {
        return this.fDocument;
    }

    public IRegion getChangedRegion(String partitioning) {
        return (IRegion)this.fMap.get(partitioning);
    }

    public String[] getChangedPartitionings() {
        String[] partitionings = new String[this.fMap.size()];
        this.fMap.keySet().toArray(partitionings);
        return partitionings;
    }

    public void setPartitionChange(String partitioning, int offset, int length) {
        Assert.isNotNull((Object)partitioning);
        this.fMap.put(partitioning, new Region(offset, length));
    }

    public boolean isEmpty() {
        return this.fMap.isEmpty();
    }

    public IRegion getCoverage() {
        if (this.fMap.isEmpty()) {
            return new Region(0, 0);
        }
        int offset = -1;
        int endOffset = -1;
        Iterator e = this.fMap.values().iterator();
        while (e.hasNext()) {
            int end;
            IRegion r = (IRegion)e.next();
            if (offset < 0 || r.getOffset() < offset) {
                offset = r.getOffset();
            }
            if ((end = r.getOffset() + r.getLength()) <= endOffset) continue;
            endOffset = end;
        }
        return new Region(offset, endOffset - offset);
    }
}

