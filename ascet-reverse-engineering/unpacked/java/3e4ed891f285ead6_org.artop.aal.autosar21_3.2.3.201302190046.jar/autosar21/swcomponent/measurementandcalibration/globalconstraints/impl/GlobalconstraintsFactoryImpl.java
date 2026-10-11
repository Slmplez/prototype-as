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
package autosar21.swcomponent.measurementandcalibration.globalconstraints.impl;

import autosar21.swcomponent.measurementandcalibration.globalconstraints.DataConstr;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.DataConstrRule;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.GlobalconstraintsFactory;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.GlobalconstraintsPackage;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.InternalConstrs;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.PhysConstrs;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.ScaleConstr;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.ScaleConstrValidityEnum;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.ScaleConstrs;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.SwConstrObjects;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.impl.DataConstrImpl;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.impl.DataConstrRuleImpl;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.impl.InternalConstrsImpl;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.impl.PhysConstrsImpl;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.impl.ScaleConstrImpl;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.impl.ScaleConstrsImpl;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.impl.SwConstrObjectsImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GlobalconstraintsFactoryImpl
extends EFactoryImpl
implements GlobalconstraintsFactory {
    public static GlobalconstraintsFactory init() {
        try {
            GlobalconstraintsFactory theGlobalconstraintsFactory = (GlobalconstraintsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/mac/gc");
            if (theGlobalconstraintsFactory != null) {
                return theGlobalconstraintsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GlobalconstraintsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createDataConstrRule();
            }
            case 1: {
                return this.createPhysConstrs();
            }
            case 2: {
                return this.createInternalConstrs();
            }
            case 3: {
                return this.createScaleConstr();
            }
            case 4: {
                return this.createScaleConstrs();
            }
            case 5: {
                return this.createSwConstrObjects();
            }
            case 6: {
                return this.createDataConstr();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.createScaleConstrValidityEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.convertScaleConstrValidityEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public DataConstrRule createDataConstrRule() {
        DataConstrRuleImpl dataConstrRule = new DataConstrRuleImpl();
        return dataConstrRule;
    }

    public PhysConstrs createPhysConstrs() {
        PhysConstrsImpl physConstrs = new PhysConstrsImpl();
        return physConstrs;
    }

    public InternalConstrs createInternalConstrs() {
        InternalConstrsImpl internalConstrs = new InternalConstrsImpl();
        return internalConstrs;
    }

    public ScaleConstr createScaleConstr() {
        ScaleConstrImpl scaleConstr = new ScaleConstrImpl();
        return scaleConstr;
    }

    public ScaleConstrs createScaleConstrs() {
        ScaleConstrsImpl scaleConstrs = new ScaleConstrsImpl();
        return scaleConstrs;
    }

    public SwConstrObjects createSwConstrObjects() {
        SwConstrObjectsImpl swConstrObjects = new SwConstrObjectsImpl();
        return swConstrObjects;
    }

    public DataConstr createDataConstr() {
        DataConstrImpl dataConstr = new DataConstrImpl();
        return dataConstr;
    }

    public ScaleConstrValidityEnum createScaleConstrValidityEnumFromString(EDataType eDataType, String initialValue) {
        ScaleConstrValidityEnum result = ScaleConstrValidityEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertScaleConstrValidityEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public GlobalconstraintsPackage getGlobalconstraintsPackage() {
        return (GlobalconstraintsPackage)this.getEPackage();
    }

    @Deprecated
    public static GlobalconstraintsPackage getPackage() {
        return GlobalconstraintsPackage.eINSTANCE;
    }
}

