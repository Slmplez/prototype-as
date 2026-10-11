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
package autosar40.system.pncmapping.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.pncmapping.PncMapping;
import autosar40.system.pncmapping.PncmappingPackage;
import autosar40.system.pncmapping.util.PncmappingSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class PncmappingAdapterFactory
extends AdapterFactoryImpl {
    protected static PncmappingPackage modelPackage;
    protected PncmappingSwitch<Adapter> modelSwitch = new PncmappingSwitch<Adapter>(){

        @Override
        public Adapter casePncMapping(PncMapping object) {
            return PncmappingAdapterFactory.this.createPncMappingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return PncmappingAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return PncmappingAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return PncmappingAdapterFactory.this.createEObjectAdapter();
        }
    };

    public PncmappingAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = PncmappingPackage.eINSTANCE;
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

    public Adapter createPncMappingAdapter() {
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

