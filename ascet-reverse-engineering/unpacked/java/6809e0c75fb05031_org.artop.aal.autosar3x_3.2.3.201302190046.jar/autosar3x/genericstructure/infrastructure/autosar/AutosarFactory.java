/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.infrastructure.autosar;

import autosar3x.genericstructure.infrastructure.autosar.ARPackage;
import autosar3x.genericstructure.infrastructure.autosar.AUTOSAR;
import autosar3x.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar3x.genericstructure.infrastructure.autosar.impl.AutosarFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AutosarFactory
extends EFactory {
    public static final AutosarFactory eINSTANCE = AutosarFactoryImpl.init();

    public ARPackage createARPackage();

    public AUTOSAR createAUTOSAR();

    public AutosarPackage getAutosarPackage();
}

