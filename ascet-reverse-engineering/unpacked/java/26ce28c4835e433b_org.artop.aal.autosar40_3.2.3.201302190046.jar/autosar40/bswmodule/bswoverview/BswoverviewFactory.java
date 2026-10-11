/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.bswmodule.bswoverview;

import autosar40.bswmodule.bswoverview.BswModuleDescription;
import autosar40.bswmodule.bswoverview.BswoverviewPackage;
import autosar40.bswmodule.bswoverview.impl.BswoverviewFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BswoverviewFactory
extends EFactory {
    public static final BswoverviewFactory eINSTANCE = BswoverviewFactoryImpl.init();

    public BswModuleDescription createBswModuleDescription();

    public BswoverviewPackage getBswoverviewPackage();
}

