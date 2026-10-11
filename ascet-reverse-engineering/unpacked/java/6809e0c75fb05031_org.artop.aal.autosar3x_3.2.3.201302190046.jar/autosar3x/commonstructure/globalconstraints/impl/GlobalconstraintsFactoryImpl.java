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
package autosar3x.commonstructure.globalconstraints.impl;

import autosar3x.commonstructure.globalconstraints.DataConstr;
import autosar3x.commonstructure.globalconstraints.DataConstrRule;
import autosar3x.commonstructure.globalconstraints.GlobalconstraintsFactory;
import autosar3x.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar3x.commonstructure.globalconstraints.InternalConstrs;
import autosar3x.commonstructure.globalconstraints.PhysConstrs;
import autosar3x.commonstructure.globalconstraints.ScaleConstr;
import autosar3x.commonstructure.globalconstraints.ScaleConstrValidityEnum;
import autosar3x.commonstructure.globalconstraints.ScaleConstrs;
import autosar3x.commonstructure.globalconstraints.SwConstrObjects;
import autosar3x.commonstructure.globalconstraints.impl.DataConstrImpl;
import autosar3x.commonstructure.globalconstraints.impl.DataConstrRuleImpl;
import autosar3x.commonstructure.globalconstraints.impl.InternalConstrsImpl;
import autosar3x.commonstructure.globalconstraints.impl.PhysConstrsImpl;
import autosar3x.commonstructure.globalconstraints.impl.ScaleConstrImpl;
import autosar3x.commonstructure.globalconstraints.impl.ScaleConstrsImpl;
import autosar3x.commonstructure.globalconstraints.impl.SwConstrObjectsImpl;
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
            GlobalconstraintsFactory theGlobalconstraintsFactory = (GlobalconstraintsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/gc");
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
                return this.createDataConstr();
            }
            case 1: {
                return this.createSwConstrObjects();
            }
            case 2: {
                return this.createDataConstrRule();
            }
            case 3: {
                return this.createPhysConstrs();
            }
            case 4: {
                return this.createScaleConstr();
            }
            case 5: {
                return this.createInternalConstrs();
            }
            case 6: {
                return this.createScaleConstrs();
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

    public DataConstr createDataConstr() {
        DataConstrImpl dataConstr = new DataConstrImpl();
        return dataConstr;
    }

    public SwConstrObjects createSwConstrObjects() {
        SwConstrObjectsImpl swConstrObjects = new SwConstrObjectsImpl();
        return swConstrObjects;
    }

    public DataConstrRule createDataConstrRule() {
        DataConstrRuleImpl dataConstrRule = new DataConstrRuleImpl();
        return dataConstrRule;
    }

    public PhysConstrs createPhysConstrs() {
        PhysConstrsImpl physConstrs = new PhysConstrsImpl();
        return physConstrs;
    }

    public ScaleConstr createScaleConstr() {
        ScaleConstrImpl scaleConstr = new ScaleConstrImpl();
        return scaleConstr;
    }

    public InternalConstrs createInternalConstrs() {
        InternalConstrsImpl internalConstrs = new InternalConstrsImpl();
        return internalConstrs;
    }

    public ScaleConstrs createScaleConstrs() {
        ScaleConstrsImpl scaleConstrs = new ScaleConstrsImpl();
        return scaleConstrs;
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

