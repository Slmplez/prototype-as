/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.commands.IParameter;
import org.eclipse.core.commands.ParameterValuesException;
import org.eclipse.core.internal.commands.util.Util;

public final class Parameterization {
    private static final int HASH_CODE_NOT_COMPUTED = -1;
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private transient int hashCode = -1;
    private final IParameter parameter;
    private final String value;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.commands.Parameterization");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public Parameterization(IParameter parameter, String value) {
        if (parameter == null) {
            throw new NullPointerException("You cannot parameterize a null parameter");
        }
        this.parameter = parameter;
        this.value = value;
    }

    public final boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof Parameterization)) {
            return false;
        }
        Parameterization parameterization = (Parameterization)object;
        if (!Util.equals(this.parameter.getId(), parameterization.parameter.getId())) {
            return false;
        }
        return Util.equals(this.value, parameterization.value);
    }

    public final IParameter getParameter() {
        return this.parameter;
    }

    public final String getValue() {
        return this.value;
    }

    public final String getValueName() throws ParameterValuesException {
        Map parameterValues = this.parameter.getValues().getParameterValues();
        Iterator parameterValueItr = parameterValues.entrySet().iterator();
        String returnValue = null;
        while (parameterValueItr.hasNext()) {
            Map.Entry entry = parameterValueItr.next();
            String currentValue = (String)entry.getValue();
            if (!Util.equals(this.value, currentValue)) continue;
            returnValue = (String)entry.getKey();
            break;
        }
        if (returnValue == null) {
            return "";
        }
        return returnValue;
    }

    public final int hashCode() {
        if (this.hashCode == -1) {
            this.hashCode = HASH_INITIAL * 89 + Util.hashCode(this.parameter);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.value);
            if (this.hashCode == -1) {
                ++this.hashCode;
            }
        }
        return this.hashCode;
    }
}

