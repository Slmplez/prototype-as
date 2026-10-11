/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IParameter
 *  org.eclipse.core.commands.IParameterValues
 *  org.eclipse.core.commands.ITypedParameter
 *  org.eclipse.core.commands.ParameterType
 *  org.eclipse.core.commands.ParameterValuesException
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal.commands;

import org.eclipse.core.commands.IParameter;
import org.eclipse.core.commands.IParameterValues;
import org.eclipse.core.commands.ITypedParameter;
import org.eclipse.core.commands.ParameterType;
import org.eclipse.core.commands.ParameterValuesException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.internal.util.Util;

public final class Parameter
implements IParameter,
ITypedParameter {
    private static final String ATTRIBUTE_VALUES = "values";
    private static final int HASH_CODE_NOT_COMPUTED = -1;
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private transient int hashCode = -1;
    protected final String id;
    private final String name;
    private final boolean optional;
    private final ParameterType parameterType;
    protected transient String string = null;
    private transient IParameterValues values = null;
    private final IConfigurationElement valuesConfigurationElement;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.commands.common.HandleObject");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public Parameter(String id, String name, IConfigurationElement values, ParameterType parameterType, boolean optional) {
        if (id == null) {
            throw new NullPointerException("Cannot create a parameter with a null id");
        }
        if (name == null) {
            throw new NullPointerException("The name of a parameter cannot be null.");
        }
        if (values == null) {
            throw new NullPointerException("The values for a parameter cannot be null.");
        }
        this.id = id;
        this.name = name;
        this.valuesConfigurationElement = values;
        this.parameterType = parameterType;
        this.optional = optional;
    }

    public final boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof Parameter)) {
            return false;
        }
        Parameter parameter = (Parameter)object;
        if (!Util.equals(this.id, parameter.id)) {
            return false;
        }
        if (!Util.equals(this.name, parameter.name)) {
            return false;
        }
        if (!Util.equals(this.values, parameter.values)) {
            return false;
        }
        return Util.equals(this.optional, parameter.optional);
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final ParameterType getParameterType() {
        return this.parameterType;
    }

    public final IParameterValues getValues() throws ParameterValuesException {
        if (this.values == null) {
            try {
                this.values = (IParameterValues)this.valuesConfigurationElement.createExecutableExtension(ATTRIBUTE_VALUES);
            }
            catch (CoreException e) {
                throw new ParameterValuesException("Problem creating parameter values", (Throwable)e);
            }
            catch (ClassCastException e) {
                throw new ParameterValuesException("Parameter values were not an instance of IParameterValues", (Throwable)e);
            }
        }
        return this.values;
    }

    public final int hashCode() {
        if (this.hashCode == -1) {
            this.hashCode = HASH_INITIAL * 89 + Util.hashCode(this.id);
            if (this.hashCode == -1) {
                ++this.hashCode;
            }
        }
        return this.hashCode;
    }

    public final boolean isOptional() {
        return this.optional;
    }

    public final String toString() {
        if (this.string == null) {
            StringBuffer buffer = new StringBuffer();
            buffer.append("Parameter(");
            buffer.append(this.id);
            buffer.append(',');
            buffer.append(this.name);
            buffer.append(',');
            buffer.append(this.values);
            buffer.append(',');
            buffer.append(this.optional);
            buffer.append(')');
            this.string = buffer.toString();
        }
        return this.string;
    }
}

