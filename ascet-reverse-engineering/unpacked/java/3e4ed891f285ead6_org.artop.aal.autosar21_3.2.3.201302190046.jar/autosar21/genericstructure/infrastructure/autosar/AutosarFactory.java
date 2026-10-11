/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.genericstructure.infrastructure.autosar;

import autosar21.genericstructure.infrastructure.autosar.ARPackage;
import autosar21.genericstructure.infrastructure.autosar.AUTOSAR;
import autosar21.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar21.genericstructure.infrastructure.autosar.impl.AutosarFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AutosarFactory
extends EFactory {
    public static final AutosarFactory eINSTANCE = AutosarFactoryImpl.init();

    public ARPackage createARPackage();

    public AUTOSAR createAUTOSAR();

    public AutosarPackage getAutosarPackage();
}

