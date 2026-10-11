/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.internal.AbstractPartSelectionTracker;
import org.eclipse.ui.internal.AbstractSelectionService;
import org.eclipse.ui.internal.PagePartSelectionTracker;

class PageSelectionService
extends AbstractSelectionService {
    private IWorkbenchPage page;

    public PageSelectionService(IWorkbenchPage page) {
        this.setPage(page);
    }

    private void setPage(IWorkbenchPage page) {
        this.page = page;
    }

    protected IWorkbenchPage getPage() {
        return this.page;
    }

    protected AbstractPartSelectionTracker createPartTracker(String partId) {
        return new PagePartSelectionTracker(this.getPage(), partId);
    }
}

