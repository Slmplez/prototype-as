/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.variables;

import org.eclipse.core.internal.variables.StringVariable;
import org.eclipse.core.internal.variables.StringVariableManager;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.variables.IValueVariable;
import org.eclipse.core.variables.IValueVariableInitializer;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.osgi.util.NLS;

public class ContributedValueVariable
extends StringVariable
implements IValueVariable {
    private String fValue;
    private boolean fInitialized = false;
    private boolean fReadOnly;

    public ContributedValueVariable(String name, String description, boolean readOnly, IConfigurationElement configurationElement) {
        super(name, description, configurationElement);
        this.fReadOnly = readOnly;
    }

    public void setValue(String value) {
        if (!this.isReadOnly() || !this.isInitialized()) {
            this.fValue = value;
            this.setInitialized(true);
            StringVariableManager.getDefault().notifyChanged(this);
        }
    }

    public String getValue() {
        if (!this.isInitialized()) {
            this.initialize();
        }
        return this.fValue;
    }

    private void initialize() {
        block7: {
            if (this.getConfigurationElement() != null) {
                String value = this.getConfigurationElement().getAttribute("initialValue");
                if (value == null) {
                    String className = this.getConfigurationElement().getAttribute("initializerClass");
                    if (className != null) {
                        try {
                            Object object = this.getConfigurationElement().createExecutableExtension("initializerClass");
                            if (object instanceof IValueVariableInitializer) {
                                IValueVariableInitializer initializer = (IValueVariableInitializer)object;
                                initializer.initialize(this);
                                break block7;
                            }
                            VariablesPlugin.logMessage(NLS.bind((String)"Unable to initialize variable {0} - initializer must be an instance of IValueVariableInitializer.", (Object[])new String[]{this.getName()}), null);
                        }
                        catch (CoreException e) {
                            VariablesPlugin.logMessage(NLS.bind((String)"Unable to initialize variable {0}", (Object[])new String[]{this.getName()}), e);
                        }
                    }
                } else {
                    this.setValue(value);
                }
            }
        }
        this.setInitialized(true);
    }

    protected boolean isInitialized() {
        return this.fInitialized;
    }

    protected void setInitialized(boolean initialized) {
        this.fInitialized = initialized;
    }

    public boolean isReadOnly() {
        return this.fReadOnly;
    }

    public boolean isContributed() {
        return this.getConfigurationElement() != null;
    }
}

