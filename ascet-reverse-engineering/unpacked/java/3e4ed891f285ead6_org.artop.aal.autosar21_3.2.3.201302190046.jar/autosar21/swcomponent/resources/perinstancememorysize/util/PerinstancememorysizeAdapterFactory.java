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
package autosar21.swcomponent.resources.perinstancememorysize.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.resources.perinstancememorysize.PerInstanceMemorySize;
import autosar21.swcomponent.resources.perinstancememorysize.PerinstancememorysizePackage;
import autosar21.swcomponent.resources.perinstancememorysize.util.PerinstancememorysizeSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class PerinstancememorysizeAdapterFactory
extends AdapterFactoryImpl {
    protected static PerinstancememorysizePackage modelPackage;
    protected PerinstancememorysizeSwitch<Adapter> modelSwitch = new PerinstancememorysizeSwitch<Adapter>(){

        @Override
        public Adapter casePerInstanceMemorySize(PerInstanceMemorySize object) {
            return PerinstancememorysizeAdapterFactory.this.createPerInstanceMemorySizeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return PerinstancememorysizeAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return PerinstancememorysizeAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return PerinstancememorysizeAdapterFactory.this.createEObjectAdapter();
        }
    };

    public PerinstancememorysizeAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = PerinstancememorysizePackage.eINSTANCE;
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

    public Adapter createPerInstanceMemorySizeAdapter() {
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

