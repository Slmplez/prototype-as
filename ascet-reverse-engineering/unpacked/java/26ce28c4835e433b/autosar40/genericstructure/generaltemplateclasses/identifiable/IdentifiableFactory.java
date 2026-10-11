/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.identifiable;

import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface IdentifiableFactory
extends EFactory {
    public static final IdentifiableFactory eINSTANCE = IdentifiableFactoryImpl.init();

    public IdentifiablePackage getIdentifiablePackage();
}

