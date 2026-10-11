/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package org.eclipse.ui.texteditor.rulers;

import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.internal.texteditor.rulers.StringSetSerializer;
import org.eclipse.ui.texteditor.rulers.RulerColumnDescriptor;

public final class RulerColumnPreferenceAdapter {
    private final IPreferenceStore fStore;
    private final String fKey;

    public RulerColumnPreferenceAdapter(IPreferenceStore store, String key) {
        Assert.isLegal((store != null ? 1 : 0) != 0);
        Assert.isLegal((key != null ? 1 : 0) != 0);
        this.fStore = store;
        this.fKey = key;
    }

    public boolean isEnabled(RulerColumnDescriptor descriptor) {
        Assert.isLegal((descriptor != null ? 1 : 0) != 0);
        String preference = this.fStore.getString(this.fKey);
        return StringSetSerializer.deserialize(preference).contains(descriptor.getId()) ^ descriptor.getDefaultEnablement();
    }

    public void setEnabled(RulerColumnDescriptor descriptor, boolean enabled) {
        Assert.isLegal((descriptor != null ? 1 : 0) != 0);
        String id = descriptor.getId();
        String preference = this.fStore.getString(this.fKey);
        Set marked = StringSetSerializer.deserialize(preference);
        boolean shouldMark = enabled ^ descriptor.getDefaultEnablement();
        boolean isMarked = marked.contains(id);
        if (isMarked != shouldMark) {
            if (shouldMark) {
                marked.add(id);
            } else {
                marked.remove(id);
            }
            this.fStore.setValue(this.fKey, StringSetSerializer.serialize(marked));
        }
    }

    public void toggle(RulerColumnDescriptor descriptor) {
        Assert.isLegal((descriptor != null ? 1 : 0) != 0);
        this.setEnabled(descriptor, !this.isEnabled(descriptor));
    }
}

