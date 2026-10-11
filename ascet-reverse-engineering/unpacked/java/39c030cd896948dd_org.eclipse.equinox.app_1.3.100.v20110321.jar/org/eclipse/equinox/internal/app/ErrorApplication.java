/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.app;

import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;

public class ErrorApplication
implements IApplication {
    static final String ERROR_EXCEPTION = "error.exception";

    public Object start(IApplicationContext context) throws Exception {
        Exception error = (Exception)context.getArguments().get(ERROR_EXCEPTION);
        if (error != null) {
            throw error;
        }
        throw new IllegalStateException();
    }

    public void stop() {
    }
}

