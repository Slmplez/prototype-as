/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IWidgetTokenKeeper;

public interface IWidgetTokenOwner {
    public boolean requestWidgetToken(IWidgetTokenKeeper var1);

    public void releaseWidgetToken(IWidgetTokenKeeper var1);
}

