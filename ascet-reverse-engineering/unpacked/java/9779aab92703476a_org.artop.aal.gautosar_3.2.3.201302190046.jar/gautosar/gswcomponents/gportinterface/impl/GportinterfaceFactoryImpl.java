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
package gautosar.gswcomponents.gportinterface.impl;

import gautosar.gswcomponents.gportinterface.GArgumentDirectionEnum;
import gautosar.gswcomponents.gportinterface.GportinterfaceFactory;
import gautosar.gswcomponents.gportinterface.GportinterfacePackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GportinterfaceFactoryImpl
extends EFactoryImpl
implements GportinterfaceFactory {
    public static GportinterfaceFactory init() {
        try {
            GportinterfaceFactory theGportinterfaceFactory = (GportinterfaceFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/pi");
            if (theGportinterfaceFactory != null) {
                return theGportinterfaceFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GportinterfaceFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 10: {
                return this.createGArgumentDirectionEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 10: {
                return this.convertGArgumentDirectionEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public GArgumentDirectionEnum createGArgumentDirectionEnumFromString(EDataType eDataType, String initialValue) {
        GArgumentDirectionEnum result = GArgumentDirectionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertGArgumentDirectionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public GportinterfacePackage getGportinterfacePackage() {
        return (GportinterfacePackage)this.getEPackage();
    }

    @Deprecated
    public static GportinterfacePackage getPackage() {
        return GportinterfacePackage.eINSTANCE;
    }
}

