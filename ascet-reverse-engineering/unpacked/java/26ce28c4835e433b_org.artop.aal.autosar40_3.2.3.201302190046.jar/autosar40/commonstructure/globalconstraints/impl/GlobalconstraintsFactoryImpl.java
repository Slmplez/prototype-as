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
package autosar40.commonstructure.globalconstraints.impl;

import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.commonstructure.globalconstraints.DataConstrRule;
import autosar40.commonstructure.globalconstraints.GlobalconstraintsFactory;
import autosar40.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar40.commonstructure.globalconstraints.InternalConstrs;
import autosar40.commonstructure.globalconstraints.PhysConstrs;
import autosar40.commonstructure.globalconstraints.ScaleConstr;
import autosar40.commonstructure.globalconstraints.ScaleConstrValidityEnum;
import autosar40.commonstructure.globalconstraints.ScaleConstrs;
import autosar40.commonstructure.globalconstraints.impl.DataConstrImpl;
import autosar40.commonstructure.globalconstraints.impl.DataConstrRuleImpl;
import autosar40.commonstructure.globalconstraints.impl.InternalConstrsImpl;
import autosar40.commonstructure.globalconstraints.impl.PhysConstrsImpl;
import autosar40.commonstructure.globalconstraints.impl.ScaleConstrImpl;
import autosar40.commonstructure.globalconstraints.impl.ScaleConstrsImpl;
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
            GlobalconstraintsFactory theGlobalconstraintsFactory = (GlobalconstraintsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/gc");
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
                return this.createInternalConstrs();
            }
            case 2: {
                return this.createScaleConstr();
            }
            case 3: {
                return this.createPhysConstrs();
            }
            case 4: {
                return this.createScaleConstrs();
            }
            case 5: {
                return this.createDataConstr();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.createScaleConstrValidityEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.convertScaleConstrValidityEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public DataConstrRule createDataConstrRule() {
        DataConstrRuleImpl dataConstrRule = new DataConstrRuleImpl();
        return dataConstrRule;
    }

    public InternalConstrs createInternalConstrs() {
        InternalConstrsImpl internalConstrs = new InternalConstrsImpl();
        return internalConstrs;
    }

    public ScaleConstr createScaleConstr() {
        ScaleConstrImpl scaleConstr = new ScaleConstrImpl();
        return scaleConstr;
    }

    public PhysConstrs createPhysConstrs() {
        PhysConstrsImpl physConstrs = new PhysConstrsImpl();
        return physConstrs;
    }

    public ScaleConstrs createScaleConstrs() {
        ScaleConstrsImpl scaleConstrs = new ScaleConstrsImpl();
        return scaleConstrs;
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

