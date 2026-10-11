/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;

public interface AdapterFactory {
    public boolean isFactoryForType(Object var1);

    public Object adapt(Object var1, Object var2);

    public Adapter adapt(Notifier var1, Object var2);

    public Adapter adaptNew(Notifier var1, Object var2);

    public void adaptAllNew(Notifier var1);
}

