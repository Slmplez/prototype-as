/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  gautosar.gswcomponents.gportinterface.GArgumentDataPrototype
 *  gautosar.gswcomponents.gportinterface.GClientServerInterface
 *  gautosar.gswcomponents.gportinterface.GClientServerOperation
 *  gautosar.gswcomponents.gportinterface.GModeSwitchInterface
 *  gautosar.gswcomponents.gportinterface.GPortInterface
 *  gautosar.gswcomponents.gportinterface.GSenderReceiverInterface
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.portinterface.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.portinterface.ArgumentPrototype;
import autosar21.swcomponent.portinterface.ClientServerInterface;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import autosar21.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar21.swcomponent.portinterface.OperationPrototype;
import autosar21.swcomponent.portinterface.PortInterface;
import autosar21.swcomponent.portinterface.PortinterfacePackage;
import autosar21.swcomponent.portinterface.SenderReceiverInterface;
import autosar21.swcomponent.portinterface.util.PortinterfaceSwitch;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import gautosar.gswcomponents.gportinterface.GArgumentDataPrototype;
import gautosar.gswcomponents.gportinterface.GClientServerInterface;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import gautosar.gswcomponents.gportinterface.GModeSwitchInterface;
import gautosar.gswcomponents.gportinterface.GPortInterface;
import gautosar.gswcomponents.gportinterface.GSenderReceiverInterface;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class PortinterfaceAdapterFactory
extends AdapterFactoryImpl {
    protected static PortinterfacePackage modelPackage;
    protected PortinterfaceSwitch<Adapter> modelSwitch = new PortinterfaceSwitch<Adapter>(){

        @Override
        public Adapter caseModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype object) {
            return PortinterfaceAdapterFactory.this.createModeDeclarationGroupPrototypeAdapter();
        }

        @Override
        public Adapter caseOperationPrototype(OperationPrototype object) {
            return PortinterfaceAdapterFactory.this.createOperationPrototypeAdapter();
        }

        @Override
        public Adapter caseArgumentPrototype(ArgumentPrototype object) {
            return PortinterfaceAdapterFactory.this.createArgumentPrototypeAdapter();
        }

        @Override
        public Adapter casePortInterface(PortInterface object) {
            return PortinterfaceAdapterFactory.this.createPortInterfaceAdapter();
        }

        @Override
        public Adapter caseClientServerInterface(ClientServerInterface object) {
            return PortinterfaceAdapterFactory.this.createClientServerInterfaceAdapter();
        }

        @Override
        public Adapter caseSenderReceiverInterface(SenderReceiverInterface object) {
            return PortinterfaceAdapterFactory.this.createSenderReceiverInterfaceAdapter();
        }

        @Override
        public Adapter caseDataElementPrototype(DataElementPrototype object) {
            return PortinterfaceAdapterFactory.this.createDataElementPrototypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return PortinterfaceAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return PortinterfaceAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return PortinterfaceAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return PortinterfaceAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return PortinterfaceAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGModeDeclarationGroupPrototype(GModeDeclarationGroupPrototype object) {
            return PortinterfaceAdapterFactory.this.createGModeDeclarationGroupPrototypeAdapter();
        }

        @Override
        public Adapter caseGClientServerOperation(GClientServerOperation object) {
            return PortinterfaceAdapterFactory.this.createGClientServerOperationAdapter();
        }

        @Override
        public Adapter caseGDataPrototype(GDataPrototype object) {
            return PortinterfaceAdapterFactory.this.createGDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGAutosarDataPrototype(GAutosarDataPrototype object) {
            return PortinterfaceAdapterFactory.this.createGAutosarDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
            return PortinterfaceAdapterFactory.this.createGApplicationCompositeElementDataPrototypeAdapter();
        }

        @Override
        public Adapter caseDataPrototype(DataPrototype object) {
            return PortinterfaceAdapterFactory.this.createDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGArgumentDataPrototype(GArgumentDataPrototype object) {
            return PortinterfaceAdapterFactory.this.createGArgumentDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return PortinterfaceAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return PortinterfaceAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return PortinterfaceAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return PortinterfaceAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGPortInterface(GPortInterface object) {
            return PortinterfaceAdapterFactory.this.createGPortInterfaceAdapter();
        }

        @Override
        public Adapter caseGClientServerInterface(GClientServerInterface object) {
            return PortinterfaceAdapterFactory.this.createGClientServerInterfaceAdapter();
        }

        @Override
        public Adapter caseGSenderReceiverInterface(GSenderReceiverInterface object) {
            return PortinterfaceAdapterFactory.this.createGSenderReceiverInterfaceAdapter();
        }

        @Override
        public Adapter caseGModeSwitchInterface(GModeSwitchInterface object) {
            return PortinterfaceAdapterFactory.this.createGModeSwitchInterfaceAdapter();
        }

        @Override
        public Adapter caseGVariableDataPrototype(GVariableDataPrototype object) {
            return PortinterfaceAdapterFactory.this.createGVariableDataPrototypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return PortinterfaceAdapterFactory.this.createEObjectAdapter();
        }
    };

    public PortinterfaceAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = PortinterfacePackage.eINSTANCE;
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

    public Adapter createModeDeclarationGroupPrototypeAdapter() {
        return null;
    }

    public Adapter createOperationPrototypeAdapter() {
        return null;
    }

    public Adapter createArgumentPrototypeAdapter() {
        return null;
    }

    public Adapter createPortInterfaceAdapter() {
        return null;
    }

    public Adapter createClientServerInterfaceAdapter() {
        return null;
    }

    public Adapter createSenderReceiverInterfaceAdapter() {
        return null;
    }

    public Adapter createDataElementPrototypeAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createGModeDeclarationGroupPrototypeAdapter() {
        return null;
    }

    public Adapter createGClientServerOperationAdapter() {
        return null;
    }

    public Adapter createGDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGAutosarDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGApplicationCompositeElementDataPrototypeAdapter() {
        return null;
    }

    public Adapter createDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGArgumentDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createNonSplitableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createGPortInterfaceAdapter() {
        return null;
    }

    public Adapter createGClientServerInterfaceAdapter() {
        return null;
    }

    public Adapter createGSenderReceiverInterfaceAdapter() {
        return null;
    }

    public Adapter createGModeSwitchInterfaceAdapter() {
        return null;
    }

    public Adapter createGVariableDataPrototypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

