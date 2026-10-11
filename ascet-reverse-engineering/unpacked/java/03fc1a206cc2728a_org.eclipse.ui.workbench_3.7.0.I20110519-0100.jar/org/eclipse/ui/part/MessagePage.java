/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.part;

import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.part.Page;

public class MessagePage
extends Page {
    private Composite pgComp;
    private Label msgLabel;
    private String message = "";

    public void createControl(Composite parent) {
        this.pgComp = new Composite(parent, 0);
        this.pgComp.setLayout((Layout)new FillLayout());
        this.msgLabel = new Label(this.pgComp, 16576);
        this.msgLabel.setText(this.message);
    }

    public Control getControl() {
        return this.pgComp;
    }

    public void setFocus() {
        this.pgComp.setFocus();
    }

    public void setMessage(String message) {
        this.message = message;
        if (this.msgLabel != null) {
            this.msgLabel.setText(message);
        }
    }
}

