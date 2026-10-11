/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.keys.model;

import org.eclipse.ui.internal.keys.model.KeyController;
import org.eclipse.ui.internal.keys.model.ModelElement;

public class CommonModel
extends ModelElement {
    public static final String PROP_SELECTED_ELEMENT = "selectedElement";
    private ModelElement selectedElement;

    public CommonModel(KeyController kc) {
        super(kc);
    }

    public ModelElement getSelectedElement() {
        return this.selectedElement;
    }

    public void setSelectedElement(ModelElement selectedContext) {
        ModelElement old = this.selectedElement;
        this.selectedElement = selectedContext;
        this.controller.firePropertyChange(this, PROP_SELECTED_ELEMENT, old, selectedContext);
    }
}

