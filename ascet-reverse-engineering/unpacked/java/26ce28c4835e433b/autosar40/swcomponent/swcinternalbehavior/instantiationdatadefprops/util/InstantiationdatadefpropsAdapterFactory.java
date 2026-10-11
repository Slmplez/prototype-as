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
package autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationDataDefProps;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationdatadefpropsPackage;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.util.InstantiationdatadefpropsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstantiationdatadefpropsAdapterFactory
extends AdapterFactoryImpl {
    protected static InstantiationdatadefpropsPackage modelPackage;
    protected InstantiationdatadefpropsSwitch<Adapter> modelSwitch = new InstantiationdatadefpropsSwitch<Adapter>(){

        @Override
        public Adapter caseInstantiationDataDefProps(InstantiationDataDefProps object) {
            return InstantiationdatadefpropsAdapterFactory.this.createInstantiationDataDefPropsAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InstantiationdatadefpropsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InstantiationdatadefpropsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InstantiationdatadefpropsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InstantiationdatadefpropsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InstantiationdatadefpropsPackage.eINSTANCE;
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

    public Adapter createInstantiationDataDefPropsAdapter() {
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

