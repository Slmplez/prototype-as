/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.model;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.model.IValue;

public interface ILogicalStructureTypeDelegate {
    public boolean providesLogicalStructure(IValue var1);

    public IValue getLogicalStructure(IValue var1) throws CoreException;
}

