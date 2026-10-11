/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.internal.handlers;

import java.util.Collections;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.commands.AbstractHandler;
import org.eclipse.ui.commands.ExecutionException;
import org.eclipse.ui.commands.IHandler;
import org.eclipse.ui.internal.WorkbenchPlugin;

public final class LegacyHandlerProxy
extends AbstractHandler {
    private static final String HANDLER_ATTRIBUTE_NAME = "handler";
    private IConfigurationElement configurationElement;
    private IHandler handler;

    public LegacyHandlerProxy(IConfigurationElement newConfigurationElement) {
        this.configurationElement = newConfigurationElement;
        this.handler = null;
    }

    public void dispose() {
        if (this.handler != null) {
            this.handler.dispose();
        }
    }

    public Object execute(Map parameters) throws ExecutionException {
        if (this.loadHandler()) {
            return this.handler.execute(parameters);
        }
        return null;
    }

    public Map getAttributeValuesByName() {
        if (this.loadHandler()) {
            return this.handler.getAttributeValuesByName();
        }
        return Collections.EMPTY_MAP;
    }

    private final boolean loadHandler() {
        if (this.handler == null) {
            try {
                this.handler = (IHandler)this.configurationElement.createExecutableExtension(HANDLER_ATTRIBUTE_NAME);
                this.configurationElement = null;
                return true;
            }
            catch (CoreException e) {
                String message = "The proxied handler for '" + this.configurationElement.getAttribute(HANDLER_ATTRIBUTE_NAME) + "' could not be loaded";
                Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, message, (Throwable)e);
                WorkbenchPlugin.log(message, (IStatus)status);
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("LegacyProxy(");
        if (this.handler == null) {
            String className = this.configurationElement.getAttribute(HANDLER_ATTRIBUTE_NAME);
            buffer.append(className);
        } else {
            buffer.append(this.handler);
        }
        buffer.append(')');
        return buffer.toString();
    }
}

