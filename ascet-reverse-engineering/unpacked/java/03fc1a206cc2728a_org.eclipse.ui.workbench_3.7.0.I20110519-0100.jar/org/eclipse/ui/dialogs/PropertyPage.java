/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.preference.PreferencePage
 */
package org.eclipse.ui.dialogs;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.ui.IWorkbenchPropertyPage;

public abstract class PropertyPage
extends PreferencePage
implements IWorkbenchPropertyPage {
    private IAdaptable element;

    public IAdaptable getElement() {
        return this.element;
    }

    public void setElement(IAdaptable element) {
        this.element = element;
    }
}

