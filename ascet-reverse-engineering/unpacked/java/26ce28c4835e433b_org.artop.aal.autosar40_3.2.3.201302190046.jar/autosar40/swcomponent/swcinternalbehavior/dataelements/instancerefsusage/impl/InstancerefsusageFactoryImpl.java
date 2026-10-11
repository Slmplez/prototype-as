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
package autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.impl;

import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusageFactory;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusagePackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.ParameterInAtomicSWCTypeInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.VariableInAtomicSWCTypeInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.impl.ParameterInAtomicSWCTypeInstanceRefImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.impl.VariableInAtomicSWCTypeInstanceRefImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstancerefsusageFactoryImpl
extends EFactoryImpl
implements InstancerefsusageFactory {
    public static InstancerefsusageFactory init() {
        try {
            InstancerefsusageFactory theInstancerefsusageFactory = (InstancerefsusageFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/de/iru");
            if (theInstancerefsusageFactory != null) {
                return theInstancerefsusageFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstancerefsusageFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createVariableInAtomicSWCTypeInstanceRef();
            }
            case 1: {
                return this.createParameterInAtomicSWCTypeInstanceRef();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public VariableInAtomicSWCTypeInstanceRef createVariableInAtomicSWCTypeInstanceRef() {
        VariableInAtomicSWCTypeInstanceRefImpl variableInAtomicSWCTypeInstanceRef = new VariableInAtomicSWCTypeInstanceRefImpl();
        return variableInAtomicSWCTypeInstanceRef;
    }

    public ParameterInAtomicSWCTypeInstanceRef createParameterInAtomicSWCTypeInstanceRef() {
        ParameterInAtomicSWCTypeInstanceRefImpl parameterInAtomicSWCTypeInstanceRef = new ParameterInAtomicSWCTypeInstanceRefImpl();
        return parameterInAtomicSWCTypeInstanceRef;
    }

    public InstancerefsusagePackage getInstancerefsusagePackage() {
        return (InstancerefsusagePackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefsusagePackage getPackage() {
        return InstancerefsusagePackage.eINSTANCE;
    }
}

