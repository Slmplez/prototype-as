/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.jface.commands.PersistentState
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package org.eclipse.ui.handlers;

import java.util.Hashtable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.jface.commands.PersistentState;
import org.eclipse.jface.preference.IPreferenceStore;

public final class RadioState
extends PersistentState
implements IExecutableExtension {
    public static final String STATE_ID = "org.eclipse.ui.commands.radioState";
    public static final String PARAMETER_ID = "org.eclipse.ui.commands.radioStateParameter";

    public RadioState() {
        this.setShouldPersist(true);
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) {
        boolean shouldPersist = true;
        if (data instanceof String) {
            this.setValue(data);
        } else if (data instanceof Hashtable) {
            Object persistedObject;
            Hashtable parameters = (Hashtable)data;
            Object defaultObject = parameters.get("default");
            if (defaultObject instanceof String) {
                this.setValue(defaultObject);
            }
            if ((persistedObject = parameters.get("persisted")) instanceof String && "false".equalsIgnoreCase((String)persistedObject)) {
                shouldPersist = false;
            }
        }
        this.setShouldPersist(shouldPersist);
    }

    public void load(IPreferenceStore store, String preferenceKey) {
        if (!this.shouldPersist()) {
            return;
        }
        String value = store.getString(preferenceKey);
        if (value.length() != 0) {
            this.setValue(value);
        }
    }

    public void save(IPreferenceStore store, String preferenceKey) {
        if (!this.shouldPersist()) {
            return;
        }
        Object value = this.getValue();
        if (value instanceof String) {
            store.setValue(preferenceKey, (String)value);
        }
    }

    public void setValue(Object value) {
        if (!(value instanceof String)) {
            return;
        }
        super.setValue(value);
    }
}

