/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.presentations.SystemMenuStateChange;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class SystemMenuRestore
extends SystemMenuStateChange {
    public SystemMenuRestore(IStackPresentationSite site) {
        super(site, WorkbenchMessages.PartPane_restore, 2);
    }
}

