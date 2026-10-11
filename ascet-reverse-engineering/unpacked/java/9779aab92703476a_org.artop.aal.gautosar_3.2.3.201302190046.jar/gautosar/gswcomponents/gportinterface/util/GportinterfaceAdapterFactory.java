/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gportinterface.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gportinterface.GApplicationError;
import gautosar.gswcomponents.gportinterface.GArgumentDataPrototype;
import gautosar.gswcomponents.gportinterface.GClientServerInterface;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import gautosar.gswcomponents.gportinterface.GModeSwitchInterface;
import gautosar.gswcomponents.gportinterface.GNvDataInterface;
import gautosar.gswcomponents.gportinterface.GParameterInterface;
import gautosar.gswcomponents.gportinterface.GPortInterface;
import gautosar.gswcomponents.gportinterface.GSenderReceiverInterface;
import gautosar.gswcomponents.gportinterface.GTriggerInterface;
import gautosar.gswcomponents.gportinterface.GportinterfacePackage;
import gautosar.gswcomponents.gportinterface.util.GportinterfaceSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GportinterfaceAdapterFactory
extends AdapterFactoryImpl {
    protected static GportinterfacePackage modelPackage;
    protected GportinterfaceSwitch<Adapter> modelSwitch = new GportinterfaceSwitch<Adapter>(){

        @Override
        public Adapter caseGPortInterface(GPortInterface object) {
            return GportinterfaceAdapterFactory.this.createGPortInterfaceAdapter();
        }

        @Override
        public Adapter caseGSenderReceiverInterface(GSenderReceiverInterface object) {
            return GportinterfaceAdapterFactory.this.createGSenderReceiverInterfaceAdapter();
        }

        @Override
        public Adapter caseGClientServerInterface(GClientServerInterface object) {
            return GportinterfaceAdapterFactory.this.createGClientServerInterfaceAdapter();
        }

        @Override
        public Adapter caseGParameterInterface(GParameterInterface object) {
            return GportinterfaceAdapterFactory.this.createGParameterInterfaceAdapter();
        }

        @Override
        public Adapter caseGNvDataInterface(GNvDataInterface object) {
            return GportinterfaceAdapterFactory.this.createGNvDataInterfaceAdapter();
        }

        @Override
        public Adapter caseGModeSwitchInterface(GModeSwitchInterface object) {
            return GportinterfaceAdapterFactory.this.createGModeSwitchInterfaceAdapter();
        }

        @Override
        public Adapter caseGTriggerInterface(GTriggerInterface object) {
            return GportinterfaceAdapterFactory.this.createGTriggerInterfaceAdapter();
        }

        @Override
        public Adapter caseGArgumentDataPrototype(GArgumentDataPrototype object) {
            return GportinterfaceAdapterFactory.this.createGArgumentDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGClientServerOperation(GClientServerOperation object) {
            return GportinterfaceAdapterFactory.this.createGClientServerOperationAdapter();
        }

        @Override
        public Adapter caseGApplicationError(GApplicationError object) {
            return GportinterfaceAdapterFactory.this.createGApplicationErrorAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GportinterfaceAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GportinterfaceAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GportinterfaceAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GportinterfaceAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter caseGDataPrototype(GDataPrototype object) {
            return GportinterfaceAdapterFactory.this.createGDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGAutosarDataPrototype(GAutosarDataPrototype object) {
            return GportinterfaceAdapterFactory.this.createGAutosarDataPrototypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GportinterfaceAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GportinterfaceAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GportinterfacePackage.eINSTANCE;
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

    public Adapter createGPortInterfaceAdapter() {
        return null;
    }

    public Adapter createGSenderReceiverInterfaceAdapter() {
        return null;
    }

    public Adapter createGClientServerInterfaceAdapter() {
        return null;
    }

    public Adapter createGParameterInterfaceAdapter() {
        return null;
    }

    public Adapter createGNvDataInterfaceAdapter() {
        return null;
    }

    public Adapter createGModeSwitchInterfaceAdapter() {
        return null;
    }

    public Adapter createGTriggerInterfaceAdapter() {
        return null;
    }

    public Adapter createGArgumentDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGClientServerOperationAdapter() {
        return null;
    }

    public Adapter createGApplicationErrorAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createGDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGAutosarDataPrototypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

