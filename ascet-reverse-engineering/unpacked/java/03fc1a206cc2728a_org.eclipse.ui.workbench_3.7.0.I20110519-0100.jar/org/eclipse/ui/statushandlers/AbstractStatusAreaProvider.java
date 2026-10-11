/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.dialogs.ErrorSupportProvider
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.statushandlers;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.dialogs.ErrorSupportProvider;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.statushandlers.StatusAdapter;

public abstract class AbstractStatusAreaProvider
extends ErrorSupportProvider {
    public abstract Control createSupportArea(Composite var1, StatusAdapter var2);

    public final Control createSupportArea(Composite parent, IStatus status) {
        return this.createSupportArea(parent, new StatusAdapter(status));
    }

    public boolean validFor(StatusAdapter statusAdapter) {
        return true;
    }

    public final boolean validFor(IStatus status) {
        return this.validFor(new StatusAdapter(status));
    }
}

