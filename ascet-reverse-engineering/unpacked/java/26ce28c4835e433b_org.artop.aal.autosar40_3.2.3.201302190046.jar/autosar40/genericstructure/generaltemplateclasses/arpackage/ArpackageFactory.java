/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.arpackage;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackagePackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ReferenceBase;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ArpackageFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ArpackageFactory
extends EFactory {
    public static final ArpackageFactory eINSTANCE = ArpackageFactoryImpl.init();

    public ARPackage createARPackage();

    public ReferenceBase createReferenceBase();

    public ArpackagePackage getArpackagePackage();
}

