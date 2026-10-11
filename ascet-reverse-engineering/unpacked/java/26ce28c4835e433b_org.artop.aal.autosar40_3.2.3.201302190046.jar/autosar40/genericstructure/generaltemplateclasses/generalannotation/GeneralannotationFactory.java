/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.generalannotation;

import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralannotationPackage;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.impl.GeneralannotationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GeneralannotationFactory
extends EFactory {
    public static final GeneralannotationFactory eINSTANCE = GeneralannotationFactoryImpl.init();

    public GeneralannotationPackage getGeneralannotationPackage();
}

