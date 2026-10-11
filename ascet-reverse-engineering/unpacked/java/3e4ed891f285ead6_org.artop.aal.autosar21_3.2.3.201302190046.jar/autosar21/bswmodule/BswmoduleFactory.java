/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.bswmodule;

import autosar21.bswmodule.BswModuleDescription;
import autosar21.bswmodule.BswmodulePackage;
import autosar21.bswmodule.impl.BswmoduleFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BswmoduleFactory
extends EFactory {
    public static final BswmoduleFactory eINSTANCE = BswmoduleFactoryImpl.init();

    public BswModuleDescription createBswModuleDescription();

    public BswmodulePackage getBswmodulePackage();
}

