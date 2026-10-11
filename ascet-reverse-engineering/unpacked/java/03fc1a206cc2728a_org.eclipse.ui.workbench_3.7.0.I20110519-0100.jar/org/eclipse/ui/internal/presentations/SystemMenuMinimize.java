/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.presentations.SystemMenuStateChange;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class SystemMenuMinimize
extends SystemMenuStateChange {
    public SystemMenuMinimize(IStackPresentationSite site) {
        super(site, WorkbenchMessages.ViewPane_minimizeView, 0);
    }
}

