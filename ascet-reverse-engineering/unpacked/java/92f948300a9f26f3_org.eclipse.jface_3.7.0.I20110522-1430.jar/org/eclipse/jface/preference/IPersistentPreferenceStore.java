/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.preference;

import java.io.IOException;
import org.eclipse.jface.preference.IPreferenceStore;

public interface IPersistentPreferenceStore
extends IPreferenceStore {
    public void save() throws IOException;
}

