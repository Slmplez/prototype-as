/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.TabFolder
 */
package org.eclipse.ui.part;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.TabFolder;
import org.eclipse.ui.part.EditorPart;
import org.eclipse.ui.part.PageBook;

public abstract class MultiPageEditor
extends EditorPart {
    private List syncVector;
    private TabFolder tabFolder;

    protected void addSyncroPageBook(PageBook pageBook) {
        if (this.syncVector == null) {
            this.syncVector = new ArrayList(1);
        }
        this.syncVector.add(pageBook);
        this.syncPageBook(pageBook);
    }

    public void createPartControl(Composite parent) {
        this.tabFolder = new TabFolder(parent, 0);
        this.tabFolder.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                MultiPageEditor.this.sync();
            }
        });
    }

    protected TabFolder getFolder() {
        return this.tabFolder;
    }

    protected void onPageChange() {
        if (this.syncVector != null) {
            Iterator itr = this.syncVector.iterator();
            while (itr.hasNext()) {
                PageBook pageBook = (PageBook)((Object)itr.next());
                this.syncPageBook(pageBook);
            }
        }
    }

    protected void removeSyncroPageBook(PageBook pageBook) {
        if (this.syncVector != null) {
            this.syncVector.remove((Object)pageBook);
        }
        pageBook.dispose();
    }

    protected void sync() {
        if (this.syncVector != null) {
            Iterator itr = this.syncVector.iterator();
            while (itr.hasNext()) {
                PageBook pageBook = (PageBook)((Object)itr.next());
                this.syncPageBook(pageBook);
            }
        }
    }

    protected void syncPageBook(PageBook pageBook) {
        Control[] children;
        int size;
        int pos = this.tabFolder.getSelectionIndex();
        if (pos < (size = (children = pageBook.getChildren()).length)) {
            pageBook.showPage(children[pos]);
        }
    }
}

