/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.variables.VariablesPlugin
 */
package org.eclipse.ant.core;

import org.eclipse.ant.core.AntCorePlugin;
import org.eclipse.ant.core.IAntPropertyValueProvider;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.variables.VariablesPlugin;

public class Property {
    private String name;
    private String value;
    private String className;
    private IAntPropertyValueProvider valueProvider;
    private String pluginLabel;
    private ClassLoader loader;
    private boolean eclipseRuntime = true;

    public Property(String name, String value) {
        this.name = name;
        this.value = value;
    }

    public Property() {
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean equals(Object other) {
        if (other.getClass().equals(this.getClass())) {
            Property elem = (Property)other;
            return this.name.equals(elem.getName());
        }
        return false;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public String getValue() {
        return this.getValue(true);
    }

    public String getValue(boolean substituteVariables) {
        if (this.className != null) {
            Class<?> cls = null;
            try {
                cls = this.loader.loadClass(this.className);
            }
            catch (ClassNotFoundException e) {
                AntCorePlugin.log(e);
                return null;
            }
            try {
                this.valueProvider = (IAntPropertyValueProvider)cls.newInstance();
            }
            catch (InstantiationException e) {
                AntCorePlugin.log(e);
                return null;
            }
            catch (IllegalAccessException ex) {
                AntCorePlugin.log(ex);
                return null;
            }
            this.loader = null;
            this.className = null;
        }
        if (this.valueProvider != null) {
            return this.valueProvider.getAntPropertyValue(this.name);
        }
        if (substituteVariables) {
            try {
                String expanded = VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(this.value);
                return expanded;
            }
            catch (CoreException coreException) {}
        } else {
            return this.value;
        }
        return this.value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public boolean isDefault() {
        return this.pluginLabel != null;
    }

    public void setPluginLabel(String pluginLabel) {
        this.pluginLabel = pluginLabel;
    }

    public String getPluginLabel() {
        return this.pluginLabel;
    }

    public void setValueProvider(String className, ClassLoader loader) {
        this.className = className;
        this.loader = loader;
    }

    public String toString() {
        StringBuffer buff = new StringBuffer("\"");
        buff.append(this.getName());
        buff.append("\"= \"");
        buff.append(this.getValue(false));
        buff.append("\"");
        return buff.toString();
    }

    public boolean isEclipseRuntimeRequired() {
        return this.eclipseRuntime;
    }

    public void setEclipseRuntimeRequired(boolean eclipseRuntime) {
        this.eclipseRuntime = eclipseRuntime;
    }
}

