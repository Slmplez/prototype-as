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
import org.eclipse.debug.core.ILaunchMode;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public class LaunchMode
implements ILaunchMode {
    private IConfigurationElement fConfigurationElement;

    public LaunchMode(IConfigurationElement element) throws CoreException {
        this.fConfigurationElement = element;
        this.verifyAttributes();
    }

    private void verifyAttributes() throws CoreException {
        this.verifyAttributeExists("mode");
        this.verifyAttributeExists("label");
    }

    private void verifyAttributeExists(String name) throws CoreException {
        if (this.fConfigurationElement.getAttribute(name) == null) {
            this.missingAttribute(name);
        }
    }

    private void missingAttribute(String attrName) throws CoreException {
        throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 125, MessageFormat.format((String)DebugCoreMessages.LaunchMode_1, (Object[])new String[]{attrName}), null));
    }

    public String getIdentifier() {
        return this.fConfigurationElement.getAttribute("mode");
    }

    public String getLabel() {
        return this.fConfigurationElement.getAttribute("label");
    }

    public String getLaunchAsLabel() {
        String label = this.fConfigurationElement.getAttribute("launchAsLabel");
        if (label == null) {
            return MessageFormat.format((String)DebugCoreMessages.LaunchMode_0, (Object[])new String[]{this.getLabel()});
        }
        return label;
    }
}

