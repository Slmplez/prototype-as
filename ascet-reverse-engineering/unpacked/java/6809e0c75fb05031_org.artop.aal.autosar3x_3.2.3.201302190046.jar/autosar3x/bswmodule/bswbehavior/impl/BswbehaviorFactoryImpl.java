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
package autosar3x.bswmodule.bswbehavior.impl;

import autosar3x.bswmodule.bswbehavior.BswBehavior;
import autosar3x.bswmodule.bswbehavior.BswCyclicEvent;
import autosar3x.bswmodule.bswbehavior.BswInterruptCategory;
import autosar3x.bswmodule.bswbehavior.BswInterruptEntity;
import autosar3x.bswmodule.bswbehavior.BswModuleEntity;
import autosar3x.bswmodule.bswbehavior.BswSchedulableEntity;
import autosar3x.bswmodule.bswbehavior.BswSporadicEvent;
import autosar3x.bswmodule.bswbehavior.BswbehaviorFactory;
import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.bswmodule.bswbehavior.impl.BswBehaviorImpl;
import autosar3x.bswmodule.bswbehavior.impl.BswCyclicEventImpl;
import autosar3x.bswmodule.bswbehavior.impl.BswInterruptEntityImpl;
import autosar3x.bswmodule.bswbehavior.impl.BswModuleEntityImpl;
import autosar3x.bswmodule.bswbehavior.impl.BswSchedulableEntityImpl;
import autosar3x.bswmodule.bswbehavior.impl.BswSporadicEventImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BswbehaviorFactoryImpl
extends EFactoryImpl
implements BswbehaviorFactory {
    public static BswbehaviorFactory init() {
        try {
            BswbehaviorFactory theBswbehaviorFactory = (BswbehaviorFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/bm/bb");
            if (theBswbehaviorFactory != null) {
                return theBswbehaviorFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new BswbehaviorFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBswBehavior();
            }
            case 2: {
                return this.createBswSchedulableEntity();
            }
            case 3: {
                return this.createBswCyclicEvent();
            }
            case 4: {
                return this.createBswInterruptEntity();
            }
            case 5: {
                return this.createBswSporadicEvent();
            }
            case 6: {
                return this.createBswModuleEntity();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.createBswInterruptCategoryFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.convertBswInterruptCategoryToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public BswBehavior createBswBehavior() {
        BswBehaviorImpl bswBehavior = new BswBehaviorImpl();
        return bswBehavior;
    }

    public BswSchedulableEntity createBswSchedulableEntity() {
        BswSchedulableEntityImpl bswSchedulableEntity = new BswSchedulableEntityImpl();
        return bswSchedulableEntity;
    }

    public BswCyclicEvent createBswCyclicEvent() {
        BswCyclicEventImpl bswCyclicEvent = new BswCyclicEventImpl();
        return bswCyclicEvent;
    }

    public BswInterruptEntity createBswInterruptEntity() {
        BswInterruptEntityImpl bswInterruptEntity = new BswInterruptEntityImpl();
        return bswInterruptEntity;
    }

    public BswSporadicEvent createBswSporadicEvent() {
        BswSporadicEventImpl bswSporadicEvent = new BswSporadicEventImpl();
        return bswSporadicEvent;
    }

    public BswModuleEntity createBswModuleEntity() {
        BswModuleEntityImpl bswModuleEntity = new BswModuleEntityImpl();
        return bswModuleEntity;
    }

    public BswInterruptCategory createBswInterruptCategoryFromString(EDataType eDataType, String initialValue) {
        BswInterruptCategory result = BswInterruptCategory.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertBswInterruptCategoryToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public BswbehaviorPackage getBswbehaviorPackage() {
        return (BswbehaviorPackage)this.getEPackage();
    }

    @Deprecated
    public static BswbehaviorPackage getPackage() {
        return BswbehaviorPackage.eINSTANCE;
    }
}

