/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IStateListener
 *  org.eclipse.core.commands.State
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.commands.PersistentState
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package org.eclipse.ui.internal.commands;

import org.eclipse.core.commands.IStateListener;
import org.eclipse.core.commands.State;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.commands.PersistentState;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.internal.WorkbenchPlugin;

public final class CommandStateProxy
extends PersistentState {
    private IConfigurationElement configurationElement;
    private String preferenceKey;
    private IPreferenceStore preferenceStore;
    private State state = null;
    private final String stateAttributeName;

    public CommandStateProxy(IConfigurationElement configurationElement, String stateAttributeName, IPreferenceStore preferenceStore, String preferenceKey) {
        if (configurationElement == null) {
            throw new NullPointerException("The configuration element backing a state proxy cannot be null");
        }
        if (stateAttributeName == null) {
            throw new NullPointerException("The attribute containing the state class must be known");
        }
        this.configurationElement = configurationElement;
        this.stateAttributeName = stateAttributeName;
        this.preferenceKey = preferenceKey;
        this.preferenceStore = preferenceStore;
    }

    public final void addListener(IStateListener listener) {
        if (this.state == null) {
            this.addListenerObject(listener);
        } else {
            this.state.addListener(listener);
        }
    }

    public final void dispose() {
        if (this.state != null) {
            PersistentState persistableState;
            this.state.dispose();
            if (this.state instanceof PersistentState && (persistableState = (PersistentState)this.state).shouldPersist() && this.preferenceStore != null && this.preferenceKey != null) {
                persistableState.save(this.preferenceStore, this.preferenceKey);
            }
        }
    }

    public final Object getValue() {
        if (this.loadState()) {
            return this.state.getValue();
        }
        return null;
    }

    public final void load(IPreferenceStore store, String preferenceKey) {
        PersistentState persistableState;
        if (this.loadState() && this.state instanceof PersistentState && (persistableState = (PersistentState)this.state).shouldPersist() && this.preferenceStore != null && preferenceKey != null) {
            persistableState.load(this.preferenceStore, preferenceKey);
        }
    }

    private final boolean loadState() {
        return this.loadState(false);
    }

    private final boolean loadState(boolean readPersistence) {
        if (this.state == null) {
            try {
                this.state = (State)this.configurationElement.createExecutableExtension(this.stateAttributeName);
                this.state.setId(this.getId());
                this.configurationElement = null;
                if (readPersistence && this.state instanceof PersistentState) {
                    PersistentState persistentState = (PersistentState)this.state;
                    persistentState.setShouldPersist(true);
                }
                this.load(this.preferenceStore, this.preferenceKey);
                Object[] listenerArray = this.getListeners();
                int i = 0;
                while (i < listenerArray.length) {
                    this.state.addListener((IStateListener)listenerArray[i]);
                    ++i;
                }
                this.clearListeners();
                return true;
            }
            catch (ClassCastException e) {
                Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, "The proxied state was the wrong class", (Throwable)e);
                WorkbenchPlugin.log("The proxied state was the wrong class", (IStatus)status);
                return false;
            }
            catch (CoreException e) {
                String message = "The proxied state for '" + this.configurationElement.getAttribute(this.stateAttributeName) + "' could not be loaded";
                Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, message, (Throwable)e);
                WorkbenchPlugin.log(message, (IStatus)status);
                return false;
            }
        }
        return true;
    }

    public final void removeListener(IStateListener listener) {
        if (this.state == null) {
            this.removeListenerObject(listener);
        } else {
            this.state.removeListener(listener);
        }
    }

    public final void save(IPreferenceStore store, String preferenceKey) {
        if (this.loadState() && this.state instanceof PersistentState) {
            ((PersistentState)this.state).save(store, preferenceKey);
        }
    }

    public final void setId(String id) {
        super.setId(id);
        if (this.state != null) {
            this.state.setId(id);
        }
    }

    public final void setShouldPersist(boolean persisted) {
        if (this.loadState(persisted) && this.state instanceof PersistentState) {
            ((PersistentState)this.state).setShouldPersist(persisted);
        }
    }

    public final void setValue(Object value) {
        if (this.loadState()) {
            this.state.setValue(value);
        }
    }

    public final boolean shouldPersist() {
        if (this.loadState() && this.state instanceof PersistentState) {
            return ((PersistentState)this.state).shouldPersist();
        }
        return false;
    }

    public final String toString() {
        if (this.state == null) {
            return this.configurationElement.getAttribute(this.stateAttributeName);
        }
        return this.state.toString();
    }
}

