/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.variables;

import org.eclipse.core.internal.variables.StringVariable;
import org.eclipse.core.internal.variables.VariablesMessages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.IDynamicVariableResolver;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.osgi.util.NLS;

public class DynamicVariable
extends StringVariable
implements IDynamicVariable {
    private IDynamicVariableResolver fResolver;

    public String getValue(String argument) throws CoreException {
        if (!this.supportsArgument() && argument != null && argument.length() > 0) {
            throw new CoreException((IStatus)new Status(4, VariablesPlugin.getUniqueIdentifier(), 120, NLS.bind((String)VariablesMessages.DynamicVariable_0, (Object[])new String[]{argument, this.getName()}), null));
        }
        if (this.fResolver == null) {
            String name = this.getConfigurationElement().getAttribute("resolver");
            if (name == null) {
                throw new CoreException((IStatus)new Status(4, VariablesPlugin.getUniqueIdentifier(), 120, NLS.bind((String)"Contributed context variable {0} must specify a resolver.", (Object[])new String[]{this.getName()}), null));
            }
            Object object = this.getConfigurationElement().createExecutableExtension("resolver");
            if (object instanceof IDynamicVariableResolver) {
                this.fResolver = (IDynamicVariableResolver)object;
            } else {
                throw new CoreException((IStatus)new Status(4, VariablesPlugin.getUniqueIdentifier(), 120, NLS.bind((String)"Contributed context variable resolver for {0} must be an instance of IContextVariableResolver.", (Object[])new String[]{this.getName()}), null));
            }
        }
        return this.fResolver.resolveValue(this, argument);
    }

    public DynamicVariable(String name, String description, IConfigurationElement configurationElement) {
        super(name, description, configurationElement);
    }

    public boolean supportsArgument() {
        String arg = this.getConfigurationElement().getAttribute("supportsArgument");
        return arg == null || Boolean.valueOf(arg) != false;
    }
}

