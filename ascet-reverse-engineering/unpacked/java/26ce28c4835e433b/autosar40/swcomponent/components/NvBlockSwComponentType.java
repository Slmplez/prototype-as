/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.components;

import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.nvblockcomponent.NvBlockDescriptor;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface NvBlockSwComponentType
extends AtomicSwComponentType {
    public EList<NvBlockDescriptor> getNvBlockDescriptors();
}

