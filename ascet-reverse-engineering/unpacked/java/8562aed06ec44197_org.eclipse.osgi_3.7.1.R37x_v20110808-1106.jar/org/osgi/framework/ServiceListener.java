/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework;

import java.util.EventListener;
import org.osgi.framework.ServiceEvent;

public interface ServiceListener
extends EventListener {
    public void serviceChanged(ServiceEvent var1);
}

