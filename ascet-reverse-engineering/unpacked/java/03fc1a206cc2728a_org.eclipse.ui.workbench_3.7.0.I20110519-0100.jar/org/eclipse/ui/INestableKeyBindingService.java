/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IKeyBindingService;
import org.eclipse.ui.IWorkbenchSite;

public interface INestableKeyBindingService
extends IKeyBindingService {
    public boolean activateKeyBindingService(IWorkbenchSite var1);

    public IKeyBindingService getKeyBindingService(IWorkbenchSite var1);

    public boolean removeKeyBindingService(IWorkbenchSite var1);
}

