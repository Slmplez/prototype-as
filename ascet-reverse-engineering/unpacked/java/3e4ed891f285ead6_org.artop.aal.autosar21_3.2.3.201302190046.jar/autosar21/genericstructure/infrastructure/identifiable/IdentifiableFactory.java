/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.genericstructure.infrastructure.identifiable;

import autosar21.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface IdentifiableFactory
extends EFactory {
    public static final IdentifiableFactory eINSTANCE = IdentifiableFactoryImpl.init();

    public IdentifiablePackage getIdentifiablePackage();
}

