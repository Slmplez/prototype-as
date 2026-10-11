/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.layout.GridLayoutFactory
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.statushandlers;

import java.util.Map;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.internal.statushandlers.DefaultDetailsArea;
import org.eclipse.ui.internal.statushandlers.IStatusDialogConstants;
import org.eclipse.ui.statushandlers.AbstractStatusAreaProvider;
import org.eclipse.ui.statushandlers.StatusAdapter;

public class DetailsAreaManager {
    private Map dialogState;
    private Control control = null;

    public DetailsAreaManager(Map dialogState) {
        this.dialogState = dialogState;
    }

    public void close() {
        if (this.control != null && !this.control.isDisposed()) {
            this.control.dispose();
        }
    }

    public void createDetailsArea(Composite parent, StatusAdapter statusAdapter) {
        Composite container = new Composite(parent, 0);
        container.setLayout((Layout)GridLayoutFactory.fillDefaults().create());
        container.setLayoutData((Object)new GridData(4, 4, true, true));
        this.getProvider().createSupportArea(container, statusAdapter);
        this.control = container;
    }

    public AbstractStatusAreaProvider getProvider() {
        AbstractStatusAreaProvider provider = (AbstractStatusAreaProvider)((Object)this.dialogState.get(IStatusDialogConstants.CUSTOM_DETAILS_PROVIDER));
        if (provider == null) {
            provider = new DefaultDetailsArea(this.dialogState);
        }
        return provider;
    }

    public boolean isOpen() {
        return this.control != null && !this.control.isDisposed();
    }
}

