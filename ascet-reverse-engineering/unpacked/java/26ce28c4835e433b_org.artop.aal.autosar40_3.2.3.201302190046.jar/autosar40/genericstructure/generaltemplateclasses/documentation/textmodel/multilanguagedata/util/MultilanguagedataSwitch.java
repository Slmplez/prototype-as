/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguagePlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguagedataPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MultilanguagedataSwitch<T> {
    protected static MultilanguagedataPackage modelPackage;

    public MultilanguagedataSwitch() {
        if (modelPackage == null) {
            modelPackage = MultilanguagedataPackage.eINSTANCE;
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
                MultilanguageLongName multilanguageLongName = (MultilanguageLongName)theEObject;
                T result = this.caseMultilanguageLongName(multilanguageLongName);
                if (result == null) {
                    result = this.caseARObject(multilanguageLongName);
                }
                if (result == null) {
                    result = this.caseGARObject(multilanguageLongName);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                MultiLanguageOverviewParagraph multiLanguageOverviewParagraph = (MultiLanguageOverviewParagraph)theEObject;
                T result = this.caseMultiLanguageOverviewParagraph(multiLanguageOverviewParagraph);
                if (result == null) {
                    result = this.caseARObject(multiLanguageOverviewParagraph);
                }
                if (result == null) {
                    result = this.caseGMultiLanguageOverviewParagraph(multiLanguageOverviewParagraph);
                }
                if (result == null) {
                    result = this.caseGARObject(multiLanguageOverviewParagraph);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                MultiLanguageParagraph multiLanguageParagraph = (MultiLanguageParagraph)theEObject;
                T result = this.caseMultiLanguageParagraph(multiLanguageParagraph);
                if (result == null) {
                    result = this.casePaginateable(multiLanguageParagraph);
                }
                if (result == null) {
                    result = this.caseGMultiLanguageParagraph(multiLanguageParagraph);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(multiLanguageParagraph);
                }
                if (result == null) {
                    result = this.caseARObject(multiLanguageParagraph);
                }
                if (result == null) {
                    result = this.caseGARObject(multiLanguageParagraph);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                MultiLanguagePlainText multiLanguagePlainText = (MultiLanguagePlainText)theEObject;
                T result = this.caseMultiLanguagePlainText(multiLanguagePlainText);
                if (result == null) {
                    result = this.caseARObject(multiLanguagePlainText);
                }
                if (result == null) {
                    result = this.caseGARObject(multiLanguagePlainText);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                MultiLanguageVerbatim multiLanguageVerbatim = (MultiLanguageVerbatim)theEObject;
                T result = this.caseMultiLanguageVerbatim(multiLanguageVerbatim);
                if (result == null) {
                    result = this.casePaginateable(multiLanguageVerbatim);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(multiLanguageVerbatim);
                }
                if (result == null) {
                    result = this.caseARObject(multiLanguageVerbatim);
                }
                if (result == null) {
                    result = this.caseGARObject(multiLanguageVerbatim);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseMultilanguageLongName(MultilanguageLongName object) {
        return null;
    }

    public T caseMultiLanguageOverviewParagraph(MultiLanguageOverviewParagraph object) {
        return null;
    }

    public T caseMultiLanguageParagraph(MultiLanguageParagraph object) {
        return null;
    }

    public T caseMultiLanguagePlainText(MultiLanguagePlainText object) {
        return null;
    }

    public T caseMultiLanguageVerbatim(MultiLanguageVerbatim object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGMultiLanguageOverviewParagraph(GMultiLanguageOverviewParagraph object) {
        return null;
    }

    public T caseDocumentViewSelectable(DocumentViewSelectable object) {
        return null;
    }

    public T casePaginateable(Paginateable object) {
        return null;
    }

    public T caseGMultiLanguageParagraph(GMultiLanguageParagraph object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

