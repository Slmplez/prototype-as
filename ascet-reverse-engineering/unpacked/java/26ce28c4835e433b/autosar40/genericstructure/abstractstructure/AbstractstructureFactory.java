/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.abstractstructure;

import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.abstractstructure.impl.AbstractstructureFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AbstractstructureFactory
extends EFactory {
    public static final AbstractstructureFactory eINSTANCE = AbstractstructureFactoryImpl.init();

    public AbstractstructurePackage getAbstractstructurePackage();
}

