/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.DragSource
 *  org.eclipse.swt.dnd.DragSourceEvent
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Decorations
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.List
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal.statushandlers;

import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.statushandlers.AbstractStatusAreaProvider;
import org.eclipse.ui.statushandlers.StatusAdapter;

public class StackTraceSupportArea
extends AbstractStatusAreaProvider {
    private List list;

    public Control createSupportArea(Composite parent, StatusAdapter statusAdapter) {
        Label label = new Label(parent, 0);
        label.setText(WorkbenchMessages.StackTraceSupportArea_Title);
        this.list = new List(parent, 770);
        GridData gd = new GridData(1808);
        gd.grabExcessHorizontalSpace = true;
        gd.grabExcessVerticalSpace = true;
        gd.widthHint = 250;
        this.list.setLayoutData((Object)gd);
        this.list.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                StackTraceSupportArea.this.list.selectAll();
                super.widgetSelected(e);
            }
        });
        this.list.removeAll();
        this.populateList(statusAdapter.getStatus().getException());
        this.createDNDSource();
        this.createCopyAction(parent);
        return parent;
    }

    private void createDNDSource() {
        DragSource ds = new DragSource((Control)this.list, 1);
        ds.setTransfer(new Transfer[]{TextTransfer.getInstance()});
        ds.addDragListener(new DragSourceListener(){

            public void dragFinished(DragSourceEvent event) {
            }

            public void dragSetData(DragSourceEvent event) {
                if (TextTransfer.getInstance().isSupportedType(event.dataType)) {
                    event.data = StackTraceSupportArea.this.prepareCopyString();
                }
            }

            public void dragStart(DragSourceEvent event) {
                StackTraceSupportArea.this.list.selectAll();
            }
        });
    }

    private void createCopyAction(final Composite parent) {
        Menu menu = new Menu((Decorations)parent.getShell(), 8);
        MenuItem copyAction = new MenuItem(menu, 8);
        copyAction.setText("&Copy");
        copyAction.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                Clipboard clipboard = null;
                try {
                    clipboard = new Clipboard(parent.getDisplay());
                    clipboard.setContents(new Object[]{StackTraceSupportArea.this.prepareCopyString()}, new Transfer[]{TextTransfer.getInstance()});
                }
                finally {
                    if (clipboard != null) {
                        clipboard.dispose();
                    }
                }
                super.widgetSelected(e);
            }
        });
        this.list.setMenu(menu);
    }

    private String prepareCopyString() {
        if (this.list == null || this.list.isDisposed()) {
            return "";
        }
        StringBuffer sb = new StringBuffer();
        String newLine = System.getProperty("line.separator");
        int i = 0;
        while (i < this.list.getItemCount()) {
            sb.append(this.list.getItem(i));
            sb.append(newLine);
            ++i;
        }
        return sb.toString();
    }

    private void populateList(Throwable t) {
        if (t == null) {
            this.list.add(WorkbenchMessages.StackTraceSupportArea_NoStackTrace);
            return;
        }
        this.list.add(t.toString());
        StackTraceElement[] ste = t.getStackTrace();
        int i = 0;
        while (i < ste.length) {
            this.list.add(ste[i].toString());
            ++i;
        }
        if (t.getCause() != null) {
            this.list.add(WorkbenchMessages.StackTraceSupportArea_CausedBy);
            this.populateList(t.getCause());
        }
    }

    public List getList() {
        return this.list;
    }

    public boolean validFor(StatusAdapter statusAdapter) {
        return statusAdapter.getStatus().getException() != null;
    }
}

