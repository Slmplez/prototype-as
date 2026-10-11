/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Notifier {
    public EList<Adapter> eAdapters();

    public boolean eDeliver();

    public void eSetDeliver(boolean var1);

    public void eNotify(Notification var1);
}

