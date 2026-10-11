/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.bswmodule.bswinterfaces;

import autosar40.bswmodule.bswinterfaces.BswModuleDependency;
import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.bswmodule.bswinterfaces.BswModuleEntryRefConditional;
import autosar40.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar40.bswmodule.bswinterfaces.impl.BswinterfacesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BswinterfacesFactory
extends EFactory {
    public static final BswinterfacesFactory eINSTANCE = BswinterfacesFactoryImpl.init();

    public BswModuleEntryRefConditional createBswModuleEntryRefConditional();

    public BswModuleDependency createBswModuleDependency();

    public BswModuleEntry createBswModuleEntry();

    public BswinterfacesPackage getBswinterfacesPackage();
}

