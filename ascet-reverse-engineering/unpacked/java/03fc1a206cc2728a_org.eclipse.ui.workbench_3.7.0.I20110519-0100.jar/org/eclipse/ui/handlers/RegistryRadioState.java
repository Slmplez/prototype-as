/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.jface.commands.RadioState
 */
package org.eclipse.ui.handlers;

import java.util.Hashtable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.jface.commands.RadioState;

public final class RegistryRadioState
extends RadioState
implements IExecutableExtension {
    private final void readDefault(String defaultString) {
        if ("true".equalsIgnoreCase(defaultString)) {
            this.setValue(Boolean.TRUE);
        }
    }

    private final void readPersisted(String persistedString) {
        if ("false".equalsIgnoreCase(persistedString)) {
            this.setShouldPersist(false);
        }
        this.setShouldPersist(true);
    }

    public final void setInitializationData(IConfigurationElement configurationElement, String propertyName, Object data) {
        if (data instanceof String) {
            this.setRadioGroupIdentifier((String)data);
            this.setValue(Boolean.FALSE);
            this.setShouldPersist(true);
        } else if (data instanceof Hashtable) {
            Object idObject;
            Object persistedObject;
            Hashtable parameters = (Hashtable)data;
            Object defaultObject = parameters.get("default");
            if (defaultObject instanceof String) {
                this.readDefault((String)defaultObject);
            }
            if ((persistedObject = parameters.get("persisted")) instanceof String) {
                this.readPersisted((String)persistedObject);
            }
            if ((idObject = parameters.get("id")) instanceof String) {
                this.setRadioGroupIdentifier((String)idObject);
            }
        } else {
            this.setShouldPersist(true);
        }
    }
}

