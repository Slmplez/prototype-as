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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.StructuredReq;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceReferrable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceableText;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RequirementstracingSwitch<T> {
    protected static RequirementstracingPackage modelPackage;

    public RequirementstracingSwitch() {
        if (modelPackage == null) {
            modelPackage = RequirementstracingPackage.eINSTANCE;
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
                StructuredReq structuredReq = (StructuredReq)theEObject;
                T result = this.caseStructuredReq(structuredReq);
                if (result == null) {
                    result = this.casePaginateable(structuredReq);
                }
                if (result == null) {
                    result = this.caseTraceReferrable(structuredReq);
                }
                if (result == null) {
                    result = this.caseTraceable(structuredReq);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(structuredReq);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(structuredReq);
                }
                if (result == null) {
                    result = this.caseReferrable(structuredReq);
                }
                if (result == null) {
                    result = this.caseARObject(structuredReq);
                }
                if (result == null) {
                    result = this.caseGReferrable(structuredReq);
                }
                if (result == null) {
                    result = this.caseGARObject(structuredReq);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                TraceReferrable traceReferrable = (TraceReferrable)theEObject;
                T result = this.caseTraceReferrable(traceReferrable);
                if (result == null) {
                    result = this.caseMultilanguageReferrable(traceReferrable);
                }
                if (result == null) {
                    result = this.caseReferrable(traceReferrable);
                }
                if (result == null) {
                    result = this.caseARObject(traceReferrable);
                }
                if (result == null) {
                    result = this.caseGReferrable(traceReferrable);
                }
                if (result == null) {
                    result = this.caseGARObject(traceReferrable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                TraceableText traceableText = (TraceableText)theEObject;
                T result = this.caseTraceableText(traceableText);
                if (result == null) {
                    result = this.casePaginateable(traceableText);
                }
                if (result == null) {
                    result = this.caseTraceReferrable(traceableText);
                }
                if (result == null) {
                    result = this.caseTraceable(traceableText);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(traceableText);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(traceableText);
                }
                if (result == null) {
                    result = this.caseReferrable(traceableText);
                }
                if (result == null) {
                    result = this.caseARObject(traceableText);
                }
                if (result == null) {
                    result = this.caseGReferrable(traceableText);
                }
                if (result == null) {
                    result = this.caseGARObject(traceableText);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Traceable traceable = (Traceable)theEObject;
                T result = this.caseTraceable(traceable);
                if (result == null) {
                    result = this.caseMultilanguageReferrable(traceable);
                }
                if (result == null) {
                    result = this.caseReferrable(traceable);
                }
                if (result == null) {
                    result = this.caseARObject(traceable);
                }
                if (result == null) {
                    result = this.caseGReferrable(traceable);
                }
                if (result == null) {
                    result = this.caseGARObject(traceable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseStructuredReq(StructuredReq object) {
        return null;
    }

    public T caseTraceReferrable(TraceReferrable object) {
        return null;
    }

    public T caseTraceableText(TraceableText object) {
        return null;
    }

    public T caseTraceable(Traceable object) {
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

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

