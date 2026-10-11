/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryArg;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryP1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MsrquerySwitch<T> {
    protected static MsrqueryPackage modelPackage;

    public MsrquerySwitch() {
        if (modelPackage == null) {
            modelPackage = MsrqueryPackage.eINSTANCE;
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
                MsrQueryArg msrQueryArg = (MsrQueryArg)theEObject;
                T result = this.caseMsrQueryArg(msrQueryArg);
                if (result == null) {
                    result = this.caseARObject(msrQueryArg);
                }
                if (result == null) {
                    result = this.caseGARObject(msrQueryArg);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                MsrQueryChapter msrQueryChapter = (MsrQueryChapter)theEObject;
                T result = this.caseMsrQueryChapter(msrQueryChapter);
                if (result == null) {
                    result = this.casePaginateable(msrQueryChapter);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(msrQueryChapter);
                }
                if (result == null) {
                    result = this.caseARObject(msrQueryChapter);
                }
                if (result == null) {
                    result = this.caseGARObject(msrQueryChapter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                MsrQueryResultChapter msrQueryResultChapter = (MsrQueryResultChapter)theEObject;
                T result = this.caseMsrQueryResultChapter(msrQueryResultChapter);
                if (result == null) {
                    result = this.caseARObject(msrQueryResultChapter);
                }
                if (result == null) {
                    result = this.caseGARObject(msrQueryResultChapter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                MsrQueryProps msrQueryProps = (MsrQueryProps)theEObject;
                T result = this.caseMsrQueryProps(msrQueryProps);
                if (result == null) {
                    result = this.caseARObject(msrQueryProps);
                }
                if (result == null) {
                    result = this.caseGARObject(msrQueryProps);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                MsrQueryResultTopic1 msrQueryResultTopic1 = (MsrQueryResultTopic1)theEObject;
                T result = this.caseMsrQueryResultTopic1(msrQueryResultTopic1);
                if (result == null) {
                    result = this.caseARObject(msrQueryResultTopic1);
                }
                if (result == null) {
                    result = this.caseGARObject(msrQueryResultTopic1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                MsrQueryTopic1 msrQueryTopic1 = (MsrQueryTopic1)theEObject;
                T result = this.caseMsrQueryTopic1(msrQueryTopic1);
                if (result == null) {
                    result = this.casePaginateable(msrQueryTopic1);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(msrQueryTopic1);
                }
                if (result == null) {
                    result = this.caseARObject(msrQueryTopic1);
                }
                if (result == null) {
                    result = this.caseGARObject(msrQueryTopic1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                MsrQueryP1 msrQueryP1 = (MsrQueryP1)theEObject;
                T result = this.caseMsrQueryP1(msrQueryP1);
                if (result == null) {
                    result = this.casePaginateable(msrQueryP1);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(msrQueryP1);
                }
                if (result == null) {
                    result = this.caseARObject(msrQueryP1);
                }
                if (result == null) {
                    result = this.caseGARObject(msrQueryP1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseMsrQueryArg(MsrQueryArg object) {
        return null;
    }

    public T caseMsrQueryChapter(MsrQueryChapter object) {
        return null;
    }

    public T caseMsrQueryResultChapter(MsrQueryResultChapter object) {
        return null;
    }

    public T caseMsrQueryProps(MsrQueryProps object) {
        return null;
    }

    public T caseMsrQueryResultTopic1(MsrQueryResultTopic1 object) {
        return null;
    }

    public T caseMsrQueryTopic1(MsrQueryTopic1 object) {
        return null;
    }

    public T caseMsrQueryP1(MsrQueryP1 object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
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

