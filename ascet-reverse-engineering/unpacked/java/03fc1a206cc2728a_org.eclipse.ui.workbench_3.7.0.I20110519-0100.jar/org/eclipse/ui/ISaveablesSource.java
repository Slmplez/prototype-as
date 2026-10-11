/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.Saveable;

public interface ISaveablesSource {
    public Saveable[] getSaveables();

    public Saveable[] getActiveSaveables();
}

