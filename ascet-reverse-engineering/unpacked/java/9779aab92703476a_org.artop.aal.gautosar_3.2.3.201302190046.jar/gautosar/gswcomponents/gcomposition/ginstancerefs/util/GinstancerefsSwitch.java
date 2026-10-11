/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gcomposition.ginstancerefs.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeProviderIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeRequesterIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GinstancerefsSwitch<T> {
    protected static GinstancerefsPackage modelPackage;

    public GinstancerefsSwitch() {
        if (modelPackage == null) {
            modelPackage = GinstancerefsPackage.eINSTANCE;
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
                GPPortInCompositionIRef gpPortInCompositionIRef = (GPPortInCompositionIRef)theEObject;
                T result = this.caseGPPortInCompositionIRef(gpPortInCompositionIRef);
                if (result == null) {
                    result = this.caseGARObject(gpPortInCompositionIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GRPortInCompositionIRef grPortInCompositionIRef = (GRPortInCompositionIRef)theEObject;
                T result = this.caseGRPortInCompositionIRef(grPortInCompositionIRef);
                if (result == null) {
                    result = this.caseGARObject(grPortInCompositionIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GAssemblyConnectorPrototypeRequesterIRef gAssemblyConnectorPrototypeRequesterIRef = (GAssemblyConnectorPrototypeRequesterIRef)theEObject;
                T result = this.caseGAssemblyConnectorPrototypeRequesterIRef(gAssemblyConnectorPrototypeRequesterIRef);
                if (result == null) {
                    result = this.caseGRPortInCompositionIRef(gAssemblyConnectorPrototypeRequesterIRef);
                }
                if (result == null) {
                    result = this.caseGARObject(gAssemblyConnectorPrototypeRequesterIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GAssemblyConnectorPrototypeProviderIRef gAssemblyConnectorPrototypeProviderIRef = (GAssemblyConnectorPrototypeProviderIRef)theEObject;
                T result = this.caseGAssemblyConnectorPrototypeProviderIRef(gAssemblyConnectorPrototypeProviderIRef);
                if (result == null) {
                    result = this.caseGPPortInCompositionIRef(gAssemblyConnectorPrototypeProviderIRef);
                }
                if (result == null) {
                    result = this.caseGARObject(gAssemblyConnectorPrototypeProviderIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGPPortInCompositionIRef(GPPortInCompositionIRef object) {
        return null;
    }

    public T caseGRPortInCompositionIRef(GRPortInCompositionIRef object) {
        return null;
    }

    public T caseGAssemblyConnectorPrototypeRequesterIRef(GAssemblyConnectorPrototypeRequesterIRef object) {
        return null;
    }

    public T caseGAssemblyConnectorPrototypeProviderIRef(GAssemblyConnectorPrototypeProviderIRef object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

