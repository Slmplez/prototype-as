/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.internal.EditorHistoryItem;

public class EditorHistory {
    public static final int MAX_SIZE = 15;
    private ArrayList fifoList = new ArrayList(15);

    public void add(IEditorInput input, IEditorDescriptor desc) {
        this.add(new EditorHistoryItem(input, desc), 0);
    }

    private void add(EditorHistoryItem newItem, int index) {
        if (newItem.isRestored()) {
            this.remove(newItem.getInput());
        }
        if (this.fifoList.size() == 15) {
            this.fifoList.remove(14);
        }
        this.fifoList.add(index < 15 ? index : 14, newItem);
    }

    public EditorHistoryItem[] getItems() {
        this.refresh();
        EditorHistoryItem[] array = new EditorHistoryItem[this.fifoList.size()];
        this.fifoList.toArray(array);
        return array;
    }

    public void refresh() {
        Iterator iter = this.fifoList.iterator();
        while (iter.hasNext()) {
            IEditorInput input;
            EditorHistoryItem item = (EditorHistoryItem)iter.next();
            if (!item.isRestored() || (input = item.getInput()) == null || input.exists()) continue;
            iter.remove();
        }
    }

    public void remove(EditorHistoryItem item) {
        this.fifoList.remove(item);
    }

    public void remove(IEditorInput input) {
        if (input == null) {
            return;
        }
        Iterator iter = this.fifoList.iterator();
        while (iter.hasNext()) {
            EditorHistoryItem item = (EditorHistoryItem)iter.next();
            if (!item.matches(input)) continue;
            iter.remove();
        }
    }

    public IStatus restoreState(IMemento memento) {
        IMemento[] mementos = memento.getChildren("file");
        int i = 0;
        while (i < mementos.length) {
            EditorHistoryItem item = new EditorHistoryItem(mementos[i]);
            if (!"".equals(item.getName()) || !"".equals(item.getToolTipText())) {
                this.add(item, this.fifoList.size());
            }
            ++i;
        }
        return Status.OK_STATUS;
    }

    public IStatus saveState(IMemento memento) {
        Iterator iterator = this.fifoList.iterator();
        while (iterator.hasNext()) {
            EditorHistoryItem item = (EditorHistoryItem)iterator.next();
            if (!item.canSave()) continue;
            IMemento itemMemento = memento.createChild("file");
            item.saveState(itemMemento);
        }
        return Status.OK_STATUS;
    }
}

