/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.commands;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.ui.commands.IElementReference;
import org.eclipse.ui.menus.UIElement;

public class ElementReference
implements IElementReference {
    private String commandId;
    private UIElement element;
    private HashMap parameters;

    public ElementReference(String id, UIElement adapt, Map parms) {
        this.commandId = id;
        this.element = adapt;
        this.parameters = parms == null ? new HashMap() : new HashMap(parms);
    }

    public UIElement getElement() {
        return this.element;
    }

    public String getCommandId() {
        return this.commandId;
    }

    public Map getParameters() {
        return this.parameters;
    }
}

