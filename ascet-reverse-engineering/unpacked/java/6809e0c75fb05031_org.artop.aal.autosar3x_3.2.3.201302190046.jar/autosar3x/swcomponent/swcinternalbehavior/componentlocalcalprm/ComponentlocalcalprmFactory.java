/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm;

import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.ComponentlocalcalprmPackage;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.LocalParameterInitValueAssignment;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.impl.ComponentlocalcalprmFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComponentlocalcalprmFactory
extends EFactory {
    public static final ComponentlocalcalprmFactory eINSTANCE = ComponentlocalcalprmFactoryImpl.init();

    public LocalParameterInitValueAssignment createLocalParameterInitValueAssignment();

    public ComponentlocalcalprmPackage getComponentlocalcalprmPackage();
}

