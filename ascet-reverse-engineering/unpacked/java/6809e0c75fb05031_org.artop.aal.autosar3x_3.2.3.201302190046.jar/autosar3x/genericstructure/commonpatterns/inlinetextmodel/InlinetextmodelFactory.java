/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.impl.InlinetextmodelFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InlinetextmodelFactory
extends EFactory {
    public static final InlinetextmodelFactory eINSTANCE = InlinetextmodelFactoryImpl.init();

    public InlinetextmodelPackage getInlinetextmodelPackage();
}

