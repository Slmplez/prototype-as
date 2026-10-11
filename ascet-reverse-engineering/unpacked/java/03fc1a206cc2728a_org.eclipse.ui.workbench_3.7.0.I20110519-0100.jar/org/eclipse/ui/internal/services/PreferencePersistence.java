/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.IParameter
 *  org.eclipse.core.commands.Parameterization
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.ui.internal.services;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.IParameter;
import org.eclipse.core.commands.Parameterization;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.services.RegistryPersistence;
import org.eclipse.ui.internal.util.Util;

public abstract class PreferencePersistence
extends RegistryPersistence {
    protected boolean preferenceListenerAttached = false;
    private final IPropertyChangeListener preferenceChangeListener = new IPropertyChangeListener(){

        public final void propertyChange(PropertyChangeEvent event) {
            if (PreferencePersistence.this.isChangeImportant(event)) {
                PreferencePersistence.this.read();
            }
        }
    };

    protected static final void addElementToIndexedArray(IMemento elementToAdd, IMemento[][] indexedArray, int index, int currentCount) {
        IMemento[] elements;
        if (currentCount == 0) {
            elements = new IMemento[1];
            indexedArray[index] = elements;
        } else if (currentCount >= indexedArray[index].length) {
            IMemento[] copy = new IMemento[indexedArray[index].length * 2];
            System.arraycopy(indexedArray[index], 0, copy, 0, currentCount);
            elements = copy;
            indexedArray[index] = elements;
        } else {
            elements = indexedArray[index];
        }
        elements[currentCount] = elementToAdd;
    }

    protected static final void addWarning(List warningsToLog, String message) {
        PreferencePersistence.addWarning(warningsToLog, message, null, null, null);
    }

    protected static final void addWarning(List warningsToLog, String message, String id) {
        PreferencePersistence.addWarning(warningsToLog, message, id, null, null);
    }

    protected static final void addWarning(List warningsToLog, String message, String id, String extraAttributeName, String extraAttributeValue) {
        String statusMessage = message;
        if (id != null) {
            statusMessage = String.valueOf(statusMessage) + ": id='" + id + '\'';
        }
        if (extraAttributeName != null) {
            statusMessage = id != null ? String.valueOf(statusMessage) + ',' : String.valueOf(statusMessage) + ':';
            statusMessage = String.valueOf(statusMessage) + ' ' + extraAttributeName + "='" + extraAttributeValue + '\'';
        }
        Status status = new Status(2, WorkbenchPlugin.PI_WORKBENCH, 0, statusMessage, null);
        warningsToLog.add(status);
    }

    protected static final boolean readBoolean(IMemento memento, String attribute, boolean defaultValue) {
        String value = memento.getString(attribute);
        if (value == null) {
            return defaultValue;
        }
        if (defaultValue) {
            return !value.equalsIgnoreCase("false");
        }
        return !value.equalsIgnoreCase("true");
    }

    protected static final String readOptional(IMemento memento, String attribute) {
        String value = memento.getString(attribute);
        if (value != null && value.length() == 0) {
            value = null;
        }
        return value;
    }

    protected static final ParameterizedCommand readParameterizedCommand(IMemento memento, ICommandService commandService, List warningsToLog, String message, String id) {
        String commandId = PreferencePersistence.readRequired(memento, "commandId", warningsToLog, message, id);
        if (commandId == null) {
            return null;
        }
        Command command = commandService.getCommand(commandId);
        ParameterizedCommand parameterizedCommand = PreferencePersistence.readParameters(memento, warningsToLog, command);
        return parameterizedCommand;
    }

    protected static final ParameterizedCommand readParameters(IMemento memento, List warningsToLog, Command command) {
        IMemento[] parameterMementos = memento.getChildren("parameter");
        if (parameterMementos == null || parameterMementos.length == 0) {
            return new ParameterizedCommand(command, null);
        }
        ArrayList<Parameterization> parameters = new ArrayList<Parameterization>();
        int i = 0;
        while (i < parameterMementos.length) {
            IMemento parameterMemento = parameterMementos[i];
            String id = parameterMemento.getString("id");
            if (id == null || id.length() == 0) {
                PreferencePersistence.addWarning(warningsToLog, "Parameters need a name");
            } else {
                IParameter parameter;
                block13: {
                    parameter = null;
                    try {
                        IParameter[] commandParameters = command.getParameters();
                        if (parameters == null) break block13;
                        int j = 0;
                        while (j < commandParameters.length) {
                            IParameter currentParameter = commandParameters[j];
                            if (Util.equals(currentParameter.getId(), id)) {
                                parameter = currentParameter;
                                break;
                            }
                            ++j;
                        }
                    }
                    catch (NotDefinedException notDefinedException) {}
                }
                if (parameter == null) {
                    PreferencePersistence.addWarning(warningsToLog, "Could not find a matching parameter", id);
                } else {
                    String value = parameterMemento.getString("value");
                    if (value == null || value.length() == 0) {
                        PreferencePersistence.addWarning(warningsToLog, "Parameters need a value", id);
                    } else {
                        parameters.add(new Parameterization(parameter, value));
                    }
                }
            }
            ++i;
        }
        if (parameters.isEmpty()) {
            return new ParameterizedCommand(command, null);
        }
        return new ParameterizedCommand(command, parameters.toArray(new Parameterization[parameters.size()]));
    }

    protected static final String readRequired(IMemento memento, String attribute, List warningsToLog, String message) {
        return PreferencePersistence.readRequired(memento, attribute, warningsToLog, message, null);
    }

    protected static final String readRequired(IMemento memento, String attribute, List warningsToLog, String message, String id) {
        String value = memento.getString(attribute);
        if (value == null || value.length() == 0) {
            PreferencePersistence.addWarning(warningsToLog, message, id);
            return null;
        }
        return value;
    }

    public final void dispose() {
        super.dispose();
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        store.removePropertyChangeListener(this.preferenceChangeListener);
    }

    protected abstract boolean isChangeImportant(PropertyChangeEvent var1);

    protected void read() {
        super.read();
        if (!this.preferenceListenerAttached) {
            IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
            store.addPropertyChangeListener(this.preferenceChangeListener);
        }
    }

    protected PreferencePersistence() {
    }
}

