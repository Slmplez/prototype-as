/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.bswmodule.bswoverview;

import autosar3x.bswmodule.bswoverview.BswModuleDescription;
import autosar3x.bswmodule.bswoverview.BswoverviewPackage;
import autosar3x.bswmodule.bswoverview.impl.BswoverviewFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BswoverviewFactory
extends EFactory {
    public static final BswoverviewFactory eINSTANCE = BswoverviewFactoryImpl.init();

    public BswModuleDescription createBswModuleDescription();

    public BswoverviewPackage getBswoverviewPackage();
}

