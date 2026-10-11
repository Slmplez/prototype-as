/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForUnitNames;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.WhitespaceControlled;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InlinetextmodelSwitch<T> {
    protected static InlinetextmodelPackage modelPackage;

    public InlinetextmodelSwitch() {
        if (modelPackage == null) {
            modelPackage = InlinetextmodelPackage.eINSTANCE;
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
                MixedContentForLongName mixedContentForLongName = (MixedContentForLongName)theEObject;
                T result = this.caseMixedContentForLongName(mixedContentForLongName);
                if (result == null) {
                    result = this.caseARObject(mixedContentForLongName);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContentForLongName);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                MixedContentForParagraph mixedContentForParagraph = (MixedContentForParagraph)theEObject;
                T result = this.caseMixedContentForParagraph(mixedContentForParagraph);
                if (result == null) {
                    result = this.caseARObject(mixedContentForParagraph);
                }
                if (result == null) {
                    result = this.caseGMixedContentForParagraph(mixedContentForParagraph);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContentForParagraph);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                MixedContentForPlainText mixedContentForPlainText = (MixedContentForPlainText)theEObject;
                T result = this.caseMixedContentForPlainText(mixedContentForPlainText);
                if (result == null) {
                    result = this.caseWhitespaceControlled(mixedContentForPlainText);
                }
                if (result == null) {
                    result = this.caseARObject(mixedContentForPlainText);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContentForPlainText);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                MixedContentForVerbatim mixedContentForVerbatim = (MixedContentForVerbatim)theEObject;
                T result = this.caseMixedContentForVerbatim(mixedContentForVerbatim);
                if (result == null) {
                    result = this.caseWhitespaceControlled(mixedContentForVerbatim);
                }
                if (result == null) {
                    result = this.caseARObject(mixedContentForVerbatim);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContentForVerbatim);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                MixedContentForUnitNames mixedContentForUnitNames = (MixedContentForUnitNames)theEObject;
                T result = this.caseMixedContentForUnitNames(mixedContentForUnitNames);
                if (result == null) {
                    result = this.caseARObject(mixedContentForUnitNames);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContentForUnitNames);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                MixedContentForOverviewParagraph mixedContentForOverviewParagraph = (MixedContentForOverviewParagraph)theEObject;
                T result = this.caseMixedContentForOverviewParagraph(mixedContentForOverviewParagraph);
                if (result == null) {
                    result = this.caseARObject(mixedContentForOverviewParagraph);
                }
                if (result == null) {
                    result = this.caseGMixedContentForOverviewParagraph(mixedContentForOverviewParagraph);
                }
                if (result == null) {
                    result = this.caseGARObject(mixedContentForOverviewParagraph);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseMixedContentForLongName(MixedContentForLongName object) {
        return null;
    }

    public T caseMixedContentForParagraph(MixedContentForParagraph object) {
        return null;
    }

    public T caseMixedContentForPlainText(MixedContentForPlainText object) {
        return null;
    }

    public T caseMixedContentForVerbatim(MixedContentForVerbatim object) {
        return null;
    }

    public T caseMixedContentForUnitNames(MixedContentForUnitNames object) {
        return null;
    }

    public T caseMixedContentForOverviewParagraph(MixedContentForOverviewParagraph object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGMixedContentForParagraph(GMixedContentForParagraph object) {
        return null;
    }

    public T caseWhitespaceControlled(WhitespaceControlled object) {
        return null;
    }

    public T caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

