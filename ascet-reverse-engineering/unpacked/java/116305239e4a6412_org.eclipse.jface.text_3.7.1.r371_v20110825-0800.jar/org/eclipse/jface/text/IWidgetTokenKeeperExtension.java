/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IWidgetTokenOwner;

public interface IWidgetTokenKeeperExtension {
    public boolean requestWidgetToken(IWidgetTokenOwner var1, int var2);

    public boolean setFocus(IWidgetTokenOwner var1);
}

