/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.InstancerefPackage;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.ModeSwitchPointModeGroup;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefSwitch<T> {
    protected static InstancerefPackage modelPackage;

    public InstancerefSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                ModeSwitchPointModeGroup modeSwitchPointModeGroup = (ModeSwitchPointModeGroup)theEObject;
                T result = this.caseModeSwitchPointModeGroup(modeSwitchPointModeGroup);
                if (result == null) {
                    result = this.caseARObject(modeSwitchPointModeGroup);
                }
                if (result == null) {
                    result = this.caseGPModeGroupInAtomicSwcIRef(modeSwitchPointModeGroup);
                }
                if (result == null) {
                    result = this.caseGModeGroupInAtomicSwcIRef((GModeGroupInAtomicSwcIRef)modeSwitchPointModeGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchPointModeGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseModeSwitchPointModeGroup(ModeSwitchPointModeGroup object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGModeGroupInAtomicSwcIRef(GModeGroupInAtomicSwcIRef object) {
        return null;
    }

    public T caseGPModeGroupInAtomicSwcIRef(GPModeGroupInAtomicSwcIRef object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

