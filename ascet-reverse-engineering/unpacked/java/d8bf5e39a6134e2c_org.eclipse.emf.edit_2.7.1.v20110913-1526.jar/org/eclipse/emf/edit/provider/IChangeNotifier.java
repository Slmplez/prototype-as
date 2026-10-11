/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.edit.provider;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.edit.provider.INotifyChangedListener;

public interface IChangeNotifier {
    public void fireNotifyChanged(Notification var1);

    public void addListener(INotifyChangedListener var1);

    public void removeListener(INotifyChangedListener var1);
}

