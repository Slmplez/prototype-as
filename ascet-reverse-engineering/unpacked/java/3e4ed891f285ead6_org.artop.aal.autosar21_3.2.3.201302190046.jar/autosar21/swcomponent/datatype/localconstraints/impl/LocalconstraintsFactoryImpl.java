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
package autosar21.swcomponent.datatype.localconstraints.impl;

import autosar21.swcomponent.datatype.localconstraints.Interstring;
import autosar21.swcomponent.datatype.localconstraints.IntervalTypeEnum;
import autosar21.swcomponent.datatype.localconstraints.Limit;
import autosar21.swcomponent.datatype.localconstraints.LocalconstraintsFactory;
import autosar21.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar21.swcomponent.datatype.localconstraints.impl.InterstringImpl;
import autosar21.swcomponent.datatype.localconstraints.impl.LimitImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class LocalconstraintsFactoryImpl
extends EFactoryImpl
implements LocalconstraintsFactory {
    public static LocalconstraintsFactory init() {
        try {
            LocalconstraintsFactory theLocalconstraintsFactory = (LocalconstraintsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/d/lc");
            if (theLocalconstraintsFactory != null) {
                return theLocalconstraintsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new LocalconstraintsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createInterstring();
            }
            case 1: {
                return this.createLimit();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.createIntervalTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.convertIntervalTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public Interstring createInterstring() {
        InterstringImpl interstring = new InterstringImpl();
        return interstring;
    }

    public Limit createLimit() {
        LimitImpl limit = new LimitImpl();
        return limit;
    }

    public IntervalTypeEnum createIntervalTypeEnumFromString(EDataType eDataType, String initialValue) {
        IntervalTypeEnum result = IntervalTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertIntervalTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public LocalconstraintsPackage getLocalconstraintsPackage() {
        return (LocalconstraintsPackage)this.getEPackage();
    }

    @Deprecated
    public static LocalconstraintsPackage getPackage() {
        return LocalconstraintsPackage.eINSTANCE;
    }
}

