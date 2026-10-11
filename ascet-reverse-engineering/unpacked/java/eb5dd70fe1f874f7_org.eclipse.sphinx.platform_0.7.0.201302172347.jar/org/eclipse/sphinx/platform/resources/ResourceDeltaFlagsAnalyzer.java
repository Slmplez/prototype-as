/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResourceDelta
 */
package org.eclipse.sphinx.platform.resources;

import org.eclipse.core.resources.IResourceDelta;

public class ResourceDeltaFlagsAnalyzer {
    public final boolean ADDED;
    public final boolean ADDED_PHANTOM;
    public final boolean ALL_WITH_PHANTOMS;
    public final boolean CHANGED;
    public final boolean CONTENT;
    public final boolean COPIED_FROM;
    public final boolean DESCRIPTION;
    public final boolean ENCODING;
    public final boolean LOCAL_CHANGED;
    public final boolean MARKERS;
    public final boolean MOVED_FROM;
    public final boolean MOVED_TO;
    public final boolean NO_CHANGE;
    public final boolean OPEN;
    public final boolean REMOVED;
    public final boolean REMOVED_PHANTOM;
    public final boolean REPLACED;
    public final boolean SYNC;
    public final boolean TYPE;
    public final boolean ZERO;

    public ResourceDeltaFlagsAnalyzer(IResourceDelta delta) {
        int flags = delta.getFlags();
        this.ADDED = (flags & 1) != 0;
        this.ADDED_PHANTOM = (flags & 8) != 0;
        this.ALL_WITH_PHANTOMS = (flags & 0x1F) != 0;
        this.CHANGED = (flags & 4) != 0;
        this.CONTENT = (flags & 0x100) != 0;
        this.COPIED_FROM = (flags & 0x800) != 0;
        this.DESCRIPTION = (flags & 0x80000) != 0;
        this.ENCODING = (flags & 0x100000) != 0;
        this.LOCAL_CHANGED = (flags & 0x200000) != 0;
        this.MARKERS = (flags & 0x20000) != 0;
        this.MOVED_FROM = (flags & 0x1000) != 0;
        this.MOVED_TO = (flags & 0x2000) != 0;
        this.NO_CHANGE = false;
        this.OPEN = (flags & 0x4000) != 0;
        this.REMOVED = (flags & 2) != 0;
        this.REMOVED_PHANTOM = (flags & 0x10) != 0;
        this.REPLACED = (flags & 0x40000) != 0;
        this.SYNC = (flags & 0x10000) != 0;
        this.TYPE = (flags & 0x8000) != 0;
        this.ZERO = flags == 0;
    }

    public String toString() {
        return (String.valueOf(this.ADDED ? " ADDED" : "") + (this.ADDED_PHANTOM ? " ADDED_PHANTOM" : "") + (this.CHANGED ? " CHANGED" : "") + (this.CONTENT ? " CONTENT" : "") + (this.COPIED_FROM ? " COPIED_FROM" : "") + (this.DESCRIPTION ? " DESCRIPTION" : "") + (this.ENCODING ? " ENCODING" : "") + (this.LOCAL_CHANGED ? " LOCAL_CHANGED" : "") + (this.MARKERS ? " MARKERS" : "") + (this.MOVED_FROM ? " MOVED_FROM" : "") + (this.MOVED_TO ? " MOVED_TO" : "") + (this.NO_CHANGE ? " NO_CHANGE" : "") + (this.OPEN ? " OPEN" : "") + (this.REMOVED ? " REMOVED" : "") + (this.REMOVED_PHANTOM ? " REMOVED_PHANTOM" : "") + (this.REPLACED ? " REPLACED" : "") + (this.SYNC ? " SYNC" : "") + (this.TYPE ? " TYPE" : "") + (this.ZERO ? " ZERO" : "")).substring(1);
    }
}

