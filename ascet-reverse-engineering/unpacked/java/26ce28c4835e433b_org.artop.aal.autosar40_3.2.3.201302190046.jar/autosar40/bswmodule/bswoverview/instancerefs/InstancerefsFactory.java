/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.bswmodule.bswoverview.instancerefs;

import autosar40.bswmodule.bswoverview.instancerefs.InstancerefsPackage;
import autosar40.bswmodule.bswoverview.instancerefs.ModeInBswModuleDescriptionInstanceRef;
import autosar40.bswmodule.bswoverview.instancerefs.impl.InstancerefsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefsFactory
extends EFactory {
    public static final InstancerefsFactory eINSTANCE = InstancerefsFactoryImpl.init();

    public ModeInBswModuleDescriptionInstanceRef createModeInBswModuleDescriptionInstanceRef();

    public InstancerefsPackage getInstancerefsPackage();
}

