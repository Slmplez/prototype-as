/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.ISetChangeListener
 *  org.eclipse.core.databinding.observable.set.SetChangeEvent
 */
package org.eclipse.jface.databinding.viewers;

import java.util.Iterator;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.jface.internal.databinding.provisional.viewers.ViewerLabelProvider;

public abstract class ListeningLabelProvider
extends ViewerLabelProvider {
    private ISetChangeListener listener = new ISetChangeListener(){

        public void handleSetChange(SetChangeEvent event) {
            Iterator it = event.diff.getAdditions().iterator();
            while (it.hasNext()) {
                ListeningLabelProvider.this.addListenerTo(it.next());
            }
            it = event.diff.getRemovals().iterator();
            while (it.hasNext()) {
                ListeningLabelProvider.this.removeListenerFrom(it.next());
            }
        }
    };
    private IObservableSet items;

    public ListeningLabelProvider(IObservableSet itemsThatNeedLabels) {
        this.items = itemsThatNeedLabels;
        this.items.addSetChangeListener(this.listener);
        Iterator it = this.items.iterator();
        while (it.hasNext()) {
            this.addListenerTo(it.next());
        }
    }

    protected abstract void removeListenerFrom(Object var1);

    protected abstract void addListenerTo(Object var1);

    public void dispose() {
        Iterator iter = this.items.iterator();
        while (iter.hasNext()) {
            this.removeListenerFrom(iter.next());
        }
        this.items.removeSetChangeListener(this.listener);
        super.dispose();
    }
}

