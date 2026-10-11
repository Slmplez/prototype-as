/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.anyinstanceref;

import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyinstancerefPackage;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.impl.AnyinstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AnyinstancerefFactory
extends EFactory {
    public static final AnyinstancerefFactory eINSTANCE = AnyinstancerefFactoryImpl.init();

    public AnyInstanceRef createAnyInstanceRef();

    public AnyinstancerefPackage getAnyinstancerefPackage();
}

