/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.nvblockcomponent;

import autosar40.swcomponent.nvblockcomponent.NvBlockDataMapping;
import autosar40.swcomponent.nvblockcomponent.NvBlockDescriptor;
import autosar40.swcomponent.nvblockcomponent.NvblockcomponentPackage;
import autosar40.swcomponent.nvblockcomponent.impl.NvblockcomponentFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface NvblockcomponentFactory
extends EFactory {
    public static final NvblockcomponentFactory eINSTANCE = NvblockcomponentFactoryImpl.init();

    public NvBlockDataMapping createNvBlockDataMapping();

    public NvBlockDescriptor createNvBlockDescriptor();

    public NvblockcomponentPackage getNvblockcomponentPackage();
}

