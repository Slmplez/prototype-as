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
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.ScrollBar
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.internal.text.DelayedInputChangeListener;
import org.eclipse.jface.internal.text.InformationControlReplacer;
import org.eclipse.jface.text.IDelayedInputChangeProvider;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlExtension5;
import org.eclipse.jface.text.contentassist.AdditionalInfoController;
import org.eclipse.jface.text.contentassist.ContentAssistant;
import org.eclipse.jface.text.contentassist.Helper;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Widget;

class PopupCloser
extends ShellAdapter
implements FocusListener,
SelectionListener,
Listener {
    private ContentAssistant fContentAssistant;
    private Table fTable;
    private ScrollBar fScrollbar;
    private boolean fScrollbarClicked = false;
    private Shell fShell;
    private Display fDisplay;
    private AdditionalInfoController fAdditionalInfoController;

    PopupCloser() {
    }

    public void install(ContentAssistant contentAssistant, Table table) {
        this.install(contentAssistant, table, null);
    }

    public void install(ContentAssistant contentAssistant, Table table, AdditionalInfoController additionalInfoController) {
        this.fContentAssistant = contentAssistant;
        this.fTable = table;
        this.fAdditionalInfoController = additionalInfoController;
        if (Helper.okToUse((Widget)this.fTable)) {
            this.fShell = this.fTable.getShell();
            this.fDisplay = this.fShell.getDisplay();
            this.fShell.addShellListener((ShellListener)this);
            this.fTable.addFocusListener((FocusListener)this);
            this.fScrollbar = this.fTable.getVerticalBar();
            if (this.fScrollbar != null) {
                this.fScrollbar.addSelectionListener((SelectionListener)this);
            }
            this.fDisplay.addFilter(26, (Listener)this);
            this.fDisplay.addFilter(37, (Listener)this);
            this.fDisplay.addFilter(27, (Listener)this);
            this.fDisplay.addFilter(4, (Listener)this);
        }
    }

    public void uninstall() {
        this.fContentAssistant = null;
        if (Helper.okToUse((Widget)this.fShell)) {
            this.fShell.removeShellListener((ShellListener)this);
        }
        this.fShell = null;
        if (Helper.okToUse((Widget)this.fScrollbar)) {
            this.fScrollbar.removeSelectionListener((SelectionListener)this);
        }
        if (Helper.okToUse((Widget)this.fTable)) {
            this.fTable.removeFocusListener((FocusListener)this);
        }
        if (this.fDisplay != null && !this.fDisplay.isDisposed()) {
            this.fDisplay.removeFilter(26, (Listener)this);
            this.fDisplay.removeFilter(37, (Listener)this);
            this.fDisplay.removeFilter(27, (Listener)this);
            this.fDisplay.removeFilter(4, (Listener)this);
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
                if (Helper.okToUse((Widget)PopupCloser.this.fTable) && !PopupCloser.this.fTable.isFocusControl() && !PopupCloser.this.fScrollbarClicked && PopupCloser.this.fContentAssistant != null) {
                    PopupCloser.this.fContentAssistant.popupFocusLost(e);
                }
            }
        });
    }

    public void shellDeactivated(ShellEvent e) {
        if (this.fContentAssistant != null && this.fDisplay != null) {
            this.fDisplay.asyncExec(new Runnable(){

                public void run() {
                    if (PopupCloser.this.fContentAssistant != null && !PopupCloser.this.fContentAssistant.hasProposalPopupFocus()) {
                        PopupCloser.this.fContentAssistant.hide();
                    }
                }
            });
        }
    }

    public void shellClosed(ShellEvent e) {
        if (this.fContentAssistant != null) {
            this.fContentAssistant.hide();
        }
    }

    public void handleEvent(Event event) {
        switch (event.type) {
            case 26: 
            case 37: {
                if (this.fAdditionalInfoController == null) {
                    return;
                }
                if (event.widget == this.fShell || event.widget == this.fTable || event.widget == this.fScrollbar) {
                    return;
                }
                if (this.fAdditionalInfoController.getInternalAccessor().getInformationControlReplacer() == null) {
                    this.fAdditionalInfoController.hideInformationControl();
                    break;
                }
                if (this.fAdditionalInfoController.getInternalAccessor().isReplaceInProgress()) break;
                IInformationControl infoControl = this.fAdditionalInfoController.getCurrentInformationControl2();
                if (event.widget instanceof Control && infoControl instanceof IInformationControlExtension5) {
                    IInformationControlExtension5 iControl5 = (IInformationControlExtension5)((Object)infoControl);
                    Control control = (Control)event.widget;
                    if (!iControl5.containsControl(control)) {
                        this.fAdditionalInfoController.hideInformationControl();
                        break;
                    }
                    if (event.type != 37) break;
                    this.fAdditionalInfoController.getInternalAccessor().replaceInformationControl(false);
                    break;
                }
                if (infoControl == null || !infoControl.isFocusControl()) break;
                this.fAdditionalInfoController.getInternalAccessor().replaceInformationControl(true);
                break;
            }
            case 4: {
                IInformationControlExtension5 iControl5;
                if (this.fAdditionalInfoController == null || this.fAdditionalInfoController.getInternalAccessor().isReplaceInProgress() || !(event.widget instanceof Control)) break;
                Control control = (Control)event.widget;
                IInformationControl infoControl = this.fAdditionalInfoController.getCurrentInformationControl2();
                if (!(infoControl instanceof IInformationControlExtension5) || !(iControl5 = (IInformationControlExtension5)((Object)infoControl)).containsControl(control)) break;
                if (infoControl instanceof IDelayedInputChangeProvider) {
                    final IDelayedInputChangeProvider delayedICP = (IDelayedInputChangeProvider)((Object)infoControl);
                    DelayedInputChangeListener inputChangeListener = new DelayedInputChangeListener(delayedICP, this.fAdditionalInfoController.getInternalAccessor().getInformationControlReplacer());
                    delayedICP.setDelayedInputChangeListener(inputChangeListener);
                    control.getShell().getDisplay().timerExec(1000, new Runnable(){

                        public void run() {
                            delayedICP.setDelayedInputChangeListener(null);
                        }
                    });
                }
                control.getShell().getDisplay().asyncExec(new Runnable(){

                    public void run() {
                        PopupCloser.this.fAdditionalInfoController.getInternalAccessor().replaceInformationControl(true);
                    }
                });
                break;
            }
            case 27: {
                Control control;
                IInformationControlExtension5 iControl5;
                InformationControlReplacer replacer;
                if (this.fAdditionalInfoController == null || (replacer = this.fAdditionalInfoController.getInternalAccessor().getInformationControlReplacer()) == null || this.fContentAssistant == null) break;
                IInformationControl iControl = replacer.getCurrentInformationControl2();
                if (!(event.widget instanceof Control) || !(iControl instanceof IInformationControlExtension5) || !(iControl5 = (IInformationControlExtension5)((Object)iControl)).containsControl(control = (Control)event.widget)) break;
                control.getDisplay().asyncExec(new Runnable(){

                    public void run() {
                        if (PopupCloser.this.fContentAssistant != null && !PopupCloser.this.fContentAssistant.hasProposalPopupFocus()) {
                            PopupCloser.this.fContentAssistant.hide();
                        }
                    }
                });
            }
        }
    }
}

