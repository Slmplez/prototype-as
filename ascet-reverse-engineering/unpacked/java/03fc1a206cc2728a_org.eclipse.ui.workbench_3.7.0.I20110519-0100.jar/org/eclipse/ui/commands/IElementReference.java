/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import java.util.Map;
import org.eclipse.ui.menus.UIElement;

public interface IElementReference {
    public String getCommandId();

    public UIElement getElement();

    public Map getParameters();
}

