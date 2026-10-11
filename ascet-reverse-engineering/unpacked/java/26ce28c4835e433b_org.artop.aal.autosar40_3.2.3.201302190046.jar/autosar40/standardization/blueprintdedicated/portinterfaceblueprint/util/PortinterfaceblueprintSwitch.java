/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.standardization.blueprintdedicated.portinterfaceblueprint.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortInterfaceBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortinterfaceblueprintPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PortinterfaceblueprintSwitch<T> {
    protected static PortinterfaceblueprintPackage modelPackage;

    public PortinterfaceblueprintSwitch() {
        if (modelPackage == null) {
            modelPackage = PortinterfaceblueprintPackage.eINSTANCE;
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
                PortInterfaceBlueprintMapping portInterfaceBlueprintMapping = (PortInterfaceBlueprintMapping)theEObject;
                T result = this.casePortInterfaceBlueprintMapping(portInterfaceBlueprintMapping);
                if (result == null) {
                    result = this.caseAtpBlueprintMapping(portInterfaceBlueprintMapping);
                }
                if (result == null) {
                    result = this.caseARObject(portInterfaceBlueprintMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(portInterfaceBlueprintMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T casePortInterfaceBlueprintMapping(PortInterfaceBlueprintMapping object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseAtpBlueprintMapping(AtpBlueprintMapping object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

