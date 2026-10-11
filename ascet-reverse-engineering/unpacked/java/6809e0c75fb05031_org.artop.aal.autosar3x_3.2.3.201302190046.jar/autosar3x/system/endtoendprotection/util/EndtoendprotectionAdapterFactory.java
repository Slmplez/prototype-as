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
package autosar3x.system.endtoendprotection.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.endtoendprotection.EndToEndProtectionISignalIPdu;
import autosar3x.system.endtoendprotection.EndtoendprotectionPackage;
import autosar3x.system.endtoendprotection.util.EndtoendprotectionSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class EndtoendprotectionAdapterFactory
extends AdapterFactoryImpl {
    protected static EndtoendprotectionPackage modelPackage;
    protected EndtoendprotectionSwitch<Adapter> modelSwitch = new EndtoendprotectionSwitch<Adapter>(){

        @Override
        public Adapter caseEndToEndProtectionISignalIPdu(EndToEndProtectionISignalIPdu object) {
            return EndtoendprotectionAdapterFactory.this.createEndToEndProtectionISignalIPduAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EndtoendprotectionAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EndtoendprotectionAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EndtoendprotectionAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EndtoendprotectionAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EndtoendprotectionPackage.eINSTANCE;
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

    public Adapter createEndToEndProtectionISignalIPduAdapter() {
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

