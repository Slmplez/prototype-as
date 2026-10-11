/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.presentations.defaultpresentation;

import org.eclipse.ui.internal.preferences.AbstractBooleanListener;
import org.eclipse.ui.internal.preferences.IDynamicPropertyMap;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultTabFolder;

public final class DefaultMultiTabListener
extends AbstractBooleanListener {
    private DefaultTabFolder folder;

    public DefaultMultiTabListener(IDynamicPropertyMap map, String propertyId, DefaultTabFolder folder) {
        this.folder = folder;
        this.attach(map, propertyId, true);
    }

    protected void handleValue(boolean b) {
        this.folder.setSingleTab(!b);
    }
}

