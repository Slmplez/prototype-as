/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.jface.commands.ToggleState
 */
package org.eclipse.ui.handlers;

import java.util.Hashtable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.jface.commands.ToggleState;

public final class RegistryToggleState
extends ToggleState
implements IExecutableExtension {
    public static final String STATE_ID = "org.eclipse.ui.commands.toggleState";

    private final void readDefault(String defaultString) {
        if ("true".equalsIgnoreCase(defaultString)) {
            this.setValue(Boolean.TRUE);
        }
    }

    private final void readPersisted(String persistedString) {
        if ("false".equalsIgnoreCase(persistedString)) {
            this.setShouldPersist(false);
        } else {
            this.setShouldPersist(true);
        }
    }

    public final void setInitializationData(IConfigurationElement configurationElement, String propertyName, Object data) {
        if (data instanceof String) {
            this.readDefault((String)data);
            this.setShouldPersist(true);
        } else if (data instanceof Hashtable) {
            Object persistedObject;
            Hashtable parameters = (Hashtable)data;
            Object defaultObject = parameters.get("default");
            if (defaultObject instanceof String) {
                this.readDefault((String)defaultObject);
            }
            if ((persistedObject = parameters.get("persisted")) instanceof String) {
                this.readPersisted((String)persistedObject);
            }
        } else {
            this.setShouldPersist(true);
        }
    }
}

