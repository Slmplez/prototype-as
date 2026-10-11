/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Colspec;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Entry;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Row;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Table;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tbody;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tgroup;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OasisexchangetableSwitch<T> {
    protected static OasisexchangetablePackage modelPackage;

    public OasisexchangetableSwitch() {
        if (modelPackage == null) {
            modelPackage = OasisexchangetablePackage.eINSTANCE;
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
                Colspec colspec = (Colspec)theEObject;
                T result = this.caseColspec(colspec);
                if (result == null) {
                    result = this.caseARObject(colspec);
                }
                if (result == null) {
                    result = this.caseGARObject(colspec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                Entry entry = (Entry)theEObject;
                T result = this.caseEntry(entry);
                if (result == null) {
                    result = this.caseARObject(entry);
                }
                if (result == null) {
                    result = this.caseGARObject(entry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Row row = (Row)theEObject;
                T result = this.caseRow(row);
                if (result == null) {
                    result = this.caseARObject(row);
                }
                if (result == null) {
                    result = this.caseGARObject(row);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Tbody tbody = (Tbody)theEObject;
                T result = this.caseTbody(tbody);
                if (result == null) {
                    result = this.caseARObject(tbody);
                }
                if (result == null) {
                    result = this.caseGARObject(tbody);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                Tgroup tgroup = (Tgroup)theEObject;
                T result = this.caseTgroup(tgroup);
                if (result == null) {
                    result = this.caseARObject(tgroup);
                }
                if (result == null) {
                    result = this.caseGARObject(tgroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                Table table = (Table)theEObject;
                T result = this.caseTable(table);
                if (result == null) {
                    result = this.casePaginateable(table);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(table);
                }
                if (result == null) {
                    result = this.caseARObject(table);
                }
                if (result == null) {
                    result = this.caseGARObject(table);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseColspec(Colspec object) {
        return null;
    }

    public T caseEntry(Entry object) {
        return null;
    }

    public T caseRow(Row object) {
        return null;
    }

    public T caseTbody(Tbody object) {
        return null;
    }

    public T caseTgroup(Tgroup object) {
        return null;
    }

    public T caseTable(Table object) {
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

