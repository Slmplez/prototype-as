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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GeneralParameter;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmChar;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharAbsTol;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharMinTypMax;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalValue;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharTextualContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.Prms;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
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
public class GerneralparametersSwitch<T> {
    protected static GerneralparametersPackage modelPackage;

    public GerneralparametersSwitch() {
        if (modelPackage == null) {
            modelPackage = GerneralparametersPackage.eINSTANCE;
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
                GeneralParameter generalParameter = (GeneralParameter)theEObject;
                T result = this.caseGeneralParameter(generalParameter);
                if (result == null) {
                    result = this.caseIdentifiable(generalParameter);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(generalParameter);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(generalParameter);
                }
                if (result == null) {
                    result = this.caseReferrable(generalParameter);
                }
                if (result == null) {
                    result = this.caseARObject(generalParameter);
                }
                if (result == null) {
                    result = this.caseGReferrable(generalParameter);
                }
                if (result == null) {
                    result = this.caseGARObject(generalParameter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                PrmChar prmChar = (PrmChar)theEObject;
                T result = this.casePrmChar(prmChar);
                if (result == null) {
                    result = this.caseARObject(prmChar);
                }
                if (result == null) {
                    result = this.caseGARObject(prmChar);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                PrmCharContents prmCharContents = (PrmCharContents)theEObject;
                T result = this.casePrmCharContents(prmCharContents);
                if (result == null) {
                    result = this.caseARObject(prmCharContents);
                }
                if (result == null) {
                    result = this.caseGARObject(prmCharContents);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                PrmCharAbsTol prmCharAbsTol = (PrmCharAbsTol)theEObject;
                T result = this.casePrmCharAbsTol(prmCharAbsTol);
                if (result == null) {
                    result = this.casePrmCharNumericalValue(prmCharAbsTol);
                }
                if (result == null) {
                    result = this.caseARObject(prmCharAbsTol);
                }
                if (result == null) {
                    result = this.caseGARObject(prmCharAbsTol);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                PrmCharNumericalValue prmCharNumericalValue = (PrmCharNumericalValue)theEObject;
                T result = this.casePrmCharNumericalValue(prmCharNumericalValue);
                if (result == null) {
                    result = this.caseARObject(prmCharNumericalValue);
                }
                if (result == null) {
                    result = this.caseGARObject(prmCharNumericalValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                PrmCharMinTypMax prmCharMinTypMax = (PrmCharMinTypMax)theEObject;
                T result = this.casePrmCharMinTypMax(prmCharMinTypMax);
                if (result == null) {
                    result = this.casePrmCharNumericalValue(prmCharMinTypMax);
                }
                if (result == null) {
                    result = this.caseARObject(prmCharMinTypMax);
                }
                if (result == null) {
                    result = this.caseGARObject(prmCharMinTypMax);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                PrmCharNumericalContents prmCharNumericalContents = (PrmCharNumericalContents)theEObject;
                T result = this.casePrmCharNumericalContents(prmCharNumericalContents);
                if (result == null) {
                    result = this.casePrmCharContents(prmCharNumericalContents);
                }
                if (result == null) {
                    result = this.caseARObject(prmCharNumericalContents);
                }
                if (result == null) {
                    result = this.caseGARObject(prmCharNumericalContents);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                PrmCharTextualContents prmCharTextualContents = (PrmCharTextualContents)theEObject;
                T result = this.casePrmCharTextualContents(prmCharTextualContents);
                if (result == null) {
                    result = this.casePrmCharContents(prmCharTextualContents);
                }
                if (result == null) {
                    result = this.caseARObject(prmCharTextualContents);
                }
                if (result == null) {
                    result = this.caseGARObject(prmCharTextualContents);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                Prms prms = (Prms)theEObject;
                T result = this.casePrms(prms);
                if (result == null) {
                    result = this.casePaginateable(prms);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(prms);
                }
                if (result == null) {
                    result = this.caseARObject(prms);
                }
                if (result == null) {
                    result = this.caseGARObject(prms);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGeneralParameter(GeneralParameter object) {
        return null;
    }

    public T casePrmChar(PrmChar object) {
        return null;
    }

    public T casePrmCharContents(PrmCharContents object) {
        return null;
    }

    public T casePrmCharAbsTol(PrmCharAbsTol object) {
        return null;
    }

    public T casePrmCharNumericalValue(PrmCharNumericalValue object) {
        return null;
    }

    public T casePrmCharMinTypMax(PrmCharMinTypMax object) {
        return null;
    }

    public T casePrmCharNumericalContents(PrmCharNumericalContents object) {
        return null;
    }

    public T casePrmCharTextualContents(PrmCharTextualContents object) {
        return null;
    }

    public T casePrms(Prms object) {
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

    public T caseDocumentViewSelectable(DocumentViewSelectable object) {
        return null;
    }

    public T casePaginateable(Paginateable object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

