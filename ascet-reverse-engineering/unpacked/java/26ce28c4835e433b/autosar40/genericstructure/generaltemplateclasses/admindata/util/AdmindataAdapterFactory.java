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
package autosar40.genericstructure.generaltemplateclasses.admindata.util;

import autosar40.genericstructure.generaltemplateclasses.admindata.AdminData;
import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataPackage;
import autosar40.genericstructure.generaltemplateclasses.admindata.DocRevision;
import autosar40.genericstructure.generaltemplateclasses.admindata.Modification;
import autosar40.genericstructure.generaltemplateclasses.admindata.util.AdmindataSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class AdmindataAdapterFactory
extends AdapterFactoryImpl {
    protected static AdmindataPackage modelPackage;
    protected AdmindataSwitch<Adapter> modelSwitch = new AdmindataSwitch<Adapter>(){

        @Override
        public Adapter caseDocRevision(DocRevision object) {
            return AdmindataAdapterFactory.this.createDocRevisionAdapter();
        }

        @Override
        public Adapter caseModification(Modification object) {
            return AdmindataAdapterFactory.this.createModificationAdapter();
        }

        @Override
        public Adapter caseAdminData(AdminData object) {
            return AdmindataAdapterFactory.this.createAdminDataAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return AdmindataAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return AdmindataAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return AdmindataAdapterFactory.this.createEObjectAdapter();
        }
    };

    public AdmindataAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = AdmindataPackage.eINSTANCE;
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

    public Adapter createDocRevisionAdapter() {
        return null;
    }

    public Adapter createModificationAdapter() {
        return null;
    }

    public Adapter createAdminDataAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

