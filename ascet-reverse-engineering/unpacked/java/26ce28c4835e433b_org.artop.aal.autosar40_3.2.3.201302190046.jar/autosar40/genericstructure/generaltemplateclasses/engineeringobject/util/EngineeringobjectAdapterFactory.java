/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject
 *  gautosar.gcommonstructure.gimplementation.GEngineeringObject
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.engineeringobject.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.AutosarEngineeringObject;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringObject;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.util.EngineeringobjectSwitch;
import gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GEngineeringObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class EngineeringobjectAdapterFactory
extends AdapterFactoryImpl {
    protected static EngineeringobjectPackage modelPackage;
    protected EngineeringobjectSwitch<Adapter> modelSwitch = new EngineeringobjectSwitch<Adapter>(){

        @Override
        public Adapter caseEngineeringObject(EngineeringObject object) {
            return EngineeringobjectAdapterFactory.this.createEngineeringObjectAdapter();
        }

        @Override
        public Adapter caseAutosarEngineeringObject(AutosarEngineeringObject object) {
            return EngineeringobjectAdapterFactory.this.createAutosarEngineeringObjectAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EngineeringobjectAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EngineeringobjectAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGEngineeringObject(GEngineeringObject object) {
            return EngineeringobjectAdapterFactory.this.createGEngineeringObjectAdapter();
        }

        @Override
        public Adapter caseGAutosarEngineeringObject(GAutosarEngineeringObject object) {
            return EngineeringobjectAdapterFactory.this.createGAutosarEngineeringObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EngineeringobjectAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EngineeringobjectAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EngineeringobjectPackage.eINSTANCE;
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

    public Adapter createEngineeringObjectAdapter() {
        return null;
    }

    public Adapter createAutosarEngineeringObjectAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGEngineeringObjectAdapter() {
        return null;
    }

    public Adapter createGAutosarEngineeringObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

