/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.INavigationLocation;

public interface INavigationLocationProvider {
    public INavigationLocation createEmptyNavigationLocation();

    public INavigationLocation createNavigationLocation();
}

