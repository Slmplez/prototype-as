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
package autosar40.swcomponent.swcinternalbehavior.portapioptions.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortAPIOption;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortDefinedArgumentValue;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.util.PortapioptionsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class PortapioptionsAdapterFactory
extends AdapterFactoryImpl {
    protected static PortapioptionsPackage modelPackage;
    protected PortapioptionsSwitch<Adapter> modelSwitch = new PortapioptionsSwitch<Adapter>(){

        @Override
        public Adapter casePortDefinedArgumentValue(PortDefinedArgumentValue object) {
            return PortapioptionsAdapterFactory.this.createPortDefinedArgumentValueAdapter();
        }

        @Override
        public Adapter casePortAPIOption(PortAPIOption object) {
            return PortapioptionsAdapterFactory.this.createPortAPIOptionAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return PortapioptionsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return PortapioptionsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return PortapioptionsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public PortapioptionsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = PortapioptionsPackage.eINSTANCE;
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

    public Adapter createPortDefinedArgumentValueAdapter() {
        return null;
    }

    public Adapter createPortAPIOptionAdapter() {
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

