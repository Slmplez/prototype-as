/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import java.util.ArrayList;
import org.eclipse.pde.core.plugin.ModelEntry;

public class PluginModelDelta {
    public static final int ADDED = 1;
    public static final int REMOVED = 2;
    public static final int CHANGED = 4;
    private ArrayList added;
    private ArrayList removed;
    private ArrayList changed;
    private int kind = 0;

    public int getKind() {
        return this.kind;
    }

    public ModelEntry[] getAddedEntries() {
        return this.getEntries(this.added);
    }

    public ModelEntry[] getRemovedEntries() {
        return this.getEntries(this.removed);
    }

    public ModelEntry[] getChangedEntries() {
        return this.getEntries(this.changed);
    }

    private ModelEntry[] getEntries(ArrayList list) {
        if (list == null) {
            return new ModelEntry[0];
        }
        return list.toArray(new ModelEntry[list.size()]);
    }

    void addEntry(ModelEntry entry, int type) {
        switch (type) {
            case 1: {
                this.added = this.addEntry(this.added, entry);
                break;
            }
            case 2: {
                this.removed = this.addEntry(this.removed, entry);
                break;
            }
            case 4: {
                this.changed = this.addEntry(this.changed, entry);
            }
        }
        this.kind |= type;
    }

    private ArrayList addEntry(ArrayList list, ModelEntry entry) {
        if (list == null) {
            list = new ArrayList<ModelEntry>();
        }
        list.add(entry);
        return list;
    }
}

