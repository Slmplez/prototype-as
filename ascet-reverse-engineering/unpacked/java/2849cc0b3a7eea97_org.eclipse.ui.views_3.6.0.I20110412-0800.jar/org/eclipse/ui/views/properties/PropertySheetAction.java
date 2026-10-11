/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.action.Action;
import org.eclipse.ui.views.properties.PropertySheetViewer;

abstract class PropertySheetAction
extends Action {
    protected PropertySheetViewer viewer;
    private String id;

    protected PropertySheetAction(PropertySheetViewer viewer, String name) {
        super(name);
        this.id = name;
        this.viewer = viewer;
    }

    public String getId() {
        return this.id;
    }

    public PropertySheetViewer getPropertySheet() {
        return this.viewer;
    }

    public void setId(String newId) {
        this.id = newId;
    }
}

