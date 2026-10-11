/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify.impl;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.impl.BasicNotifierImpl;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NotifierImpl
extends BasicNotifierImpl {
    protected static final int EDELIVER = 1;
    protected static final int ELAST_NOTIFIER_FLAG = 1;
    protected int eFlags = 1;
    protected BasicEList<Adapter> eAdapters;

    @Override
    public EList<Adapter> eAdapters() {
        if (this.eAdapters == null) {
            this.eAdapters = new BasicNotifierImpl.EAdapterList<Adapter>(this);
        }
        return this.eAdapters;
    }

    @Override
    protected BasicEList<Adapter> eBasicAdapters() {
        return this.eAdapters;
    }

    @Override
    public boolean eDeliver() {
        return (this.eFlags & 1) != 0;
    }

    @Override
    public void eSetDeliver(boolean deliver) {
        this.eFlags = deliver ? (this.eFlags |= 1) : (this.eFlags &= 0xFFFFFFFE);
    }
}

