/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.internal.core;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILogicalStructureType;
import org.eclipse.debug.core.model.ILogicalStructureTypeDelegate;
import org.eclipse.debug.core.model.ILogicalStructureTypeDelegate2;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public class LogicalStructureType
implements ILogicalStructureType {
    private IConfigurationElement fConfigurationElement;
    private ILogicalStructureTypeDelegate fDelegate;
    private String fModelId;
    private boolean fVerifiedDescription = false;

    public LogicalStructureType(IConfigurationElement element) throws CoreException {
        this.fConfigurationElement = element;
        this.verifyAttributes();
    }

    private void verifyAttributes() throws CoreException {
        this.verifyAttributeExists("id");
        this.verifyAttributeExists("class");
        this.fModelId = this.fConfigurationElement.getAttribute("modelIdentifier");
        if (this.fModelId == null) {
            this.missingAttribute("modelIdentifier");
        }
    }

    private void verifyAttributeExists(String name) throws CoreException {
        if (this.fConfigurationElement.getAttribute(name) == null) {
            this.missingAttribute(name);
        }
    }

    private void missingAttribute(String attrName) throws CoreException {
        throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 125, MessageFormat.format((String)DebugCoreMessages.LogicalStructureType_1, (Object[])new String[]{attrName}), null));
    }

    public String getDescription() {
        return this.fConfigurationElement.getAttribute("description");
    }

    public String getId() {
        return this.fConfigurationElement.getAttribute("id");
    }

    public IValue getLogicalStructure(IValue value) throws CoreException {
        return this.getDelegate().getLogicalStructure(value);
    }

    public boolean providesLogicalStructure(IValue value) {
        if (value.getModelIdentifier().equals(this.fModelId)) {
            return this.getDelegate().providesLogicalStructure(value);
        }
        return false;
    }

    protected ILogicalStructureTypeDelegate getDelegate() {
        if (this.fDelegate == null) {
            try {
                this.fDelegate = (ILogicalStructureTypeDelegate)this.fConfigurationElement.createExecutableExtension("class");
            }
            catch (CoreException e) {
                DebugPlugin.log(e);
            }
        }
        return this.fDelegate;
    }

    public String getDescription(IValue value) {
        String description;
        ILogicalStructureTypeDelegate delegate = this.getDelegate();
        if (delegate instanceof ILogicalStructureTypeDelegate2) {
            ILogicalStructureTypeDelegate2 d2 = (ILogicalStructureTypeDelegate2)((Object)delegate);
            return d2.getDescription(value);
        }
        if (!this.fVerifiedDescription) {
            this.fVerifiedDescription = true;
            try {
                this.verifyAttributeExists("description");
            }
            catch (CoreException e) {
                DebugPlugin.log(e);
            }
        }
        if ((description = this.getDescription()) == null) {
            return DebugCoreMessages.LogicalStructureType_0;
        }
        return description;
    }
}

