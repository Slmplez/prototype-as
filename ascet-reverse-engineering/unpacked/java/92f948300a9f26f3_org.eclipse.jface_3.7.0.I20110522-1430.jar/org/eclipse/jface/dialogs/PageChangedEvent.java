/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.dialogs;

import java.util.EventObject;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.IPageChangeProvider;

public class PageChangedEvent
extends EventObject {
    private static final long serialVersionUID = 3835149545519723574L;
    protected Object selectedPage;

    public PageChangedEvent(IPageChangeProvider source, Object selectedPage) {
        super(source);
        Assert.isNotNull((Object)selectedPage);
        this.selectedPage = selectedPage;
    }

    public Object getSelectedPage() {
        return this.selectedPage;
    }

    public IPageChangeProvider getPageChangeProvider() {
        return (IPageChangeProvider)this.getSource();
    }
}

