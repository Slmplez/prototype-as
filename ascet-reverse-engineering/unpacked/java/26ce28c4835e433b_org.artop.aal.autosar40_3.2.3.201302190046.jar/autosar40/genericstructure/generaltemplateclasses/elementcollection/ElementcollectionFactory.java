/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.elementcollection;

import autosar40.genericstructure.generaltemplateclasses.elementcollection.Collection;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.ElementcollectionPackage;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.impl.ElementcollectionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ElementcollectionFactory
extends EFactory {
    public static final ElementcollectionFactory eINSTANCE = ElementcollectionFactoryImpl.init();

    public Collection createCollection();

    public ElementcollectionPackage getElementcollectionPackage();
}

