/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.genericstructure.commonpatterns.inlinetextmodel;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelPackage;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.impl.InlinetextmodelFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InlinetextmodelFactory
extends EFactory {
    public static final InlinetextmodelFactory eINSTANCE = InlinetextmodelFactoryImpl.init();

    public InlinetextmodelPackage getInlinetextmodelPackage();
}

