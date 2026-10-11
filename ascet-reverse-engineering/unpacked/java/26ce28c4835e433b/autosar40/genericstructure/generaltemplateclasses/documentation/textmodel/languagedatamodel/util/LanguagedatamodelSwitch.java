/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguageSpecific;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.WhitespaceControlled;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LanguagedatamodelSwitch<T> {
    protected static LanguagedatamodelPackage modelPackage;

    public LanguagedatamodelSwitch() {
        if (modelPackage == null) {
            modelPackage = LanguagedatamodelPackage.eINSTANCE;
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
                LLongName lLongName = (LLongName)theEObject;
                T result = this.caseLLongName(lLongName);
                if (result == null) {
                    result = this.caseLanguageSpecific(lLongName);
                }
                if (result == null) {
                    result = this.caseMixedContentForLongName(lLongName);
                }
                if (result == null) {
                    result = this.caseARObject(lLongName);
                }
                if (result == null) {
                    result = this.caseGARObject(lLongName);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                LanguageSpecific languageSpecific = (LanguageSpecific)theEObject;
                T result = this.caseLanguageSpecific(languageSpecific);
                if (result == null) {
                    result = this.caseARObject(languageSpecific);
                }
                if (result == null) {
                    result = this.caseGARObject(languageSpecific);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                LOverviewParagraph lOverviewParagraph = (LOverviewParagraph)theEObject;
                T result = this.caseLOverviewParagraph(lOverviewParagraph);
                if (result == null) {
                    result = this.caseLanguageSpecific(lOverviewParagraph);
                }
                if (result == null) {
                    result = this.caseMixedContentForOverviewParagraph(lOverviewParagraph);
                }
                if (result == null) {
                    result = this.caseGLOverviewParagraph(lOverviewParagraph);
                }
                if (result == null) {
                    result = this.caseARObject(lOverviewParagraph);
                }
                if (result == null) {
                    result = this.caseGMixedContentForOverviewParagraph(lOverviewParagraph);
                }
                if (result == null) {
                    result = this.caseGARObject(lOverviewParagraph);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                LParagraph lParagraph = (LParagraph)theEObject;
                T result = this.caseLParagraph(lParagraph);
                if (result == null) {
                    result = this.caseLanguageSpecific(lParagraph);
                }
                if (result == null) {
                    result = this.caseMixedContentForParagraph(lParagraph);
                }
                if (result == null) {
                    result = this.caseGLParagraph(lParagraph);
                }
                if (result == null) {
                    result = this.caseARObject(lParagraph);
                }
                if (result == null) {
                    result = this.caseGMixedContentForParagraph(lParagraph);
                }
                if (result == null) {
                    result = this.caseGARObject(lParagraph);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                LPlainText lPlainText = (LPlainText)theEObject;
                T result = this.caseLPlainText(lPlainText);
                if (result == null) {
                    result = this.caseLanguageSpecific(lPlainText);
                }
                if (result == null) {
                    result = this.caseMixedContentForPlainText(lPlainText);
                }
                if (result == null) {
                    result = this.caseWhitespaceControlled(lPlainText);
                }
                if (result == null) {
                    result = this.caseARObject(lPlainText);
                }
                if (result == null) {
                    result = this.caseGARObject(lPlainText);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                LVerbatim lVerbatim = (LVerbatim)theEObject;
                T result = this.caseLVerbatim(lVerbatim);
                if (result == null) {
                    result = this.caseLanguageSpecific(lVerbatim);
                }
                if (result == null) {
                    result = this.caseMixedContentForVerbatim(lVerbatim);
                }
                if (result == null) {
                    result = this.caseWhitespaceControlled(lVerbatim);
                }
                if (result == null) {
                    result = this.caseARObject(lVerbatim);
                }
                if (result == null) {
                    result = this.caseGARObject(lVerbatim);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                WhitespaceControlled whitespaceControlled = (WhitespaceControlled)theEObject;
                T result = this.caseWhitespaceControlled(whitespaceControlled);
                if (result == null) {
                    result = this.caseARObject(whitespaceControlled);
                }
                if (result == null) {
                    result = this.caseGARObject(whitespaceControlled);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseLLongName(LLongName object) {
        return null;
    }

    public T caseLanguageSpecific(LanguageSpecific object) {
        return null;
    }

    public T caseLOverviewParagraph(LOverviewParagraph object) {
        return null;
    }

    public T caseLParagraph(LParagraph object) {
        return null;
    }

    public T caseLPlainText(LPlainText object) {
        return null;
    }

    public T caseLVerbatim(LVerbatim object) {
        return null;
    }

    public T caseWhitespaceControlled(WhitespaceControlled object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseMixedContentForLongName(MixedContentForLongName object) {
        return null;
    }

    public T caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph object) {
        return null;
    }

    public T caseMixedContentForOverviewParagraph(MixedContentForOverviewParagraph object) {
        return null;
    }

    public T caseGLOverviewParagraph(GLOverviewParagraph object) {
        return null;
    }

    public T caseGMixedContentForParagraph(GMixedContentForParagraph object) {
        return null;
    }

    public T caseMixedContentForParagraph(MixedContentForParagraph object) {
        return null;
    }

    public T caseGLParagraph(GLParagraph object) {
        return null;
    }

    public T caseMixedContentForPlainText(MixedContentForPlainText object) {
        return null;
    }

    public T caseMixedContentForVerbatim(MixedContentForVerbatim object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

