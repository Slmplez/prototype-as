/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.engine.spi.Touchpoint;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ParameterizedProvisioningAction
extends ProvisioningAction {
    private ProvisioningAction action;
    private Map<String, String> actionParameters;
    private String actionText;

    public ParameterizedProvisioningAction(ProvisioningAction action, Map<String, String> actionParameters, String actionText) {
        if (action == null || actionParameters == null) {
            throw new IllegalArgumentException(Messages.ParameterizedProvisioningAction_action_or_parameters_null);
        }
        this.action = action;
        this.actionParameters = actionParameters;
        this.actionText = actionText;
    }

    @Override
    public IStatus execute(Map<String, Object> parameters) {
        parameters = this.processActionParameters(parameters);
        return this.action.execute(parameters);
    }

    @Override
    public IStatus undo(Map<String, Object> parameters) {
        parameters = this.processActionParameters(parameters);
        return this.action.undo(parameters);
    }

    private Map<String, Object> processActionParameters(Map<String, Object> parameters) {
        HashMap<String, Object> result = new HashMap<String, Object>(parameters);
        for (Map.Entry<String, String> entry : this.actionParameters.entrySet()) {
            String name = entry.getKey();
            String value = this.processVariables(entry.getValue(), parameters);
            result.put(name, value);
        }
        return Collections.unmodifiableMap(result);
    }

    private String processVariables(String parameterValue, Map<String, Object> parameters) {
        int variableBeginIndex = parameterValue.indexOf("${");
        if (variableBeginIndex == -1) {
            return parameterValue;
        }
        int variableEndIndex = parameterValue.indexOf(125, variableBeginIndex + 2);
        if (variableEndIndex == -1) {
            return parameterValue;
        }
        String preVariable = parameterValue.substring(0, variableBeginIndex);
        String variableName = parameterValue.substring(variableBeginIndex + 2, variableEndIndex);
        Object value = parameters.get(variableName);
        if (value == null && variableName.charAt(0) == '#') {
            try {
                int code = Integer.parseInt(variableName.substring(1));
                if (code >= 0 && code < 65536) {
                    value = Character.toString((char)code);
                }
            }
            catch (Throwable throwable) {}
        }
        String variableValue = value == null ? "" : value.toString();
        String postVariable = this.processVariables(parameterValue.substring(variableEndIndex + 1), parameters);
        return new StringBuffer(String.valueOf(preVariable)).append(variableValue).append(postVariable).toString();
    }

    public ProvisioningAction getAction() {
        return this.action;
    }

    public Map<String, String> getParameters() {
        return this.actionParameters;
    }

    public String getActionText() {
        return this.actionText;
    }

    @Override
    public Touchpoint getTouchpoint() {
        return this.action.getTouchpoint();
    }

    @Override
    public void setTouchpoint(Touchpoint touchpoint) {
        throw new UnsupportedOperationException();
    }
}

