/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.layout;

import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.SizeCache;

public class TrimDescriptor {
    private IWindowTrim fTrim;
    private SizeCache fCache;
    private SizeCache fDockingHandle = null;
    private int fAreaId;

    public TrimDescriptor(IWindowTrim trim, int areaId) {
        this.fTrim = trim;
        this.fAreaId = areaId;
    }

    public SizeCache getCache() {
        return this.fCache;
    }

    public void setCache(SizeCache c) {
        this.fCache = c;
    }

    public IWindowTrim getTrim() {
        return this.fTrim;
    }

    public SizeCache getDockingCache() {
        return this.fDockingHandle;
    }

    public String getId() {
        return this.fTrim.getId();
    }

    public boolean isVisible() {
        if (!this.fTrim.getControl().isDisposed()) {
            return this.fTrim.getControl().isVisible();
        }
        return false;
    }

    public void setDockingCache(SizeCache cache) {
        this.fDockingHandle = cache;
    }

    public int getAreaId() {
        return this.fAreaId;
    }

    public void setAreaId(int id) {
        this.fAreaId = id;
    }

    public void flush() {
        if (this.fCache != null) {
            this.fCache.flush();
        }
        if (this.fDockingHandle != null) {
            this.fDockingHandle.flush();
        }
    }

    public void setVisible(boolean visible) {
        if (this.fTrim.getControl() != null && !this.fTrim.getControl().isDisposed()) {
            this.fTrim.getControl().setVisible(visible);
        }
        if (this.fDockingHandle != null && this.fDockingHandle.getControl() != null && !this.fDockingHandle.getControl().isDisposed()) {
            this.fDockingHandle.getControl().setVisible(visible);
        }
    }
}

