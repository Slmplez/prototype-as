/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.impl;

import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.CommunicationApproachType;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterrunnablecommunicationFactory;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterrunnablecommunicationPackage;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.impl.InterRunnableVariableImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InterrunnablecommunicationFactoryImpl
extends EFactoryImpl
implements InterrunnablecommunicationFactory {
    public static InterrunnablecommunicationFactory init() {
        try {
            InterrunnablecommunicationFactory theInterrunnablecommunicationFactory = (InterrunnablecommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/sib/irc");
            if (theInterrunnablecommunicationFactory != null) {
                return theInterrunnablecommunicationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InterrunnablecommunicationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createInterRunnableVariable();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createCommunicationApproachTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertCommunicationApproachTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public InterRunnableVariable createInterRunnableVariable() {
        InterRunnableVariableImpl interRunnableVariable = new InterRunnableVariableImpl();
        return interRunnableVariable;
    }

    public CommunicationApproachType createCommunicationApproachTypeFromString(EDataType eDataType, String initialValue) {
        CommunicationApproachType result = CommunicationApproachType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCommunicationApproachTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public InterrunnablecommunicationPackage getInterrunnablecommunicationPackage() {
        return (InterrunnablecommunicationPackage)this.getEPackage();
    }

    @Deprecated
    public static InterrunnablecommunicationPackage getPackage() {
        return InterrunnablecommunicationPackage.eINSTANCE;
    }
}

