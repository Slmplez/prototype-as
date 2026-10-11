/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.p2.core.eventbus;

import java.util.EventListener;
import java.util.EventObject;

public interface ProvisioningListener
extends EventListener {
    public void notify(EventObject var1);
}

