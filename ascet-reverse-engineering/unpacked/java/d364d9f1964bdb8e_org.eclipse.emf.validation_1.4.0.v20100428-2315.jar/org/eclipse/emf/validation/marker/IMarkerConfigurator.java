/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.emf.validation.marker;

import org.eclipse.core.resources.IMarker;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.emf.validation.model.IConstraintStatus;

public interface IMarkerConfigurator {
    public void appendMarkerConfiguration(IMarker var1, IConstraintStatus var2) throws CoreException;
}

