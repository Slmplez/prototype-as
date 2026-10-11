/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.internalbehavior.dataelements.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.dataelements.DataReadAccess;
import autosar21.swcomponent.internalbehavior.dataelements.DataReceivePoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataSendPoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataWriteAccess;
import autosar21.swcomponent.internalbehavior.dataelements.DataelementsPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DataelementsSwitch<T> {
    protected static DataelementsPackage modelPackage;

    public DataelementsSwitch() {
        if (modelPackage == null) {
            modelPackage = DataelementsPackage.eINSTANCE;
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
                DataReceivePoint dataReceivePoint = (DataReceivePoint)theEObject;
                T result = this.caseDataReceivePoint(dataReceivePoint);
                if (result == null) {
                    result = this.caseIdentifiable(dataReceivePoint);
                }
                if (result == null) {
                    result = this.caseGVariableAccess(dataReceivePoint);
                }
                if (result == null) {
                    result = this.caseARObject(dataReceivePoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataReceivePoint);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dataReceivePoint);
                }
                if (result == null) {
                    result = this.caseGARObject(dataReceivePoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                DataReadAccess dataReadAccess = (DataReadAccess)theEObject;
                T result = this.caseDataReadAccess(dataReadAccess);
                if (result == null) {
                    result = this.caseIdentifiable(dataReadAccess);
                }
                if (result == null) {
                    result = this.caseGVariableAccess(dataReadAccess);
                }
                if (result == null) {
                    result = this.caseARObject(dataReadAccess);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataReadAccess);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dataReadAccess);
                }
                if (result == null) {
                    result = this.caseGARObject(dataReadAccess);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                DataSendPoint dataSendPoint = (DataSendPoint)theEObject;
                T result = this.caseDataSendPoint(dataSendPoint);
                if (result == null) {
                    result = this.caseIdentifiable(dataSendPoint);
                }
                if (result == null) {
                    result = this.caseGVariableAccess(dataSendPoint);
                }
                if (result == null) {
                    result = this.caseARObject(dataSendPoint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataSendPoint);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dataSendPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(dataSendPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                DataWriteAccess dataWriteAccess = (DataWriteAccess)theEObject;
                T result = this.caseDataWriteAccess(dataWriteAccess);
                if (result == null) {
                    result = this.caseIdentifiable(dataWriteAccess);
                }
                if (result == null) {
                    result = this.caseGVariableAccess(dataWriteAccess);
                }
                if (result == null) {
                    result = this.caseARObject(dataWriteAccess);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataWriteAccess);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dataWriteAccess);
                }
                if (result == null) {
                    result = this.caseGARObject(dataWriteAccess);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseDataReceivePoint(DataReceivePoint object) {
        return null;
    }

    public T caseDataReadAccess(DataReadAccess object) {
        return null;
    }

    public T caseDataSendPoint(DataSendPoint object) {
        return null;
    }

    public T caseDataWriteAccess(DataWriteAccess object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseGVariableAccess(GVariableAccess object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

