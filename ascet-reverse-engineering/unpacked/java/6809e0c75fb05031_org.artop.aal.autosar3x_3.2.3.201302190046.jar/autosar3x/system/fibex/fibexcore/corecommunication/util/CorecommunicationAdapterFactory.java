/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.fibex.fibexcore.corecommunication.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.corecommunication.AbstractSignal;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.DcmIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPartAlternative;
import autosar3x.system.fibex.fibexcore.corecommunication.Frame;
import autosar3x.system.fibex.fibexcore.corecommunication.FramePort;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.IPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduGroup;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduPort;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignal;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.MultiplexedPart;
import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.NmPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.Pdu;
import autosar3x.system.fibex.fibexcore.corecommunication.PduToFrameMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.PdurIPduGroup;
import autosar3x.system.fibex.fibexcore.corecommunication.SegmentPosition;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalPort;
import autosar3x.system.fibex.fibexcore.corecommunication.StaticPart;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignalGroup;
import autosar3x.system.fibex.fibexcore.corecommunication.UserDefinedIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.UserDefinedPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.util.CorecommunicationSwitch;
import autosar3x.system.fibex.fibexcore.coretopology.CommConnectorPort;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class CorecommunicationAdapterFactory
extends AdapterFactoryImpl {
    protected static CorecommunicationPackage modelPackage;
    protected CorecommunicationSwitch<Adapter> modelSwitch = new CorecommunicationSwitch<Adapter>(){

        @Override
        public Adapter caseAbstractSignal(AbstractSignal object) {
            return CorecommunicationAdapterFactory.this.createAbstractSignalAdapter();
        }

        @Override
        public Adapter caseDcmIPdu(DcmIPdu object) {
            return CorecommunicationAdapterFactory.this.createDcmIPduAdapter();
        }

        @Override
        public Adapter caseIPdu(IPdu object) {
            return CorecommunicationAdapterFactory.this.createIPduAdapter();
        }

        @Override
        public Adapter casePdu(Pdu object) {
            return CorecommunicationAdapterFactory.this.createPduAdapter();
        }

        @Override
        public Adapter caseDynamicPart(DynamicPart object) {
            return CorecommunicationAdapterFactory.this.createDynamicPartAdapter();
        }

        @Override
        public Adapter caseMultiplexedPart(MultiplexedPart object) {
            return CorecommunicationAdapterFactory.this.createMultiplexedPartAdapter();
        }

        @Override
        public Adapter caseSegmentPosition(SegmentPosition object) {
            return CorecommunicationAdapterFactory.this.createSegmentPositionAdapter();
        }

        @Override
        public Adapter caseDynamicPartAlternative(DynamicPartAlternative object) {
            return CorecommunicationAdapterFactory.this.createDynamicPartAlternativeAdapter();
        }

        @Override
        public Adapter caseSignalIPdu(SignalIPdu object) {
            return CorecommunicationAdapterFactory.this.createSignalIPduAdapter();
        }

        @Override
        public Adapter caseISignalToIPduMapping(ISignalToIPduMapping object) {
            return CorecommunicationAdapterFactory.this.createISignalToIPduMappingAdapter();
        }

        @Override
        public Adapter caseISignal(ISignal object) {
            return CorecommunicationAdapterFactory.this.createISignalAdapter();
        }

        @Override
        public Adapter caseIPduTiming(IPduTiming object) {
            return CorecommunicationAdapterFactory.this.createIPduTimingAdapter();
        }

        @Override
        public Adapter caseFrame(Frame object) {
            return CorecommunicationAdapterFactory.this.createFrameAdapter();
        }

        @Override
        public Adapter casePduToFrameMapping(PduToFrameMapping object) {
            return CorecommunicationAdapterFactory.this.createPduToFrameMappingAdapter();
        }

        @Override
        public Adapter caseFramePort(FramePort object) {
            return CorecommunicationAdapterFactory.this.createFramePortAdapter();
        }

        @Override
        public Adapter caseIPduGroup(IPduGroup object) {
            return CorecommunicationAdapterFactory.this.createIPduGroupAdapter();
        }

        @Override
        public Adapter caseIPduPort(IPduPort object) {
            return CorecommunicationAdapterFactory.this.createIPduPortAdapter();
        }

        @Override
        public Adapter caseIPduTriggering(IPduTriggering object) {
            return CorecommunicationAdapterFactory.this.createIPduTriggeringAdapter();
        }

        @Override
        public Adapter caseISignalTriggering(ISignalTriggering object) {
            return CorecommunicationAdapterFactory.this.createISignalTriggeringAdapter();
        }

        @Override
        public Adapter caseSignalPort(SignalPort object) {
            return CorecommunicationAdapterFactory.this.createSignalPortAdapter();
        }

        @Override
        public Adapter caseMultiplexedIPdu(MultiplexedIPdu object) {
            return CorecommunicationAdapterFactory.this.createMultiplexedIPduAdapter();
        }

        @Override
        public Adapter caseStaticPart(StaticPart object) {
            return CorecommunicationAdapterFactory.this.createStaticPartAdapter();
        }

        @Override
        public Adapter caseNmPdu(NmPdu object) {
            return CorecommunicationAdapterFactory.this.createNmPduAdapter();
        }

        @Override
        public Adapter caseNPdu(NPdu object) {
            return CorecommunicationAdapterFactory.this.createNPduAdapter();
        }

        @Override
        public Adapter casePdurIPduGroup(PdurIPduGroup object) {
            return CorecommunicationAdapterFactory.this.createPdurIPduGroupAdapter();
        }

        @Override
        public Adapter caseSystemSignal(SystemSignal object) {
            return CorecommunicationAdapterFactory.this.createSystemSignalAdapter();
        }

        @Override
        public Adapter caseSystemSignalGroup(SystemSignalGroup object) {
            return CorecommunicationAdapterFactory.this.createSystemSignalGroupAdapter();
        }

        @Override
        public Adapter caseUserDefinedIPdu(UserDefinedIPdu object) {
            return CorecommunicationAdapterFactory.this.createUserDefinedIPduAdapter();
        }

        @Override
        public Adapter caseUserDefinedPdu(UserDefinedPdu object) {
            return CorecommunicationAdapterFactory.this.createUserDefinedPduAdapter();
        }

        @Override
        public Adapter caseFrameTriggering(FrameTriggering object) {
            return CorecommunicationAdapterFactory.this.createFrameTriggeringAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return CorecommunicationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CorecommunicationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return CorecommunicationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return CorecommunicationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return CorecommunicationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return CorecommunicationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return CorecommunicationAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return CorecommunicationAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return CorecommunicationAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter caseCommConnectorPort(CommConnectorPort object) {
            return CorecommunicationAdapterFactory.this.createCommConnectorPortAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return CorecommunicationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public CorecommunicationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = CorecommunicationPackage.eINSTANCE;
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

    public Adapter createAbstractSignalAdapter() {
        return null;
    }

    public Adapter createDcmIPduAdapter() {
        return null;
    }

    public Adapter createIPduAdapter() {
        return null;
    }

    public Adapter createPduAdapter() {
        return null;
    }

    public Adapter createDynamicPartAdapter() {
        return null;
    }

    public Adapter createMultiplexedPartAdapter() {
        return null;
    }

    public Adapter createSegmentPositionAdapter() {
        return null;
    }

    public Adapter createDynamicPartAlternativeAdapter() {
        return null;
    }

    public Adapter createSignalIPduAdapter() {
        return null;
    }

    public Adapter createISignalToIPduMappingAdapter() {
        return null;
    }

    public Adapter createISignalAdapter() {
        return null;
    }

    public Adapter createIPduTimingAdapter() {
        return null;
    }

    public Adapter createFrameAdapter() {
        return null;
    }

    public Adapter createPduToFrameMappingAdapter() {
        return null;
    }

    public Adapter createFramePortAdapter() {
        return null;
    }

    public Adapter createIPduGroupAdapter() {
        return null;
    }

    public Adapter createIPduPortAdapter() {
        return null;
    }

    public Adapter createIPduTriggeringAdapter() {
        return null;
    }

    public Adapter createISignalTriggeringAdapter() {
        return null;
    }

    public Adapter createSignalPortAdapter() {
        return null;
    }

    public Adapter createMultiplexedIPduAdapter() {
        return null;
    }

    public Adapter createStaticPartAdapter() {
        return null;
    }

    public Adapter createNmPduAdapter() {
        return null;
    }

    public Adapter createNPduAdapter() {
        return null;
    }

    public Adapter createPdurIPduGroupAdapter() {
        return null;
    }

    public Adapter createSystemSignalAdapter() {
        return null;
    }

    public Adapter createSystemSignalGroupAdapter() {
        return null;
    }

    public Adapter createUserDefinedIPduAdapter() {
        return null;
    }

    public Adapter createUserDefinedPduAdapter() {
        return null;
    }

    public Adapter createFrameTriggeringAdapter() {
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

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createFibexElementAdapter() {
        return null;
    }

    public Adapter createCommConnectorPortAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

