/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.internal.ITrimAreaChangeListener;
import org.eclipse.ui.internal.WorkbenchLayout;

public class TrimLayoutData {
    public static final int GROWABLE = 1;
    public static final int SHRINKABLE = 2;
    public static final int GRAB_EXCESS_MINOR = 4;
    public String trimId;
    public String areaId;
    public int flags;
    public ITrimAreaChangeListener listener;
    public int shrinkableSize;

    public TrimLayoutData(String trimId, String areaId, int flags, ITrimAreaChangeListener listener) {
        this.trimId = trimId;
        this.areaId = areaId;
        this.flags = flags;
        this.listener = listener;
    }

    public TrimLayoutData(String trimId, String areaId, int flags) {
        this(trimId, areaId, flags, null);
    }

    public TrimLayoutData(String trimId, String areaId) {
        this(trimId, areaId, 0);
    }

    public void setAreaId(String newAreaId) {
        if (this.listener != null) {
            this.listener.areaChanged(WorkbenchLayout.getOrientation(this.areaId), WorkbenchLayout.getOrientation(newAreaId));
        }
        this.areaId = newAreaId;
    }
}

