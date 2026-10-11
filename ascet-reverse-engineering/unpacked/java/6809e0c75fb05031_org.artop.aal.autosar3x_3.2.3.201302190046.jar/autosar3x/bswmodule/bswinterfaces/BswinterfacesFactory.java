/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.bswmodule.bswinterfaces;

import autosar3x.bswmodule.bswinterfaces.BswModuleDependency;
import autosar3x.bswmodule.bswinterfaces.BswModuleEntry;
import autosar3x.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar3x.bswmodule.bswinterfaces.impl.BswinterfacesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BswinterfacesFactory
extends EFactory {
    public static final BswinterfacesFactory eINSTANCE = BswinterfacesFactoryImpl.init();

    public BswModuleDependency createBswModuleDependency();

    public BswModuleEntry createBswModuleEntry();

    public BswinterfacesPackage getBswinterfacesPackage();
}

