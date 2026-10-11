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
package autosar21.swcomponent.communication.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.instanceref.ClientComSpecOperation;
import autosar21.swcomponent.communication.instanceref.ClientServerConnectorComSpecOperation;
import autosar21.swcomponent.communication.instanceref.InstancerefPackage;
import autosar21.swcomponent.communication.instanceref.ModeSwitchComSpecModeDeclarationGroupPrototype;
import autosar21.swcomponent.communication.instanceref.ReceiverComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.SenderComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.SenderReceiverConnectorComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.ServerComSpecOperation;
import autosar21.swcomponent.communication.instanceref.util.InstancerefSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstancerefAdapterFactory
extends AdapterFactoryImpl {
    protected static InstancerefPackage modelPackage;
    protected InstancerefSwitch<Adapter> modelSwitch = new InstancerefSwitch<Adapter>(){

        @Override
        public Adapter caseClientComSpecOperation(ClientComSpecOperation object) {
            return InstancerefAdapterFactory.this.createClientComSpecOperationAdapter();
        }

        @Override
        public Adapter caseClientServerConnectorComSpecOperation(ClientServerConnectorComSpecOperation object) {
            return InstancerefAdapterFactory.this.createClientServerConnectorComSpecOperationAdapter();
        }

        @Override
        public Adapter caseModeSwitchComSpecModeDeclarationGroupPrototype(ModeSwitchComSpecModeDeclarationGroupPrototype object) {
            return InstancerefAdapterFactory.this.createModeSwitchComSpecModeDeclarationGroupPrototypeAdapter();
        }

        @Override
        public Adapter caseReceiverComSpecDataElement(ReceiverComSpecDataElement object) {
            return InstancerefAdapterFactory.this.createReceiverComSpecDataElementAdapter();
        }

        @Override
        public Adapter caseSenderComSpecDataElement(SenderComSpecDataElement object) {
            return InstancerefAdapterFactory.this.createSenderComSpecDataElementAdapter();
        }

        @Override
        public Adapter caseSenderReceiverConnectorComSpecDataElement(SenderReceiverConnectorComSpecDataElement object) {
            return InstancerefAdapterFactory.this.createSenderReceiverConnectorComSpecDataElementAdapter();
        }

        @Override
        public Adapter caseServerComSpecOperation(ServerComSpecOperation object) {
            return InstancerefAdapterFactory.this.createServerComSpecOperationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InstancerefAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InstancerefAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InstancerefAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InstancerefAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
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

    public Adapter createClientComSpecOperationAdapter() {
        return null;
    }

    public Adapter createClientServerConnectorComSpecOperationAdapter() {
        return null;
    }

    public Adapter createModeSwitchComSpecModeDeclarationGroupPrototypeAdapter() {
        return null;
    }

    public Adapter createReceiverComSpecDataElementAdapter() {
        return null;
    }

    public Adapter createSenderComSpecDataElementAdapter() {
        return null;
    }

    public Adapter createSenderReceiverConnectorComSpecDataElementAdapter() {
        return null;
    }

    public Adapter createServerComSpecOperationAdapter() {
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

