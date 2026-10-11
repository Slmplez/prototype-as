/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.debug.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.debug.core.model.IBreakpointImportParticipant;

public class BreakpointImportParticipantDelegate {
    private IConfigurationElement fElement = null;
    private IBreakpointImportParticipant fParticipant = null;

    public BreakpointImportParticipantDelegate(IConfigurationElement element) {
        this.fElement = element;
    }

    public IBreakpointImportParticipant getDelegate() throws CoreException {
        if (this.fParticipant == null) {
            this.fParticipant = (IBreakpointImportParticipant)this.fElement.createExecutableExtension("participant");
        }
        return this.fParticipant;
    }

    public String getType() throws CoreException {
        return this.fElement.getAttribute("type");
    }
}

