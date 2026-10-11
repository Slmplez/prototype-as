/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.core.subscribers;

import java.util.EventListener;
import org.eclipse.team.core.subscribers.ISubscriberChangeEvent;

public interface ISubscriberChangeListener
extends EventListener {
    public void subscriberResourceChanged(ISubscriberChangeEvent[] var1);
}

