/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.StackLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.ProgressBar
 */
package org.eclipse.jface.dialogs;

import org.eclipse.swt.custom.StackLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.ProgressBar;

public class ProgressIndicator
extends Composite {
    private static final int PROGRESS_MAX = 1000;
    private boolean animated = true;
    private StackLayout layout;
    private ProgressBar determinateProgressBar;
    private ProgressBar indeterminateProgressBar;
    private double totalWork;
    private double sumWorked;

    public ProgressIndicator(Composite parent) {
        this(parent, 0);
    }

    public ProgressIndicator(Composite parent, int style) {
        super(parent, 0);
        if ((style & 0x200) == 0) {
            style |= 0x100;
        }
        this.determinateProgressBar = new ProgressBar((Composite)this, style);
        this.indeterminateProgressBar = new ProgressBar((Composite)this, style | 2);
        this.layout = new StackLayout();
        this.setLayout((Layout)this.layout);
    }

    public void beginAnimatedTask() {
        this.done();
        this.layout.topControl = this.indeterminateProgressBar;
        this.layout();
        this.animated = true;
    }

    public void beginTask(int max) {
        this.done();
        this.totalWork = max;
        this.sumWorked = 0.0;
        this.determinateProgressBar.setMinimum(0);
        this.determinateProgressBar.setMaximum(1000);
        this.determinateProgressBar.setSelection(0);
        this.layout.topControl = this.determinateProgressBar;
        this.layout();
        this.animated = false;
    }

    public void done() {
        if (!this.animated) {
            this.determinateProgressBar.setMinimum(0);
            this.determinateProgressBar.setMaximum(0);
            this.determinateProgressBar.setSelection(0);
        }
        this.layout.topControl = null;
        this.layout();
    }

    public void sendRemainingWork() {
        this.worked(this.totalWork - this.sumWorked);
    }

    public void worked(double work) {
        if (work == 0.0 || this.animated) {
            return;
        }
        this.sumWorked += work;
        if (this.sumWorked > this.totalWork) {
            this.sumWorked = this.totalWork;
        }
        if (this.sumWorked < 0.0) {
            this.sumWorked = 0.0;
        }
        int value = (int)(this.sumWorked / this.totalWork * 1000.0);
        if (this.determinateProgressBar.getSelection() < value) {
            this.determinateProgressBar.setSelection(value);
        }
    }

    public void showError() {
        this.determinateProgressBar.setState(1);
        this.indeterminateProgressBar.setState(1);
    }

    public void showPaused() {
        this.determinateProgressBar.setState(4);
        this.indeterminateProgressBar.setState(4);
    }

    public void showNormal() {
        this.determinateProgressBar.setState(0);
        this.indeterminateProgressBar.setState(0);
    }
}

