/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.ShellAdapter
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.ScrollBar
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.text.link.contentassist;

import org.eclipse.jface.internal.text.link.contentassist.ContentAssistant2;
import org.eclipse.jface.internal.text.link.contentassist.Helper2;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Widget;

class PopupCloser2
extends ShellAdapter
implements FocusListener,
SelectionListener {
    private ContentAssistant2 fContentAssistant;
    private Table fTable;
    private ScrollBar fScrollbar;
    private boolean fScrollbarClicked = false;
    private Shell fShell;

    PopupCloser2() {
    }

    public void install(ContentAssistant2 contentAssistant, Table table) {
        this.fContentAssistant = contentAssistant;
        this.fTable = table;
        if (Helper2.okToUse((Widget)this.fTable)) {
            Shell shell = this.fTable.getShell();
            if (Helper2.okToUse((Widget)shell)) {
                this.fShell = shell;
                this.fShell.addShellListener((ShellListener)this);
            }
            this.fTable.addFocusListener((FocusListener)this);
            this.fScrollbar = this.fTable.getVerticalBar();
            if (this.fScrollbar != null) {
                this.fScrollbar.addSelectionListener((SelectionListener)this);
            }
        }
    }

    public void uninstall() {
        this.fContentAssistant = null;
        if (Helper2.okToUse((Widget)this.fShell)) {
            this.fShell.removeShellListener((ShellListener)this);
        }
        this.fShell = null;
        if (Helper2.okToUse((Widget)this.fScrollbar)) {
            this.fScrollbar.removeSelectionListener((SelectionListener)this);
        }
        if (Helper2.okToUse((Widget)this.fTable)) {
            this.fTable.removeFocusListener((FocusListener)this);
        }
    }

    public void widgetSelected(SelectionEvent e) {
        this.fScrollbarClicked = true;
    }

    public void widgetDefaultSelected(SelectionEvent e) {
        this.fScrollbarClicked = true;
    }

    public void focusGained(FocusEvent e) {
    }

    public void focusLost(final FocusEvent e) {
        this.fScrollbarClicked = false;
        Display d = this.fTable.getDisplay();
        d.asyncExec(new Runnable(){

            public void run() {
                if (Helper2.okToUse((Widget)PopupCloser2.this.fTable) && !PopupCloser2.this.fTable.isFocusControl() && !PopupCloser2.this.fScrollbarClicked && PopupCloser2.this.fContentAssistant != null) {
                    PopupCloser2.this.fContentAssistant.popupFocusLost(e);
                }
            }
        });
    }

    public void shellDeactivated(ShellEvent e) {
        if (this.fContentAssistant != null) {
            this.fContentAssistant.hide();
        }
    }

    public void shellClosed(ShellEvent e) {
        if (this.fContentAssistant != null) {
            this.fContentAssistant.hide();
        }
    }
}

