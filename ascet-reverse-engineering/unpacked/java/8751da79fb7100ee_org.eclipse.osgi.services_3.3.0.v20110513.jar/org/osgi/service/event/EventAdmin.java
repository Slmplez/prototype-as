/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.event;

import org.osgi.service.event.Event;

public interface EventAdmin {
    public void postEvent(Event var1);

    public void sendEvent(Event var1);
}

