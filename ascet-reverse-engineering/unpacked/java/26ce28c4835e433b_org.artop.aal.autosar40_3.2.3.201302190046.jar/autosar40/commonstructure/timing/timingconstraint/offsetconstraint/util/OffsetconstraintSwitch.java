/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.timing.timingconstraint.offsetconstraint.util;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetTimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetconstraintPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OffsetconstraintSwitch<T> {
    protected static OffsetconstraintPackage modelPackage;

    public OffsetconstraintSwitch() {
        if (modelPackage == null) {
            modelPackage = OffsetconstraintPackage.eINSTANCE;
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
                OffsetTimingConstraint offsetTimingConstraint = (OffsetTimingConstraint)theEObject;
                T result = this.caseOffsetTimingConstraint(offsetTimingConstraint);
                if (result == null) {
                    result = this.caseTimingConstraint(offsetTimingConstraint);
                }
                if (result == null) {
                    result = this.caseIdentifiable(offsetTimingConstraint);
                }
                if (result == null) {
                    result = this.caseTraceable(offsetTimingConstraint);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(offsetTimingConstraint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(offsetTimingConstraint);
                }
                if (result == null) {
                    result = this.caseReferrable(offsetTimingConstraint);
                }
                if (result == null) {
                    result = this.caseARObject(offsetTimingConstraint);
                }
                if (result == null) {
                    result = this.caseGReferrable(offsetTimingConstraint);
                }
                if (result == null) {
                    result = this.caseGARObject(offsetTimingConstraint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseOffsetTimingConstraint(OffsetTimingConstraint object) {
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

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseTraceable(Traceable object) {
        return null;
    }

    public T caseTimingConstraint(TimingConstraint object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

