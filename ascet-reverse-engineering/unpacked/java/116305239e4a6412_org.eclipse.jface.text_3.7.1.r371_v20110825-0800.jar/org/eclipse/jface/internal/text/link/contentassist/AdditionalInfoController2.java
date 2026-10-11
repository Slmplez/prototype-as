/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.jface.internal.text.link.contentassist;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.text.link.contentassist.ContentAssistMessages;
import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension3;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;

class AdditionalInfoController2
extends AbstractInformationControlManager
implements Runnable {
    private Table fProposalTable;
    private Thread fThread;
    private boolean fIsReset = false;
    private final Object fMutex = new Object();
    private final Object fThreadAccess = new Object();
    private Object fStartSignal;
    private SelectionListener fSelectionListener = new TableSelectionListener();
    private int fDelay;

    AdditionalInfoController2(IInformationControlCreator creator, int delay) {
        super(creator);
        this.fDelay = delay;
        this.setAnchor(ANCHOR_RIGHT);
        this.setFallbackAnchors(new AbstractInformationControlManager.Anchor[]{ANCHOR_RIGHT, ANCHOR_LEFT, ANCHOR_BOTTOM});
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void install(Control control) {
        if (this.fProposalTable == control) {
            return;
        }
        super.install(control);
        Assert.isTrue((boolean)(control instanceof Table));
        this.fProposalTable = (Table)control;
        this.fProposalTable.addSelectionListener(this.fSelectionListener);
        Object object = this.fThreadAccess;
        synchronized (object) {
            if (this.fThread != null) {
                this.fThread.interrupt();
            }
            this.fThread = new Thread((Runnable)this, ContentAssistMessages.getString("InfoPopup.info_delay_timer_name"));
            Object object2 = this.fStartSignal = new Object();
            synchronized (object2) {
                this.fThread.start();
                try {
                    this.fStartSignal.wait();
                }
                catch (InterruptedException interruptedException) {}
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void disposeInformationControl() {
        Object object = this.fThreadAccess;
        synchronized (object) {
            if (this.fThread != null) {
                this.fThread.interrupt();
                this.fThread = null;
            }
        }
        if (this.fProposalTable != null && !this.fProposalTable.isDisposed()) {
            this.fProposalTable.removeSelectionListener(this.fSelectionListener);
            this.fProposalTable = null;
        }
        super.disposeInformationControl();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void run() {
        try {
            while (true) {
                Object object = this.fMutex;
                synchronized (object) {
                    if (this.fStartSignal != null) {
                        Object object2 = this.fStartSignal;
                        synchronized (object2) {
                            this.fStartSignal.notifyAll();
                            this.fStartSignal = null;
                        }
                    }
                    this.fMutex.wait();
                    do {
                        this.fIsReset = false;
                        this.fMutex.wait(this.fDelay);
                    } while (this.fIsReset);
                }
                if (this.fProposalTable == null || this.fProposalTable.isDisposed()) continue;
                this.fProposalTable.getDisplay().asyncExec(new Runnable(){

                    public void run() {
                        if (!AdditionalInfoController2.this.fIsReset) {
                            AdditionalInfoController2.this.showInformation();
                        }
                    }
                });
            }
        }
        catch (InterruptedException interruptedException) {
            Object object = this.fThreadAccess;
            synchronized (object) {
                if (Thread.currentThread() == this.fThread) {
                    this.fThread = null;
                }
            }
            return;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void handleTableSelectionChanged() {
        if (this.fProposalTable != null && !this.fProposalTable.isDisposed() && this.fProposalTable.isVisible()) {
            Object object = this.fMutex;
            synchronized (object) {
                this.fIsReset = true;
                this.fMutex.notifyAll();
            }
        }
    }

    protected void computeInformation() {
        if (this.fProposalTable == null || this.fProposalTable.isDisposed()) {
            return;
        }
        TableItem[] selection = this.fProposalTable.getSelection();
        if (selection != null && selection.length > 0) {
            TableItem item = selection[0];
            String information = null;
            Object d = item.getData();
            if (d instanceof ICompletionProposal) {
                ICompletionProposal p = (ICompletionProposal)d;
                information = p.getAdditionalProposalInfo();
            }
            if (d instanceof ICompletionProposalExtension3) {
                this.setCustomInformationControlCreator(((ICompletionProposalExtension3)d).getInformationControlCreator());
            } else {
                this.setCustomInformationControlCreator(null);
            }
            this.setMargins(4, -1);
            Rectangle area = this.fProposalTable.getBounds();
            area.x = 0;
            area.y = 0;
            this.setInformation(information, area);
        }
    }

    protected Point computeSizeConstraints(Control subjectControl, IInformationControl informationControl) {
        Point sizeConstraint = super.computeSizeConstraints(subjectControl, informationControl);
        Point size = subjectControl.getSize();
        if (sizeConstraint.x < size.x) {
            sizeConstraint.x = size.x;
        }
        if (sizeConstraint.y < size.y) {
            sizeConstraint.y = size.y;
        }
        return sizeConstraint;
    }

    private class TableSelectionListener
    implements SelectionListener {
        private TableSelectionListener() {
        }

        public void widgetSelected(SelectionEvent e) {
            AdditionalInfoController2.this.handleTableSelectionChanged();
        }

        public void widgetDefaultSelected(SelectionEvent e) {
        }
    }
}

