/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.dialogs;

import java.util.EventObject;
import org.eclipse.core.runtime.Assert;

public class PageChangingEvent
extends EventObject {
    private static final long serialVersionUID = 1L;
    private Object currentPage;
    private Object targetPage;
    public boolean doit = true;

    public PageChangingEvent(Object source, Object currentPage, Object targetPage) {
        super(source);
        Assert.isNotNull((Object)currentPage);
        Assert.isNotNull((Object)targetPage);
        this.currentPage = currentPage;
        this.targetPage = targetPage;
    }

    public Object getCurrentPage() {
        return this.currentPage;
    }

    public Object getTargetPage() {
        return this.targetPage;
    }
}

