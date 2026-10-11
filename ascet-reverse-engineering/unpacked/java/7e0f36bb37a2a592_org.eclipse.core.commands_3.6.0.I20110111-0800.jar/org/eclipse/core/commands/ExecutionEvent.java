/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import java.util.Collections;
import java.util.Map;
import org.eclipse.core.commands.AbstractParameterValueConverter;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.ParameterType;
import org.eclipse.core.commands.ParameterValueConversionException;
import org.eclipse.core.commands.common.NotDefinedException;

public final class ExecutionEvent {
    private final Object applicationContext;
    private final Command command;
    private final Map parameters;
    private final Object trigger;

    public ExecutionEvent() {
        this(null, Collections.EMPTY_MAP, null, null);
    }

    public ExecutionEvent(Map parameters, Object trigger, Object applicationContext) {
        this(null, parameters, trigger, applicationContext);
    }

    public ExecutionEvent(Command command, Map parameters, Object trigger, Object applicationContext) {
        if (parameters == null) {
            throw new NullPointerException("An execution event must have a non-null map of parameters");
        }
        this.command = command;
        this.parameters = parameters;
        this.trigger = trigger;
        this.applicationContext = applicationContext;
    }

    public final Object getApplicationContext() {
        return this.applicationContext;
    }

    public final Command getCommand() {
        return this.command;
    }

    public final Object getObjectParameterForExecution(String parameterId) throws ExecutionException {
        if (this.command == null) {
            throw new ExecutionException("No command is associated with this execution event");
        }
        try {
            ParameterType parameterType = this.command.getParameterType(parameterId);
            if (parameterType == null) {
                throw new ExecutionException("Command does not have a parameter type for the given parameter");
            }
            AbstractParameterValueConverter valueConverter = parameterType.getValueConverter();
            if (valueConverter == null) {
                throw new ExecutionException("Command does not have a value converter");
            }
            String stringValue = this.getParameter(parameterId);
            Object objectValue = valueConverter.convertToObject(stringValue);
            return objectValue;
        }
        catch (NotDefinedException e) {
            throw new ExecutionException("Command is not defined", e);
        }
        catch (ParameterValueConversionException e) {
            throw new ExecutionException("The parameter string could not be converted to an object", e);
        }
    }

    public final String getParameter(String parameterId) {
        return (String)this.parameters.get(parameterId);
    }

    public final Map getParameters() {
        return this.parameters;
    }

    public final Object getTrigger() {
        return this.trigger;
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ExecutionEvent(");
        stringBuffer.append(this.command);
        stringBuffer.append(',');
        stringBuffer.append(this.parameters);
        stringBuffer.append(',');
        stringBuffer.append(this.trigger);
        stringBuffer.append(',');
        stringBuffer.append(this.applicationContext);
        stringBuffer.append(')');
        return stringBuffer.toString();
    }
}

