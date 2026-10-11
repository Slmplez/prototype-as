/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.preference.IPreferenceStore;

public interface IPreferencePageContainer {
    public IPreferenceStore getPreferenceStore();

    public void updateButtons();

    public void updateMessage();

    public void updateTitle();
}

