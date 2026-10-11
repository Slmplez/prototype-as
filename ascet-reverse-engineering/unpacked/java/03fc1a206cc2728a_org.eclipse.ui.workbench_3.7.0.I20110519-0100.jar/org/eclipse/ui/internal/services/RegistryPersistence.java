/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.IParameter
 *  org.eclipse.core.commands.Parameterization
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.expressions.ElementHandler
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionConverter
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.services;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.IParameter;
import org.eclipse.core.commands.Parameterization;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.expressions.ElementHandler;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.IWorkbenchRegistryConstants;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.services.IDisposable;

public abstract class RegistryPersistence
implements IDisposable,
IWorkbenchRegistryConstants {
    protected static final Expression ERROR_EXPRESSION = new Expression(){

        public final EvaluationResult evaluate(IEvaluationContext context) {
            return null;
        }
    };
    private final IRegistryChangeListener registryChangeListener = new IRegistryChangeListener(){

        public final void registryChanged(IRegistryChangeEvent event) {
            if (RegistryPersistence.this.isChangeImportant(event)) {
                Display.getDefault().asyncExec(new Runnable(this){
                    final /* synthetic */ 2 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public final void run() {
                        2.access$0(this.this$1).read();
                    }
                });
            }
        }

        static /* synthetic */ RegistryPersistence access$0(2 var0) {
            return var0.RegistryPersistence.this;
        }
    };
    protected boolean registryListenerAttached = false;

    protected static final void addElementToIndexedArray(IConfigurationElement elementToAdd, IConfigurationElement[][] indexedArray, int index, int currentCount) {
        IConfigurationElement[] elements;
        if (currentCount == 0) {
            elements = new IConfigurationElement[1];
            indexedArray[index] = elements;
        } else if (currentCount >= indexedArray[index].length) {
            IConfigurationElement[] copy = new IConfigurationElement[indexedArray[index].length * 2];
            System.arraycopy(indexedArray[index], 0, copy, 0, currentCount);
            elements = copy;
            indexedArray[index] = elements;
        } else {
            elements = indexedArray[index];
        }
        elements[currentCount] = elementToAdd;
    }

    protected static final void addWarning(List warningsToLog, String message, IConfigurationElement element) {
        RegistryPersistence.addWarning(warningsToLog, message, element, null, null, null);
    }

    protected static final void addWarning(List warningsToLog, String message, IConfigurationElement element, String id) {
        RegistryPersistence.addWarning(warningsToLog, message, element, id, null, null);
    }

    protected static final void addWarning(List warningsToLog, String message, IConfigurationElement element, String id, String extraAttributeName, String extraAttributeValue) {
        String statusMessage = message;
        if (element != null) {
            statusMessage = String.valueOf(statusMessage) + ": plug-in='" + element.getNamespace() + '\'';
        }
        if (id != null) {
            statusMessage = element != null ? String.valueOf(statusMessage) + ',' : String.valueOf(statusMessage) + ':';
            statusMessage = String.valueOf(statusMessage) + " id='" + id + '\'';
        }
        if (extraAttributeName != null) {
            statusMessage = element != null || id != null ? String.valueOf(statusMessage) + ',' : String.valueOf(statusMessage) + ':';
            statusMessage = String.valueOf(statusMessage) + ' ' + extraAttributeName + "='" + extraAttributeValue + '\'';
        }
        Status status = new Status(2, WorkbenchPlugin.PI_WORKBENCH, 0, statusMessage, null);
        warningsToLog.add(status);
    }

    protected static final boolean checkClass(IConfigurationElement configurationElement, List warningsToLog, String message, String id) {
        if (configurationElement.getAttribute("class") == null && configurationElement.getChildren("class").length == 0) {
            RegistryPersistence.addWarning(warningsToLog, message, configurationElement, id);
            return false;
        }
        return true;
    }

    protected static final boolean isPulldown(IConfigurationElement element) {
        String style = RegistryPersistence.readOptional(element, "style");
        boolean pulldown = RegistryPersistence.readBoolean(element, "pulldown", false);
        return pulldown || "pulldown".equals(style);
    }

    protected static final void logWarnings(List warningsToLog, String message) {
        if (warningsToLog != null && !warningsToLog.isEmpty()) {
            MultiStatus status = new MultiStatus(WorkbenchPlugin.PI_WORKBENCH, 0, warningsToLog.toArray(new IStatus[warningsToLog.size()]), message, null);
            WorkbenchPlugin.log((IStatus)status);
        }
    }

    protected static final boolean readBoolean(IConfigurationElement configurationElement, String attribute, boolean defaultValue) {
        String value = configurationElement.getAttribute(attribute);
        if (value == null) {
            return defaultValue;
        }
        if (defaultValue) {
            return !value.equalsIgnoreCase("false");
        }
        return value.equalsIgnoreCase("true");
    }

    protected static final String readOptional(IConfigurationElement configurationElement, String attribute) {
        String value = configurationElement.getAttribute(attribute);
        if (value != null && value.length() == 0) {
            value = null;
        }
        return value;
    }

    protected static final ParameterizedCommand readParameterizedCommand(IConfigurationElement configurationElement, ICommandService commandService, List warningsToLog, String message, String id) {
        String commandId = RegistryPersistence.readRequired(configurationElement, "commandId", warningsToLog, message, id);
        if (commandId == null) {
            return null;
        }
        Command command = commandService.getCommand(commandId);
        ParameterizedCommand parameterizedCommand = RegistryPersistence.readParameters(configurationElement, warningsToLog, command);
        return parameterizedCommand;
    }

    protected static final ParameterizedCommand readParameters(IConfigurationElement configurationElement, List warningsToLog, Command command) {
        IConfigurationElement[] parameterElements = configurationElement.getChildren("parameter");
        if (parameterElements == null || parameterElements.length == 0) {
            return new ParameterizedCommand(command, null);
        }
        ArrayList<Parameterization> parameters = new ArrayList<Parameterization>();
        int i = 0;
        while (i < parameterElements.length) {
            IConfigurationElement parameterElement = parameterElements[i];
            String id = parameterElement.getAttribute("id");
            if (id == null || id.length() == 0) {
                RegistryPersistence.addWarning(warningsToLog, "Parameters need a name", configurationElement);
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
                    RegistryPersistence.addWarning(warningsToLog, "Could not find a matching parameter", configurationElement, id);
                } else {
                    String value = parameterElement.getAttribute("value");
                    if (value == null || value.length() == 0) {
                        RegistryPersistence.addWarning(warningsToLog, "Parameters need a value", configurationElement, id);
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

    protected static final String readRequired(IConfigurationElement configurationElement, String attribute, List warningsToLog, String message) {
        return RegistryPersistence.readRequired(configurationElement, attribute, warningsToLog, message, null);
    }

    protected static final String readRequired(IConfigurationElement configurationElement, String attribute, List warningsToLog, String message, String id) {
        String value = configurationElement.getAttribute(attribute);
        if (value == null || value.length() == 0) {
            RegistryPersistence.addWarning(warningsToLog, message, configurationElement, id);
            return null;
        }
        return value;
    }

    protected static final Expression readWhenElement(IConfigurationElement parentElement, String whenElementName, String id, List warningsToLog) {
        IConfigurationElement[] whenElements = parentElement.getChildren(whenElementName);
        Expression whenExpression = null;
        if (whenElements.length > 0) {
            if (whenElements.length > 1) {
                RegistryPersistence.addWarning(warningsToLog, "There should only be one when element", parentElement, id, "whenElementName", whenElementName);
                return ERROR_EXPRESSION;
            }
            IConfigurationElement whenElement = whenElements[0];
            IConfigurationElement[] expressionElements = whenElement.getChildren();
            if (expressionElements.length > 0) {
                if (expressionElements.length > 1) {
                    RegistryPersistence.addWarning(warningsToLog, "There should only be one expression element", parentElement, id, "whenElementName", whenElementName);
                    return ERROR_EXPRESSION;
                }
                ElementHandler elementHandler = ElementHandler.getDefault();
                ExpressionConverter converter = ExpressionConverter.getDefault();
                IConfigurationElement expressionElement = expressionElements[0];
                try {
                    whenExpression = elementHandler.create(converter, expressionElement);
                }
                catch (CoreException coreException) {
                    RegistryPersistence.addWarning(warningsToLog, "Problem creating when element", parentElement, id, "whenElementName", whenElementName);
                    return ERROR_EXPRESSION;
                }
            }
        }
        return whenExpression;
    }

    protected RegistryPersistence() {
    }

    public void dispose() {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        registry.removeRegistryChangeListener(this.registryChangeListener);
        this.registryListenerAttached = false;
    }

    protected abstract boolean isChangeImportant(IRegistryChangeEvent var1);

    protected void read() {
        if (!this.registryListenerAttached) {
            IExtensionRegistry registry = Platform.getExtensionRegistry();
            registry.addRegistryChangeListener(this.registryChangeListener);
            this.registryListenerAttached = true;
        }
    }
}

