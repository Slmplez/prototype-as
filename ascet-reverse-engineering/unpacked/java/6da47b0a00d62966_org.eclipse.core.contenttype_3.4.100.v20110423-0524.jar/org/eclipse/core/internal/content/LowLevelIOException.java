/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.content;

import java.io.IOException;
import org.eclipse.core.runtime.Assert;

class LowLevelIOException
extends IOException {
    private static final long serialVersionUID = 1L;
    private IOException actual;

    public LowLevelIOException(IOException actual) {
        Assert.isLegal((!(actual instanceof LowLevelIOException) ? 1 : 0) != 0);
        this.actual = actual;
    }

    public IOException getActualException() {
        return this.actual;
    }
}

