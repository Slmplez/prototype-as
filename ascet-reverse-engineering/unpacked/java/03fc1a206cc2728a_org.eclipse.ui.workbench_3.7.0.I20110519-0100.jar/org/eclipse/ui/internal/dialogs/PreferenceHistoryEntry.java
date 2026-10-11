/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.Assert;

final class PreferenceHistoryEntry {
    private String id;
    private String label;
    private Object argument;

    public PreferenceHistoryEntry(String id, String label, Object argument) {
        Assert.isLegal((id != null ? 1 : 0) != 0);
        Assert.isLegal((label != null ? 1 : 0) != 0);
        this.id = id;
        this.label = label;
        this.argument = argument;
    }

    public String getId() {
        return this.id;
    }

    public Object getArgument() {
        return this.argument;
    }

    public String getLabel() {
        return this.label;
    }

    public String toString() {
        if (this.argument == null) {
            return this.id;
        }
        return String.valueOf(this.id) + "(" + this.argument + ")";
    }

    public boolean equals(Object obj) {
        if (obj instanceof PreferenceHistoryEntry) {
            PreferenceHistoryEntry other = (PreferenceHistoryEntry)obj;
            return this.id.equals(other.id) && (this.argument == null && other.argument == null || this.argument.equals(other.argument));
        }
        return super.equals(obj);
    }

    public int hashCode() {
        int argHash = this.argument == null ? 0 : this.argument.hashCode() & 0xFFFF;
        return this.id.hashCode() << 16 | argHash;
    }
}

