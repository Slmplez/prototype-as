/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.INavigationLocation;

public interface INavigationHistory {
    public void markLocation(IEditorPart var1);

    public INavigationLocation getCurrentLocation();

    public INavigationLocation[] getLocations();
}

