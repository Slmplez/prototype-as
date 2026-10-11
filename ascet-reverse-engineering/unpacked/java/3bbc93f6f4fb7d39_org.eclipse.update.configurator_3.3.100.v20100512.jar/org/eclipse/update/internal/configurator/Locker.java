/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.update.internal.configurator;

import java.io.IOException;

public interface Locker {
    public boolean lock() throws IOException;

    public void release();
}

