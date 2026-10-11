/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.impl.InlinetextmodelFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InlinetextmodelFactory
extends EFactory {
    public static final InlinetextmodelFactory eINSTANCE = InlinetextmodelFactoryImpl.init();

    public InlinetextmodelPackage getInlinetextmodelPackage();
}

