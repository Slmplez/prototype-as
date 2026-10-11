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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.IndentSample;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.Item;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.List;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
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
public class ListelementsSwitch<T> {
    protected static ListelementsPackage modelPackage;

    public ListelementsSwitch() {
        if (modelPackage == null) {
            modelPackage = ListelementsPackage.eINSTANCE;
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
                DefItem defItem = (DefItem)theEObject;
                T result = this.caseDefItem(defItem);
                if (result == null) {
                    result = this.caseMultilanguageReferrable(defItem);
                }
                if (result == null) {
                    result = this.casePaginateable(defItem);
                }
                if (result == null) {
                    result = this.caseReferrable(defItem);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(defItem);
                }
                if (result == null) {
                    result = this.caseARObject(defItem);
                }
                if (result == null) {
                    result = this.caseGReferrable(defItem);
                }
                if (result == null) {
                    result = this.caseGARObject(defItem);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                DefList defList = (DefList)theEObject;
                T result = this.caseDefList(defList);
                if (result == null) {
                    result = this.casePaginateable(defList);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(defList);
                }
                if (result == null) {
                    result = this.caseARObject(defList);
                }
                if (result == null) {
                    result = this.caseGARObject(defList);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                IndentSample indentSample = (IndentSample)theEObject;
                T result = this.caseIndentSample(indentSample);
                if (result == null) {
                    result = this.caseARObject(indentSample);
                }
                if (result == null) {
                    result = this.caseGARObject(indentSample);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Item item = (Item)theEObject;
                T result = this.caseItem(item);
                if (result == null) {
                    result = this.casePaginateable(item);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(item);
                }
                if (result == null) {
                    result = this.caseARObject(item);
                }
                if (result == null) {
                    result = this.caseGARObject(item);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                LabeledItem labeledItem = (LabeledItem)theEObject;
                T result = this.caseLabeledItem(labeledItem);
                if (result == null) {
                    result = this.casePaginateable(labeledItem);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(labeledItem);
                }
                if (result == null) {
                    result = this.caseARObject(labeledItem);
                }
                if (result == null) {
                    result = this.caseGARObject(labeledItem);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                LabeledList labeledList = (LabeledList)theEObject;
                T result = this.caseLabeledList(labeledList);
                if (result == null) {
                    result = this.casePaginateable(labeledList);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(labeledList);
                }
                if (result == null) {
                    result = this.caseARObject(labeledList);
                }
                if (result == null) {
                    result = this.caseGARObject(labeledList);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                List list = (List)theEObject;
                T result = this.caseList(list);
                if (result == null) {
                    result = this.casePaginateable(list);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(list);
                }
                if (result == null) {
                    result = this.caseARObject(list);
                }
                if (result == null) {
                    result = this.caseGARObject(list);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseDefItem(DefItem object) {
        return null;
    }

    public T caseDefList(DefList object) {
        return null;
    }

    public T caseIndentSample(IndentSample object) {
        return null;
    }

    public T caseItem(Item object) {
        return null;
    }

    public T caseLabeledItem(LabeledItem object) {
        return null;
    }

    public T caseLabeledList(LabeledList object) {
        return null;
    }

    public T caseList(List object) {
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

