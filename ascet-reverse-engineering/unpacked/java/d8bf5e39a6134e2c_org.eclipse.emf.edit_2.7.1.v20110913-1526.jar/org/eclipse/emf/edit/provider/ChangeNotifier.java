/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.edit.provider;

import java.util.ArrayList;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.edit.provider.IChangeNotifier;
import org.eclipse.emf.edit.provider.INotifyChangedListener;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ChangeNotifier
extends ArrayList<INotifyChangedListener>
implements IChangeNotifier {
    private static final long serialVersionUID = 1L;

    @Override
    public void fireNotifyChanged(Notification notification) {
        int size = this.size();
        INotifyChangedListener[] listeners = new INotifyChangedListener[size];
        this.toArray(listeners);
        int expectedModCount = this.modCount;
        int i = 0;
        while (i < size) {
            INotifyChangedListener notifyChangedListener = listeners[i];
            if (expectedModCount == this.modCount || this.contains(notifyChangedListener)) {
                notifyChangedListener.notifyChanged(notification);
            }
            ++i;
        }
    }

    @Override
    public void addListener(INotifyChangedListener notifyChangedListener) {
        this.add(notifyChangedListener);
    }

    @Override
    public void removeListener(INotifyChangedListener notifyChangedListener) {
        this.remove(notifyChangedListener);
    }
}

