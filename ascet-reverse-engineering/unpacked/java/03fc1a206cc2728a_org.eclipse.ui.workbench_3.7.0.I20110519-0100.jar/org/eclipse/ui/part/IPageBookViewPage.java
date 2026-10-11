/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.part;

import org.eclipse.ui.PartInitException;
import org.eclipse.ui.part.IPage;
import org.eclipse.ui.part.IPageSite;

public interface IPageBookViewPage
extends IPage {
    public IPageSite getSite();

    public void init(IPageSite var1) throws PartInitException;
}

