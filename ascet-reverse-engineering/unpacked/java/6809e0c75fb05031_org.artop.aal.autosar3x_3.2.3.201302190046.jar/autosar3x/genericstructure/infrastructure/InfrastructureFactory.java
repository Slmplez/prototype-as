/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.infrastructure;

import autosar3x.genericstructure.infrastructure.InfrastructurePackage;
import autosar3x.genericstructure.infrastructure.impl.InfrastructureFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InfrastructureFactory
extends EFactory {
    public static final InfrastructureFactory eINSTANCE = InfrastructureFactoryImpl.init();

    public InfrastructurePackage getInfrastructurePackage();
}

