/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

import org.osgi.framework.Bundle;

public interface EventPublisher {
    public void publishFrameworkEvent(int var1, Bundle var2, Throwable var3);
}

