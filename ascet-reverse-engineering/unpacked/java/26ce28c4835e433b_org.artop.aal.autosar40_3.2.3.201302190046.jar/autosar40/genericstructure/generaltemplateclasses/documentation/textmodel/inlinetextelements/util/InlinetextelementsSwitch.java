/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Br;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.EmphasisText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.FootnoteText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.IndexEntry;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Std;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Tt;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xdoc;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xfile;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xref;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.XrefTarget;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.SingleLanguageReferrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InlinetextelementsSwitch<T> {
    protected static InlinetextelementsPackage modelPackage;

    public InlinetextelementsSwitch() {
        if (modelPackage == null) {
            modelPackage = InlinetextelementsPackage.eINSTANCE;
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
                Br br = (Br)theEObject;
                T result = this.caseBr(br);
                if (result == null) {
                    result = this.caseARObject(br);
                }
                if (result == null) {
                    result = this.caseGARObject(br);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                EmphasisText emphasisText = (EmphasisText)theEObject;
                T result = this.caseEmphasisText(emphasisText);
                if (result == null) {
                    result = this.caseARObject(emphasisText);
                }
                if (result == null) {
                    result = this.caseGARObject(emphasisText);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                FootnoteText footnoteText = (FootnoteText)theEObject;
                T result = this.caseFootnoteText(footnoteText);
                if (result == null) {
                    result = this.caseARObject(footnoteText);
                }
                if (result == null) {
                    result = this.caseGARObject(footnoteText);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Tt tt = (Tt)theEObject;
                T result = this.caseTt(tt);
                if (result == null) {
                    result = this.caseARObject(tt);
                }
                if (result == null) {
                    result = this.caseGARObject(tt);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                IndexEntry indexEntry = (IndexEntry)theEObject;
                T result = this.caseIndexEntry(indexEntry);
                if (result == null) {
                    result = this.caseARObject(indexEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(indexEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                Std std = (Std)theEObject;
                T result = this.caseStd(std);
                if (result == null) {
                    result = this.caseSingleLanguageReferrable(std);
                }
                if (result == null) {
                    result = this.caseReferrable(std);
                }
                if (result == null) {
                    result = this.caseARObject(std);
                }
                if (result == null) {
                    result = this.caseGReferrable(std);
                }
                if (result == null) {
                    result = this.caseGARObject(std);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                Xfile xfile = (Xfile)theEObject;
                T result = this.caseXfile(xfile);
                if (result == null) {
                    result = this.caseSingleLanguageReferrable(xfile);
                }
                if (result == null) {
                    result = this.caseReferrable(xfile);
                }
                if (result == null) {
                    result = this.caseARObject(xfile);
                }
                if (result == null) {
                    result = this.caseGReferrable(xfile);
                }
                if (result == null) {
                    result = this.caseGARObject(xfile);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                Xdoc xdoc = (Xdoc)theEObject;
                T result = this.caseXdoc(xdoc);
                if (result == null) {
                    result = this.caseSingleLanguageReferrable(xdoc);
                }
                if (result == null) {
                    result = this.caseReferrable(xdoc);
                }
                if (result == null) {
                    result = this.caseARObject(xdoc);
                }
                if (result == null) {
                    result = this.caseGReferrable(xdoc);
                }
                if (result == null) {
                    result = this.caseGARObject(xdoc);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                Xref xref = (Xref)theEObject;
                T result = this.caseXref(xref);
                if (result == null) {
                    result = this.caseARObject(xref);
                }
                if (result == null) {
                    result = this.caseGARObject(xref);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                XrefTarget xrefTarget = (XrefTarget)theEObject;
                T result = this.caseXrefTarget(xrefTarget);
                if (result == null) {
                    result = this.caseSingleLanguageReferrable(xrefTarget);
                }
                if (result == null) {
                    result = this.caseReferrable(xrefTarget);
                }
                if (result == null) {
                    result = this.caseARObject(xrefTarget);
                }
                if (result == null) {
                    result = this.caseGReferrable(xrefTarget);
                }
                if (result == null) {
                    result = this.caseGARObject(xrefTarget);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBr(Br object) {
        return null;
    }

    public T caseEmphasisText(EmphasisText object) {
        return null;
    }

    public T caseFootnoteText(FootnoteText object) {
        return null;
    }

    public T caseTt(Tt object) {
        return null;
    }

    public T caseIndexEntry(IndexEntry object) {
        return null;
    }

    public T caseStd(Std object) {
        return null;
    }

    public T caseXfile(Xfile object) {
        return null;
    }

    public T caseXdoc(Xdoc object) {
        return null;
    }

    public T caseXref(Xref object) {
        return null;
    }

    public T caseXrefTarget(XrefTarget object) {
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

    public T caseSingleLanguageReferrable(SingleLanguageReferrable object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

