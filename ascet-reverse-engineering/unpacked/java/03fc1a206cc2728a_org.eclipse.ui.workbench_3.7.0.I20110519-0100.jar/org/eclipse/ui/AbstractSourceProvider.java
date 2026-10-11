/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.util.Tracing
 */
package org.eclipse.ui;

import java.util.Map;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.ISourceProviderListener;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.services.IServiceLocator;

public abstract class AbstractSourceProvider
implements ISourceProvider {
    protected static boolean DEBUG = Policy.DEBUG_SOURCES;
    private ISourceProviderListener[] listeners = new ISourceProviderListener[7];
    private int listenerCount = 0;

    public final void addSourceProviderListener(ISourceProviderListener listener) {
        if (listener == null) {
            throw new NullPointerException("The listener cannot be null");
        }
        if (this.listenerCount == this.listeners.length) {
            ISourceProviderListener[] growArray = new ISourceProviderListener[this.listeners.length + 4];
            System.arraycopy(this.listeners, 0, growArray, 0, this.listeners.length);
            this.listeners = growArray;
        }
        this.listeners[this.listenerCount++] = listener;
    }

    protected final void fireSourceChanged(int sourcePriority, String sourceName, Object sourceValue) {
        int i = 0;
        while (i < this.listenerCount) {
            ISourceProviderListener listener = this.listeners[i];
            listener.sourceChanged(sourcePriority, sourceName, sourceValue);
            ++i;
        }
    }

    protected final void fireSourceChanged(int sourcePriority, Map sourceValuesByName) {
        int i = 0;
        while (i < this.listenerCount) {
            ISourceProviderListener listener = this.listeners[i];
            listener.sourceChanged(sourcePriority, sourceValuesByName);
            ++i;
        }
    }

    protected final void logDebuggingInfo(String message) {
        if (DEBUG && message != null) {
            Tracing.printTrace((String)"SOURCES", (String)message);
        }
    }

    public final void removeSourceProviderListener(ISourceProviderListener listener) {
        if (listener == null) {
            throw new NullPointerException("The listener cannot be null");
        }
        int emptyIndex = -1;
        int i = 0;
        while (i < this.listenerCount) {
            if (this.listeners[i] == listener) {
                this.listeners[i] = null;
                emptyIndex = i;
            }
            ++i;
        }
        if (emptyIndex != -1) {
            i = emptyIndex + 1;
            while (i < this.listenerCount) {
                this.listeners[i - 1] = this.listeners[i];
                ++i;
            }
            --this.listenerCount;
        }
    }

    public void initialize(IServiceLocator locator) {
    }
}

