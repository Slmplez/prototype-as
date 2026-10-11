/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.AbstractParameterValueConverter;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.IParameter;
import org.eclipse.core.commands.IParameterValues;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterType;
import org.eclipse.core.commands.ParameterValueConversionException;
import org.eclipse.core.commands.ParameterValuesException;
import org.eclipse.core.commands.Parameterization;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.internal.commands.util.Util;

public final class ParameterizedCommand
implements Comparable {
    private static final int HASH_CODE_NOT_COMPUTED = -1;
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    public static final int INDEX_PARAMETER_ID = 0;
    public static final int INDEX_PARAMETER_NAME = 1;
    public static final int INDEX_PARAMETER_VALUE_NAME = 2;
    public static final int INDEX_PARAMETER_VALUE_VALUE = 3;
    private final Command command;
    private transient int hashCode = -1;
    private final Parameterization[] parameterizations;
    private String name;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.commands.ParameterizedCommand");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    private static final String escape(String rawText) {
        StringBuffer buffer = null;
        int i = 0;
        while (i < rawText.length()) {
            char c = rawText.charAt(i);
            switch (c) {
                case '%': 
                case '(': 
                case ')': 
                case ',': 
                case '=': {
                    if (buffer == null) {
                        buffer = new StringBuffer(rawText.substring(0, i));
                    }
                    buffer.append('%');
                    buffer.append(c);
                    break;
                }
                default: {
                    if (buffer == null) break;
                    buffer.append(c);
                }
            }
            ++i;
        }
        if (buffer == null) {
            return rawText;
        }
        return buffer.toString();
    }

    private static final Collection expandParameters(int startIndex, IParameter[] parameters) {
        int nextIndex = startIndex + 1;
        boolean noMoreParameters = nextIndex >= parameters.length;
        IParameter parameter = parameters[startIndex];
        ArrayList<Object> parameterizations = new ArrayList<Object>();
        if (parameter.isOptional()) {
            parameterizations.add(null);
        }
        IParameterValues values = null;
        try {
            values = parameter.getValues();
        }
        catch (ParameterValuesException parameterValuesException) {
            if (noMoreParameters) {
                return parameterizations;
            }
            return ParameterizedCommand.expandParameters(nextIndex, parameters);
        }
        Map parameterValues = values.getParameterValues();
        Iterator parameterValueItr = parameterValues.entrySet().iterator();
        while (parameterValueItr.hasNext()) {
            Map.Entry entry = parameterValueItr.next();
            Parameterization parameterization = new Parameterization(parameter, (String)entry.getValue());
            parameterizations.add(parameterization);
        }
        int parameterizationCount = parameterizations.size();
        if (noMoreParameters) {
            int i = 0;
            while (i < parameterizationCount) {
                Parameterization parameterization = (Parameterization)parameterizations.get(i);
                ArrayList<Parameterization> combination = new ArrayList<Parameterization>(1);
                combination.add(parameterization);
                parameterizations.set(i, combination);
                ++i;
            }
            return parameterizations;
        }
        Collection suffixes = ParameterizedCommand.expandParameters(nextIndex, parameters);
        while (suffixes.remove(null)) {
        }
        if (suffixes.isEmpty()) {
            int i = 0;
            while (i < parameterizationCount) {
                Parameterization parameterization = (Parameterization)parameterizations.get(i);
                ArrayList<Parameterization> combination = new ArrayList<Parameterization>(1);
                combination.add(parameterization);
                parameterizations.set(i, combination);
                ++i;
            }
            return parameterizations;
        }
        ArrayList returnValue = new ArrayList();
        Iterator suffixItr = suffixes.iterator();
        while (suffixItr.hasNext()) {
            List combination = (List)suffixItr.next();
            int combinationSize = combination.size();
            int i = 0;
            while (i < parameterizationCount) {
                Parameterization parameterization = (Parameterization)parameterizations.get(i);
                ArrayList<Parameterization> newCombination = new ArrayList<Parameterization>(combinationSize + 1);
                newCombination.add(parameterization);
                newCombination.addAll(combination);
                returnValue.add(newCombination);
                ++i;
            }
        }
        return returnValue;
    }

    public static final Collection generateCombinations(Command command) throws NotDefinedException {
        IParameter[] parameters = command.getParameters();
        if (parameters == null) {
            return Collections.singleton(new ParameterizedCommand(command, null));
        }
        Collection expansion = ParameterizedCommand.expandParameters(0, parameters);
        ArrayList<ParameterizedCommand> combinations = new ArrayList<ParameterizedCommand>(expansion.size());
        Iterator expansionItr = expansion.iterator();
        while (expansionItr.hasNext()) {
            List combination = (List)expansionItr.next();
            if (combination == null) {
                combinations.add(new ParameterizedCommand(command, null));
                continue;
            }
            while (combination.remove(null)) {
            }
            if (combination.isEmpty()) {
                combinations.add(new ParameterizedCommand(command, null));
                continue;
            }
            Parameterization[] parameterizations = combination.toArray(new Parameterization[combination.size()]);
            combinations.add(new ParameterizedCommand(command, parameterizations));
        }
        return combinations;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static final ParameterizedCommand generateCommand(Command command, Map parameters) {
        if (parameters == null) return new ParameterizedCommand(command, null);
        if (parameters.isEmpty()) {
            return new ParameterizedCommand(command, null);
        }
        try {
            ArrayList<Parameterization> parms = new ArrayList<Parameterization>();
            Iterator i = parameters.keySet().iterator();
            while (true) {
                if (!i.hasNext()) {
                    return new ParameterizedCommand(command, parms.toArray(new Parameterization[parms.size()]));
                }
                String key = (String)i.next();
                IParameter parameter = null;
                parameter = command.getParameter(key);
                if (parameter == null) {
                    return null;
                }
                ParameterType parameterType = command.getParameterType(key);
                if (parameterType == null) {
                    parms.add(new Parameterization(parameter, (String)parameters.get(key)));
                    continue;
                }
                AbstractParameterValueConverter valueConverter = parameterType.getValueConverter();
                if (valueConverter != null) {
                    String val = valueConverter.convertToString(parameters.get(key));
                    parms.add(new Parameterization(parameter, val));
                    continue;
                }
                parms.add(new Parameterization(parameter, (String)parameters.get(key)));
            }
        }
        catch (NotDefinedException notDefinedException) {
            return null;
        }
        catch (ParameterValueConversionException parameterValueConversionException) {}
        return null;
    }

    public ParameterizedCommand(Command command, Parameterization[] parameterizations) {
        if (command == null) {
            throw new NullPointerException("A parameterized command cannot have a null command");
        }
        this.command = command;
        IParameter[] parms = null;
        try {
            parms = command.getParameters();
        }
        catch (NotDefinedException notDefinedException) {}
        if (parameterizations != null && parameterizations.length > 0 && parms != null) {
            int parmIndex = 0;
            Parameterization[] params = new Parameterization[parameterizations.length];
            int j = 0;
            while (j < parms.length) {
                int i = 0;
                while (i < parameterizations.length) {
                    Parameterization pm = parameterizations[i];
                    if (parms[j].equals(pm.getParameter())) {
                        params[parmIndex++] = pm;
                    }
                    ++i;
                }
                ++j;
            }
            this.parameterizations = params;
        } else {
            this.parameterizations = null;
        }
    }

    public final int compareTo(Object object) {
        ParameterizedCommand command = (ParameterizedCommand)object;
        boolean thisDefined = this.command.isDefined();
        boolean otherDefined = command.command.isDefined();
        if (!thisDefined || !otherDefined) {
            return Util.compare(thisDefined, otherDefined);
        }
        try {
            int compareTo = this.getName().compareTo(command.getName());
            if (compareTo == 0) {
                return this.getId().compareTo(command.getId());
            }
            return compareTo;
        }
        catch (NotDefinedException notDefinedException) {
            throw new Error("Concurrent modification of a command's defined state");
        }
    }

    public final boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof ParameterizedCommand)) {
            return false;
        }
        ParameterizedCommand command = (ParameterizedCommand)object;
        if (!Util.equals(this.command, command.command)) {
            return false;
        }
        return Util.equals(this.parameterizations, command.parameterizations);
    }

    public final Object execute(Object trigger, Object applicationContext) throws ExecutionException, NotHandledException {
        return this.command.execute(new ExecutionEvent(this.command, this.getParameterMap(), trigger, applicationContext));
    }

    public final Object executeWithChecks(Object trigger, Object applicationContext) throws ExecutionException, NotDefinedException, NotEnabledException, NotHandledException {
        return this.command.executeWithChecks(new ExecutionEvent(this.command, this.getParameterMap(), trigger, applicationContext));
    }

    public final Command getCommand() {
        return this.command;
    }

    public final String getId() {
        return this.command.getId();
    }

    public final String getName() throws NotDefinedException {
        if (this.name == null) {
            StringBuffer nameBuffer = new StringBuffer();
            nameBuffer.append(this.command.getName());
            if (this.parameterizations != null) {
                nameBuffer.append(" (");
                int parameterizationCount = this.parameterizations.length;
                if (parameterizationCount == 1) {
                    this.appendParameter(nameBuffer, this.parameterizations[0], false);
                } else {
                    int i = 0;
                    while (i < parameterizationCount) {
                        this.appendParameter(nameBuffer, this.parameterizations[i], true);
                        if (i + 1 < parameterizationCount) {
                            nameBuffer.append(", ");
                        }
                        ++i;
                    }
                }
                nameBuffer.append(')');
            }
            this.name = nameBuffer.toString();
        }
        return this.name;
    }

    private void appendParameter(StringBuffer nameBuffer, Parameterization parameterization, boolean shouldAppendName) {
        if (shouldAppendName) {
            nameBuffer.append(parameterization.getParameter().getName());
            nameBuffer.append(": ");
        }
        try {
            nameBuffer.append(parameterization.getValueName());
        }
        catch (ParameterValuesException parameterValuesException) {}
    }

    public final Map getParameterMap() {
        if (this.parameterizations == null || this.parameterizations.length == 0) {
            return Collections.EMPTY_MAP;
        }
        HashMap<String, String> parameterMap = new HashMap<String, String>();
        int i = 0;
        while (i < this.parameterizations.length) {
            Parameterization parameterization = this.parameterizations[i];
            parameterMap.put(parameterization.getParameter().getId(), parameterization.getValue());
            ++i;
        }
        return parameterMap;
    }

    public final int hashCode() {
        if (this.hashCode == -1) {
            this.hashCode = HASH_INITIAL * 89 + Util.hashCode(this.command);
            this.hashCode *= 89;
            if (this.parameterizations != null) {
                int i = 0;
                while (i < this.parameterizations.length) {
                    this.hashCode += Util.hashCode(this.parameterizations[i]);
                    ++i;
                }
            }
            if (this.hashCode == -1) {
                ++this.hashCode;
            }
        }
        return this.hashCode;
    }

    public final String serialize() {
        String escapedId = ParameterizedCommand.escape(this.getId());
        if (this.parameterizations == null || this.parameterizations.length == 0) {
            return escapedId;
        }
        StringBuffer buffer = new StringBuffer(escapedId);
        buffer.append('(');
        int i = 0;
        while (i < this.parameterizations.length) {
            if (i > 0) {
                buffer.append(',');
            }
            Parameterization parameterization = this.parameterizations[i];
            String parameterId = parameterization.getParameter().getId();
            String escapedParameterId = ParameterizedCommand.escape(parameterId);
            buffer.append(escapedParameterId);
            String parameterValue = parameterization.getValue();
            if (parameterValue != null) {
                String escapedParameterValue = ParameterizedCommand.escape(parameterValue);
                buffer.append('=');
                buffer.append(escapedParameterValue);
            }
            ++i;
        }
        buffer.append(')');
        return buffer.toString();
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("ParameterizedCommand(");
        buffer.append(this.command);
        buffer.append(',');
        buffer.append(this.parameterizations);
        buffer.append(')');
        return buffer.toString();
    }
}

