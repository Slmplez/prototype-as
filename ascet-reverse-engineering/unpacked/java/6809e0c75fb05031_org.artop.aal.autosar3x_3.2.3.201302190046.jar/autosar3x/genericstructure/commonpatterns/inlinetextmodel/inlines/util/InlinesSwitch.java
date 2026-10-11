/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject
 *  gautosar.gcommonstructure.gimplementation.GEngineeringObject
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.util;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Br;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.EType;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Ft;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Ie;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Std;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Tt;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Url;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xdoc;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xref;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.XrefTarget;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GEngineeringObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InlinesSwitch<T> {
    protected static InlinesPackage modelPackage;

    public InlinesSwitch() {
        if (modelPackage == null) {
            modelPackage = InlinesPackage.eINSTANCE;
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
                EType eType = (EType)theEObject;
                T result = this.caseEType(eType);
                if (result == null) {
                    result = this.caseARObject(eType);
                }
                if (result == null) {
                    result = this.caseGARObject(eType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Ft ft = (Ft)theEObject;
                T result = this.caseFt(ft);
                if (result == null) {
                    result = this.caseARObject(ft);
                }
                if (result == null) {
                    result = this.caseGARObject(ft);
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
                Ie ie = (Ie)theEObject;
                T result = this.caseIe(ie);
                if (result == null) {
                    result = this.caseARObject(ie);
                }
                if (result == null) {
                    result = this.caseGARObject(ie);
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
                    result = this.caseIdentifiable(std);
                }
                if (result == null) {
                    result = this.caseARObject(std);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(std);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)std);
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
                XrefTarget xrefTarget = (XrefTarget)theEObject;
                T result = this.caseXrefTarget(xrefTarget);
                if (result == null) {
                    result = this.caseIdentifiable(xrefTarget);
                }
                if (result == null) {
                    result = this.caseARObject(xrefTarget);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(xrefTarget);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)xrefTarget);
                }
                if (result == null) {
                    result = this.caseGARObject(xrefTarget);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
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
            case 8: {
                Url url = (Url)theEObject;
                T result = this.caseUrl(url);
                if (result == null) {
                    result = this.caseARObject(url);
                }
                if (result == null) {
                    result = this.caseGARObject(url);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                Xfile xfile = (Xfile)theEObject;
                T result = this.caseXfile(xfile);
                if (result == null) {
                    result = this.caseARObject(xfile);
                }
                if (result == null) {
                    result = this.caseGAutosarEngineeringObject(xfile);
                }
                if (result == null) {
                    result = this.caseGEngineeringObject((GEngineeringObject)xfile);
                }
                if (result == null) {
                    result = this.caseGARObject(xfile);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                Xdoc xdoc = (Xdoc)theEObject;
                T result = this.caseXdoc(xdoc);
                if (result == null) {
                    result = this.caseIdentifiable(xdoc);
                }
                if (result == null) {
                    result = this.caseARObject(xdoc);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(xdoc);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)xdoc);
                }
                if (result == null) {
                    result = this.caseGARObject(xdoc);
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

    public T caseEType(EType object) {
        return null;
    }

    public T caseFt(Ft object) {
        return null;
    }

    public T caseTt(Tt object) {
        return null;
    }

    public T caseIe(Ie object) {
        return null;
    }

    public T caseStd(Std object) {
        return null;
    }

    public T caseXrefTarget(XrefTarget object) {
        return null;
    }

    public T caseXref(Xref object) {
        return null;
    }

    public T caseUrl(Url object) {
        return null;
    }

    public T caseXfile(Xfile object) {
        return null;
    }

    public T caseXdoc(Xdoc object) {
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

    public T caseGEngineeringObject(GEngineeringObject object) {
        return null;
    }

    public T caseGAutosarEngineeringObject(GAutosarEngineeringObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

