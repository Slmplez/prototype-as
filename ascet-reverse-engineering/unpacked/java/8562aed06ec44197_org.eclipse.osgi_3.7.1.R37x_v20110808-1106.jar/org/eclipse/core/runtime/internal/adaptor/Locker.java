/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.IOException;

public interface Locker {
    public boolean lock() throws IOException;

    public boolean isLocked() throws IOException;

    public void release();
}

