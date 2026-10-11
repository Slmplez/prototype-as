/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.genericstructure.infrastructure;

import autosar21.genericstructure.infrastructure.InfrastructurePackage;
import autosar21.genericstructure.infrastructure.impl.InfrastructureFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InfrastructureFactory
extends EFactory {
    public static final InfrastructureFactory eINSTANCE = InfrastructureFactoryImpl.init();

    public InfrastructurePackage getInfrastructurePackage();
}

