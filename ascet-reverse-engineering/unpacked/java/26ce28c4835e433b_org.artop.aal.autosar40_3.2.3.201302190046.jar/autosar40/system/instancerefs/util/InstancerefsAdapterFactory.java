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
package autosar40.system.instancerefs.util;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.instancerefs.ComponentInSystemInstanceRef;
import autosar40.system.instancerefs.InstancerefsPackage;
import autosar40.system.instancerefs.OperationInSystemInstanceRef;
import autosar40.system.instancerefs.PortGroupInSystemInstanceRef;
import autosar40.system.instancerefs.VariableDataPrototypeInSystemInstanceRef;
import autosar40.system.instancerefs.util.InstancerefsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstancerefsAdapterFactory
extends AdapterFactoryImpl {
    protected static InstancerefsPackage modelPackage;
    protected InstancerefsSwitch<Adapter> modelSwitch = new InstancerefsSwitch<Adapter>(){

        @Override
        public Adapter caseOperationInSystemInstanceRef(OperationInSystemInstanceRef object) {
            return InstancerefsAdapterFactory.this.createOperationInSystemInstanceRefAdapter();
        }

        @Override
        public Adapter casePortGroupInSystemInstanceRef(PortGroupInSystemInstanceRef object) {
            return InstancerefsAdapterFactory.this.createPortGroupInSystemInstanceRefAdapter();
        }

        @Override
        public Adapter caseVariableDataPrototypeInSystemInstanceRef(VariableDataPrototypeInSystemInstanceRef object) {
            return InstancerefsAdapterFactory.this.createVariableDataPrototypeInSystemInstanceRefAdapter();
        }

        @Override
        public Adapter caseComponentInSystemInstanceRef(ComponentInSystemInstanceRef object) {
            return InstancerefsAdapterFactory.this.createComponentInSystemInstanceRefAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InstancerefsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InstancerefsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseAtpInstanceRef(AtpInstanceRef object) {
            return InstancerefsAdapterFactory.this.createAtpInstanceRefAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InstancerefsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InstancerefsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InstancerefsPackage.eINSTANCE;
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

    public Adapter createOperationInSystemInstanceRefAdapter() {
        return null;
    }

    public Adapter createPortGroupInSystemInstanceRefAdapter() {
        return null;
    }

    public Adapter createVariableDataPrototypeInSystemInstanceRefAdapter() {
        return null;
    }

    public Adapter createComponentInSystemInstanceRefAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createAtpInstanceRefAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

