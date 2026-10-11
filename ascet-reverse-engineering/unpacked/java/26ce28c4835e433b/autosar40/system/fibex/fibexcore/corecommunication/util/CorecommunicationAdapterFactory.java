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
package autosar40.system.fibex.fibexcore.corecommunication.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.DcmIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPartAlternative;
import autosar40.system.fibex.fibexcore.corecommunication.Frame;
import autosar40.system.fibex.fibexcore.corecommunication.FramePort;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.fibex.fibexcore.corecommunication.IPduPort;
import autosar40.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalGroup;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduGroup;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduRefConditional;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalPort;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalProps;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalTriggeringRefConditional;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedPart;
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import autosar40.system.fibex.fibexcore.corecommunication.NmPdu;
import autosar40.system.fibex.fibexcore.corecommunication.Pdu;
import autosar40.system.fibex.fibexcore.corecommunication.PduToFrameMapping;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggeringRefConditional;
import autosar40.system.fibex.fibexcore.corecommunication.PdurIPduGroup;
import autosar40.system.fibex.fibexcore.corecommunication.SegmentPosition;
import autosar40.system.fibex.fibexcore.corecommunication.SignalIPduCounter;
import autosar40.system.fibex.fibexcore.corecommunication.SignalIPduReplication;
import autosar40.system.fibex.fibexcore.corecommunication.StaticPart;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignalGroup;
import autosar40.system.fibex.fibexcore.corecommunication.UserDefinedIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.UserDefinedPdu;
import autosar40.system.fibex.fibexcore.corecommunication.XcpPdu;
import autosar40.system.fibex.fibexcore.corecommunication.util.CorecommunicationSwitch;
import autosar40.system.fibex.fibexcore.coretopology.CommConnectorPort;
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
        public Adapter caseISignalIPdu(ISignalIPdu object) {
            return CorecommunicationAdapterFactory.this.createISignalIPduAdapter();
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
        public Adapter caseSystemSignal(SystemSignal object) {
            return CorecommunicationAdapterFactory.this.createSystemSignalAdapter();
        }

        @Override
        public Adapter caseSystemSignalGroup(SystemSignalGroup object) {
            return CorecommunicationAdapterFactory.this.createSystemSignalGroupAdapter();
        }

        @Override
        public Adapter caseISignalProps(ISignalProps object) {
            return CorecommunicationAdapterFactory.this.createISignalPropsAdapter();
        }

        @Override
        public Adapter caseISignalGroup(ISignalGroup object) {
            return CorecommunicationAdapterFactory.this.createISignalGroupAdapter();
        }

        @Override
        public Adapter caseIPduTiming(IPduTiming object) {
            return CorecommunicationAdapterFactory.this.createIPduTimingAdapter();
        }

        @Override
        public Adapter caseSignalIPduReplication(SignalIPduReplication object) {
            return CorecommunicationAdapterFactory.this.createSignalIPduReplicationAdapter();
        }

        @Override
        public Adapter caseSignalIPduCounter(SignalIPduCounter object) {
            return CorecommunicationAdapterFactory.this.createSignalIPduCounterAdapter();
        }

        @Override
        public Adapter caseFramePort(FramePort object) {
            return CorecommunicationAdapterFactory.this.createFramePortAdapter();
        }

        @Override
        public Adapter caseFrameTriggering(FrameTriggering object) {
            return CorecommunicationAdapterFactory.this.createFrameTriggeringAdapter();
        }

        @Override
        public Adapter casePduTriggeringRefConditional(PduTriggeringRefConditional object) {
            return CorecommunicationAdapterFactory.this.createPduTriggeringRefConditionalAdapter();
        }

        @Override
        public Adapter casePduTriggering(PduTriggering object) {
            return CorecommunicationAdapterFactory.this.createPduTriggeringAdapter();
        }

        @Override
        public Adapter caseIPduPort(IPduPort object) {
            return CorecommunicationAdapterFactory.this.createIPduPortAdapter();
        }

        @Override
        public Adapter caseISignalTriggeringRefConditional(ISignalTriggeringRefConditional object) {
            return CorecommunicationAdapterFactory.this.createISignalTriggeringRefConditionalAdapter();
        }

        @Override
        public Adapter caseISignalTriggering(ISignalTriggering object) {
            return CorecommunicationAdapterFactory.this.createISignalTriggeringAdapter();
        }

        @Override
        public Adapter caseISignalPort(ISignalPort object) {
            return CorecommunicationAdapterFactory.this.createISignalPortAdapter();
        }

        @Override
        public Adapter caseISignalIPduGroup(ISignalIPduGroup object) {
            return CorecommunicationAdapterFactory.this.createISignalIPduGroupAdapter();
        }

        @Override
        public Adapter caseISignalIPduRefConditional(ISignalIPduRefConditional object) {
            return CorecommunicationAdapterFactory.this.createISignalIPduRefConditionalAdapter();
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
        public Adapter casePduToFrameMapping(PduToFrameMapping object) {
            return CorecommunicationAdapterFactory.this.createPduToFrameMappingAdapter();
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
        public Adapter caseXcpPdu(XcpPdu object) {
            return CorecommunicationAdapterFactory.this.createXcpPduAdapter();
        }

        @Override
        public Adapter caseFrame(Frame object) {
            return CorecommunicationAdapterFactory.this.createFrameAdapter();
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
        public Adapter caseReferrable(Referrable object) {
            return CorecommunicationAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return CorecommunicationAdapterFactory.this.createMultilanguageReferrableAdapter();
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
        public Adapter caseCollectableElement(CollectableElement object) {
            return CorecommunicationAdapterFactory.this.createCollectableElementAdapter();
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
        public Adapter caseFibexElement(FibexElement object) {
            return CorecommunicationAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return CorecommunicationAdapterFactory.this.createARElementAdapter();
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

    public Adapter createISignalIPduAdapter() {
        return null;
    }

    public Adapter createISignalToIPduMappingAdapter() {
        return null;
    }

    public Adapter createISignalAdapter() {
        return null;
    }

    public Adapter createSystemSignalAdapter() {
        return null;
    }

    public Adapter createSystemSignalGroupAdapter() {
        return null;
    }

    public Adapter createISignalPropsAdapter() {
        return null;
    }

    public Adapter createISignalGroupAdapter() {
        return null;
    }

    public Adapter createIPduTimingAdapter() {
        return null;
    }

    public Adapter createSignalIPduReplicationAdapter() {
        return null;
    }

    public Adapter createSignalIPduCounterAdapter() {
        return null;
    }

    public Adapter createFramePortAdapter() {
        return null;
    }

    public Adapter createFrameTriggeringAdapter() {
        return null;
    }

    public Adapter createPduTriggeringRefConditionalAdapter() {
        return null;
    }

    public Adapter createPduTriggeringAdapter() {
        return null;
    }

    public Adapter createIPduPortAdapter() {
        return null;
    }

    public Adapter createISignalTriggeringRefConditionalAdapter() {
        return null;
    }

    public Adapter createISignalTriggeringAdapter() {
        return null;
    }

    public Adapter createISignalPortAdapter() {
        return null;
    }

    public Adapter createISignalIPduGroupAdapter() {
        return null;
    }

    public Adapter createISignalIPduRefConditionalAdapter() {
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

    public Adapter createPduToFrameMappingAdapter() {
        return null;
    }

    public Adapter createUserDefinedIPduAdapter() {
        return null;
    }

    public Adapter createUserDefinedPduAdapter() {
        return null;
    }

    public Adapter createXcpPduAdapter() {
        return null;
    }

    public Adapter createFrameAdapter() {
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

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createCollectableElementAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createFibexElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createCommConnectorPortAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

