/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.DialogPage
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.about;

import org.eclipse.jface.dialogs.DialogPage;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.about.IInstallationPageContainer;

public abstract class InstallationPage
extends DialogPage {
    private IInstallationPageContainer container;

    public void setMessage(String newMessage) {
        super.setMessage(newMessage);
    }

    public void setMessage(String newMessage, int newType) {
        super.setMessage(newMessage, newType);
    }

    public void setPageContainer(IInstallationPageContainer container) {
        this.container = container;
    }

    public void createPageButtons(Composite parent) {
    }

    protected Button createButton(Composite parent, int id, String label) {
        Button button = new Button(parent, 8);
        button.setText(label);
        button.setData((Object)new Integer(id));
        button.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                InstallationPage.this.buttonPressed((Integer)event.widget.getData());
            }
        });
        this.container.registerPageButton(this, button);
        return button;
    }

    protected void buttonPressed(int buttonId) {
    }

    protected IInstallationPageContainer getPageContainer() {
        return this.container;
    }
}

