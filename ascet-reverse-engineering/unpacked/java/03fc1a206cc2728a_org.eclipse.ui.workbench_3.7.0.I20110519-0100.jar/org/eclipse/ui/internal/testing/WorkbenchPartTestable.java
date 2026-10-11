/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.testing;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.testing.IWorkbenchPartTestable;

public class WorkbenchPartTestable
implements IWorkbenchPartTestable {
    private Composite composite;

    public WorkbenchPartTestable(PartSite partSite) {
        Composite paneComposite = (Composite)partSite.getPane().getControl();
        Control[] paneChildren = paneComposite.getChildren();
        this.composite = (Composite)paneChildren[0];
    }

    public Composite getControl() {
        return this.composite;
    }
}

