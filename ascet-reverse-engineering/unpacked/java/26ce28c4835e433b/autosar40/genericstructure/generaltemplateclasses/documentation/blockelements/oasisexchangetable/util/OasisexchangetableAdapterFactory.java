/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
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
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.util.OasisexchangetableSwitch;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class OasisexchangetableAdapterFactory
extends AdapterFactoryImpl {
    protected static OasisexchangetablePackage modelPackage;
    protected OasisexchangetableSwitch<Adapter> modelSwitch = new OasisexchangetableSwitch<Adapter>(){

        @Override
        public Adapter caseColspec(Colspec object) {
            return OasisexchangetableAdapterFactory.this.createColspecAdapter();
        }

        @Override
        public Adapter caseEntry(Entry object) {
            return OasisexchangetableAdapterFactory.this.createEntryAdapter();
        }

        @Override
        public Adapter caseRow(Row object) {
            return OasisexchangetableAdapterFactory.this.createRowAdapter();
        }

        @Override
        public Adapter caseTbody(Tbody object) {
            return OasisexchangetableAdapterFactory.this.createTbodyAdapter();
        }

        @Override
        public Adapter caseTgroup(Tgroup object) {
            return OasisexchangetableAdapterFactory.this.createTgroupAdapter();
        }

        @Override
        public Adapter caseTable(Table object) {
            return OasisexchangetableAdapterFactory.this.createTableAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return OasisexchangetableAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return OasisexchangetableAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseDocumentViewSelectable(DocumentViewSelectable object) {
            return OasisexchangetableAdapterFactory.this.createDocumentViewSelectableAdapter();
        }

        @Override
        public Adapter casePaginateable(Paginateable object) {
            return OasisexchangetableAdapterFactory.this.createPaginateableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return OasisexchangetableAdapterFactory.this.createEObjectAdapter();
        }
    };

    public OasisexchangetableAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = OasisexchangetablePackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createColspecAdapter() {
        return null;
    }

    public Adapter createEntryAdapter() {
        return null;
    }

    public Adapter createRowAdapter() {
        return null;
    }

    public Adapter createTbodyAdapter() {
        return null;
    }

    public Adapter createTgroupAdapter() {
        return null;
    }

    public Adapter createTableAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createDocumentViewSelectableAdapter() {
        return null;
    }

    public Adapter createPaginateableAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

