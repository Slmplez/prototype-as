/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GEngineeringObject
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Area;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Graphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.Map;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.MlFigure;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguageSpecific;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringObject;
import gautosar.gcommonstructure.gimplementation.GEngineeringObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FigureSwitch<T> {
    protected static FigurePackage modelPackage;

    public FigureSwitch() {
        if (modelPackage == null) {
            modelPackage = FigurePackage.eINSTANCE;
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
                Graphic graphic = (Graphic)theEObject;
                T result = this.caseGraphic(graphic);
                if (result == null) {
                    result = this.caseEngineeringObject(graphic);
                }
                if (result == null) {
                    result = this.caseARObject(graphic);
                }
                if (result == null) {
                    result = this.caseGEngineeringObject(graphic);
                }
                if (result == null) {
                    result = this.caseGARObject(graphic);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                Map map = (Map)theEObject;
                T result = this.caseMap(map);
                if (result == null) {
                    result = this.caseARObject(map);
                }
                if (result == null) {
                    result = this.caseGARObject(map);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Area area = (Area)theEObject;
                T result = this.caseArea(area);
                if (result == null) {
                    result = this.caseARObject(area);
                }
                if (result == null) {
                    result = this.caseGARObject(area);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                MlFigure mlFigure = (MlFigure)theEObject;
                T result = this.caseMlFigure(mlFigure);
                if (result == null) {
                    result = this.casePaginateable(mlFigure);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(mlFigure);
                }
                if (result == null) {
                    result = this.caseARObject(mlFigure);
                }
                if (result == null) {
                    result = this.caseGARObject(mlFigure);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                LGraphic lGraphic = (LGraphic)theEObject;
                T result = this.caseLGraphic(lGraphic);
                if (result == null) {
                    result = this.caseLanguageSpecific(lGraphic);
                }
                if (result == null) {
                    result = this.caseARObject(lGraphic);
                }
                if (result == null) {
                    result = this.caseGARObject(lGraphic);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGraphic(Graphic object) {
        return null;
    }

    public T caseMap(Map object) {
        return null;
    }

    public T caseArea(Area object) {
        return null;
    }

    public T caseMlFigure(MlFigure object) {
        return null;
    }

    public T caseLGraphic(LGraphic object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGEngineeringObject(GEngineeringObject object) {
        return null;
    }

    public T caseEngineeringObject(EngineeringObject object) {
        return null;
    }

    public T caseDocumentViewSelectable(DocumentViewSelectable object) {
        return null;
    }

    public T casePaginateable(Paginateable object) {
        return null;
    }

    public T caseLanguageSpecific(LanguageSpecific object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

