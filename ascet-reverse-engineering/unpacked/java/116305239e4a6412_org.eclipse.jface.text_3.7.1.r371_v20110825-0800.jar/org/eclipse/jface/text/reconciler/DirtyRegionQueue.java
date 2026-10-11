/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.reconciler;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jface.text.reconciler.DirtyRegion;

class DirtyRegionQueue {
    private List fDirtyRegions = new ArrayList();

    public void addDirtyRegion(DirtyRegion dr) {
        DirtyRegion lastDR = this.getLastDirtyRegion();
        boolean wasMerged = false;
        if (lastDR != null && lastDR.getType() == dr.getType()) {
            if (lastDR.getType() == "__insert") {
                if (lastDR.getOffset() + lastDR.getLength() == dr.getOffset()) {
                    lastDR.mergeWith(dr);
                    wasMerged = true;
                }
            } else if (lastDR.getType() == "__remove" && dr.getOffset() + dr.getLength() == lastDR.getOffset()) {
                lastDR.mergeWith(dr);
                wasMerged = true;
            }
        }
        if (!wasMerged) {
            this.fDirtyRegions.add(dr);
        }
    }

    private DirtyRegion getLastDirtyRegion() {
        int size = this.fDirtyRegions.size();
        return size == 0 ? null : (DirtyRegion)this.fDirtyRegions.get(size - 1);
    }

    public int getSize() {
        return this.fDirtyRegions.size();
    }

    public void purgeQueue() {
        this.fDirtyRegions.clear();
    }

    public DirtyRegion removeNextDirtyRegion() {
        if (this.fDirtyRegions.size() == 0) {
            return null;
        }
        DirtyRegion dr = (DirtyRegion)this.fDirtyRegions.get(0);
        this.fDirtyRegions.remove(0);
        return dr;
    }
}

