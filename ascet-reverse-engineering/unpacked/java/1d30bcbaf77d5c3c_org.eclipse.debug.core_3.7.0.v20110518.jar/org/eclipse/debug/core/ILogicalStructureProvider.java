/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import org.eclipse.debug.core.ILogicalStructureType;
import org.eclipse.debug.core.model.IValue;

public interface ILogicalStructureProvider {
    public ILogicalStructureType[] getLogicalStructureTypes(IValue var1);
}

