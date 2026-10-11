/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.arobject;

import autosar40.genericstructure.generaltemplateclasses.arobject.ArobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ArobjectFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ArobjectFactory
extends EFactory {
    public static final ArobjectFactory eINSTANCE = ArobjectFactoryImpl.init();

    public ArobjectPackage getArobjectPackage();
}

