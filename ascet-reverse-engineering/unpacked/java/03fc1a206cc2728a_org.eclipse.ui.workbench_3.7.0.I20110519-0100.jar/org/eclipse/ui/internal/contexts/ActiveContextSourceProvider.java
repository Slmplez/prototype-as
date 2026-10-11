/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.contexts.ContextManagerEvent
 *  org.eclipse.core.commands.contexts.IContextManagerListener
 */
package org.eclipse.ui.internal.contexts;

import java.util.Collection;
import java.util.Map;
import java.util.TreeMap;
import org.eclipse.core.commands.contexts.ContextManagerEvent;
import org.eclipse.core.commands.contexts.IContextManagerListener;
import org.eclipse.ui.AbstractSourceProvider;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.services.IServiceLocator;

public final class ActiveContextSourceProvider
extends AbstractSourceProvider
implements IContextManagerListener {
    private static final String[] PROVIDED_SOURCE_NAMES = new String[]{"activeContexts"};
    private IContextService contextService;
    static /* synthetic */ Class class$0;

    public final void contextManagerChanged(ContextManagerEvent event) {
        if (event.isActiveContextsChanged()) {
            Map currentState = this.getCurrentState();
            if (DEBUG) {
                this.logDebuggingInfo("Contexts changed to " + currentState.get("activeContexts"));
            }
            this.fireSourceChanged(64, currentState);
        }
    }

    public final void dispose() {
        this.contextService.removeContextManagerListener(this);
    }

    public final Map getCurrentState() {
        TreeMap<String, Collection> currentState = new TreeMap<String, Collection>();
        Collection activeContextIds = this.contextService.getActiveContextIds();
        currentState.put("activeContexts", activeContextIds);
        return currentState;
    }

    public final String[] getProvidedSourceNames() {
        return PROVIDED_SOURCE_NAMES;
    }

    public void initialize(IServiceLocator locator) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.contextService = (IContextService)locator.getService(clazz);
        this.contextService.addContextManagerListener(this);
    }
}

