/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.console;

import java.io.InputStream;
import java.io.OutputStream;
import org.osgi.framework.Bundle;
import org.osgi.framework.ServiceFactory;
import org.osgi.framework.ServiceRegistration;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ConsoleSession
implements ServiceFactory<Object> {
    private volatile ServiceRegistration<Object> sessionRegistration;

    public final void close() {
        this.doClose();
        ServiceRegistration<Object> current = this.sessionRegistration;
        if (current != null) {
            this.sessionRegistration = null;
            try {
                current.unregister();
            }
            catch (IllegalStateException illegalStateException) {}
        }
    }

    protected abstract void doClose();

    public abstract InputStream getInput();

    public abstract OutputStream getOutput();

    @Override
    public final Object getService(Bundle bundle, ServiceRegistration<Object> registration) {
        if (this.sessionRegistration == null) {
            this.sessionRegistration = registration;
        }
        return this;
    }

    @Override
    public final void ungetService(Bundle bundle, ServiceRegistration<Object> registration, Object service) {
    }
}

