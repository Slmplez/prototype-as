/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.impl;

import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.ComponentlocalcalprmFactory;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.ComponentlocalcalprmPackage;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.LocalParameterInitValueAssignment;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.impl.LocalParameterInitValueAssignmentImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ComponentlocalcalprmFactoryImpl
extends EFactoryImpl
implements ComponentlocalcalprmFactory {
    public static ComponentlocalcalprmFactory init() {
        try {
            ComponentlocalcalprmFactory theComponentlocalcalprmFactory = (ComponentlocalcalprmFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/sib/clc");
            if (theComponentlocalcalprmFactory != null) {
                return theComponentlocalcalprmFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ComponentlocalcalprmFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createLocalParameterInitValueAssignment();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public LocalParameterInitValueAssignment createLocalParameterInitValueAssignment() {
        LocalParameterInitValueAssignmentImpl localParameterInitValueAssignment = new LocalParameterInitValueAssignmentImpl();
        return localParameterInitValueAssignment;
    }

    public ComponentlocalcalprmPackage getComponentlocalcalprmPackage() {
        return (ComponentlocalcalprmPackage)this.getEPackage();
    }

    @Deprecated
    public static ComponentlocalcalprmPackage getPackage() {
        return ComponentlocalcalprmPackage.eINSTANCE;
    }
}

