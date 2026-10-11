/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification.util;

import com.etas.amd620.core.ComponentSpecification.ActionT;
import com.etas.amd620.core.ComponentSpecification.ActionType;
import com.etas.amd620.core.ComponentSpecification.ActionsType;
import com.etas.amd620.core.ComponentSpecification.ActionsType1;
import com.etas.amd620.core.ComponentSpecification.BlockConnectorT;
import com.etas.amd620.core.ComponentSpecification.BlockDiagramSpecificationT;
import com.etas.amd620.core.ComponentSpecification.BlockInterfaceT;
import com.etas.amd620.core.ComponentSpecification.BooleanTableType;
import com.etas.amd620.core.ComponentSpecification.CCodeSpecificationT;
import com.etas.amd620.core.ComponentSpecification.CCodeType;
import com.etas.amd620.core.ComponentSpecification.CodeVariantType;
import com.etas.amd620.core.ComponentSpecification.ColorT;
import com.etas.amd620.core.ComponentSpecification.ColumnHeadingType;
import com.etas.amd620.core.ComponentSpecification.ComplexElementT;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ConditionColumnsType;
import com.etas.amd620.core.ComponentSpecification.ConditionType;
import com.etas.amd620.core.ComponentSpecification.ConditionalTableType;
import com.etas.amd620.core.ComponentSpecification.ConnectionLineT;
import com.etas.amd620.core.ComponentSpecification.ConnectionPointT;
import com.etas.amd620.core.ComponentSpecification.ConnectionT;
import com.etas.amd620.core.ComponentSpecification.ConnectorInterfaceType;
import com.etas.amd620.core.ComponentSpecification.ContentsComplexType;
import com.etas.amd620.core.ComponentSpecification.ControlRteAccessT;
import com.etas.amd620.core.ComponentSpecification.ControlRteInvokeT;
import com.etas.amd620.core.ComponentSpecification.ControlT;
import com.etas.amd620.core.ComponentSpecification.DiagramElementT;
import com.etas.amd620.core.ComponentSpecification.DiagramElementsComplexType;
import com.etas.amd620.core.ComponentSpecification.DisablingModesType;
import com.etas.amd620.core.ComponentSpecification.DocumentRoot;
import com.etas.amd620.core.ComponentSpecification.ESDLActionType;
import com.etas.amd620.core.ComponentSpecification.ESDLCodeT;
import com.etas.amd620.core.ComponentSpecification.ESDLSpecificationT;
import com.etas.amd620.core.ComponentSpecification.EntryActionType;
import com.etas.amd620.core.ComponentSpecification.EventSpecificationT;
import com.etas.amd620.core.ComponentSpecification.EventT;
import com.etas.amd620.core.ComponentSpecification.EventTypeType;
import com.etas.amd620.core.ComponentSpecification.EventsType;
import com.etas.amd620.core.ComponentSpecification.ExitActionType;
import com.etas.amd620.core.ComponentSpecification.FileListSpecificationT;
import com.etas.amd620.core.ComponentSpecification.FileReferenceT;
import com.etas.amd620.core.ComponentSpecification.FileType;
import com.etas.amd620.core.ComponentSpecification.FormattedTextT;
import com.etas.amd620.core.ComponentSpecification.GenericDataT;
import com.etas.amd620.core.ComponentSpecification.GetSetPortBaseT;
import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.GraphicSpecificationT;
import com.etas.amd620.core.ComponentSpecification.HeaderFileType;
import com.etas.amd620.core.ComponentSpecification.HierarchyConnectorType;
import com.etas.amd620.core.ComponentSpecification.HierarchyStateT;
import com.etas.amd620.core.ComponentSpecification.HierarchyT;
import com.etas.amd620.core.ComponentSpecification.IconT;
import com.etas.amd620.core.ComponentSpecification.ImplementationCastT;
import com.etas.amd620.core.ComponentSpecification.InOutPortT;
import com.etas.amd620.core.ComponentSpecification.InputColumnsType;
import com.etas.amd620.core.ComponentSpecification.InputPortType;
import com.etas.amd620.core.ComponentSpecification.InstructionColumnsType;
import com.etas.amd620.core.ComponentSpecification.InterfaceElementType;
import com.etas.amd620.core.ComponentSpecification.InterfacesType;
import com.etas.amd620.core.ComponentSpecification.InterfacesType1;
import com.etas.amd620.core.ComponentSpecification.InterfacesType2;
import com.etas.amd620.core.ComponentSpecification.InterfacesType3;
import com.etas.amd620.core.ComponentSpecification.InterfacesType4;
import com.etas.amd620.core.ComponentSpecification.InterfacesType5;
import com.etas.amd620.core.ComponentSpecification.InterfacesType6;
import com.etas.amd620.core.ComponentSpecification.InterfacesType7;
import com.etas.amd620.core.ComponentSpecification.IntervalT;
import com.etas.amd620.core.ComponentSpecification.ItemRefT;
import com.etas.amd620.core.ComponentSpecification.JunctionT;
import com.etas.amd620.core.ComponentSpecification.LayoutT;
import com.etas.amd620.core.ComponentSpecification.LineStyleT;
import com.etas.amd620.core.ComponentSpecification.LineT;
import com.etas.amd620.core.ComponentSpecification.LiteralT;
import com.etas.amd620.core.ComponentSpecification.MemberGetPortT;
import com.etas.amd620.core.ComponentSpecification.MemberSetPortT;
import com.etas.amd620.core.ComponentSpecification.MethodActionType;
import com.etas.amd620.core.ComponentSpecification.MethodBodiesComplexType;
import com.etas.amd620.core.ComponentSpecification.MethodBodyT;
import com.etas.amd620.core.ComponentSpecification.MethodPortT;
import com.etas.amd620.core.ComponentSpecification.ModeElementType;
import com.etas.amd620.core.ComponentSpecification.ModeSwitchEventType;
import com.etas.amd620.core.ComponentSpecification.ModeT;
import com.etas.amd620.core.ComponentSpecification.NoteType;
import com.etas.amd620.core.ComponentSpecification.NotesT;
import com.etas.amd620.core.ComponentSpecification.OperationInvokedEventType;
import com.etas.amd620.core.ComponentSpecification.OperatorT;
import com.etas.amd620.core.ComponentSpecification.OperatorType;
import com.etas.amd620.core.ComponentSpecification.OptionT;
import com.etas.amd620.core.ComponentSpecification.OutputColumnsType;
import com.etas.amd620.core.ComponentSpecification.PinT;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.PortT;
import com.etas.amd620.core.ComponentSpecification.PortsType;
import com.etas.amd620.core.ComponentSpecification.ProjectSpecificationT;
import com.etas.amd620.core.ComponentSpecification.ResourceInterfaceType;
import com.etas.amd620.core.ComponentSpecification.ResourceT;
import com.etas.amd620.core.ComponentSpecification.ReturnPortT;
import com.etas.amd620.core.ComponentSpecification.ReturnPortType;
import com.etas.amd620.core.ComponentSpecification.ReturnPortType1;
import com.etas.amd620.core.ComponentSpecification.ReturnPortType2;
import com.etas.amd620.core.ComponentSpecification.RunnableType;
import com.etas.amd620.core.ComponentSpecification.RunnablesType;
import com.etas.amd620.core.ComponentSpecification.SelectorPortT;
import com.etas.amd620.core.ComponentSpecification.SelectorPortType;
import com.etas.amd620.core.ComponentSpecification.SelectorPortType1;
import com.etas.amd620.core.ComponentSpecification.SelectorPortType2;
import com.etas.amd620.core.ComponentSpecification.SequenceCallT;
import com.etas.amd620.core.ComponentSpecification.SequencedPortT;
import com.etas.amd620.core.ComponentSpecification.SimpleElementBaseT;
import com.etas.amd620.core.ComponentSpecification.SimpleElementT;
import com.etas.amd620.core.ComponentSpecification.SizeT;
import com.etas.amd620.core.ComponentSpecification.SpecificationT;
import com.etas.amd620.core.ComponentSpecification.SpecificationType;
import com.etas.amd620.core.ComponentSpecification.SpecificationsType;
import com.etas.amd620.core.ComponentSpecification.StateMachineSpecificationT;
import com.etas.amd620.core.ComponentSpecification.StateT;
import com.etas.amd620.core.ComponentSpecification.StaticActionType;
import com.etas.amd620.core.ComponentSpecification.SymbolT;
import com.etas.amd620.core.ComponentSpecification.TableCellType;
import com.etas.amd620.core.ComponentSpecification.TableColumnT;
import com.etas.amd620.core.ComponentSpecification.TableSpecificationT;
import com.etas.amd620.core.ComponentSpecification.TextT;
import com.etas.amd620.core.ComponentSpecification.TimeStampT;
import com.etas.amd620.core.ComponentSpecification.TimingEventType;
import com.etas.amd620.core.ComponentSpecification.TransitionT;
import com.etas.amd620.core.ComponentSpecification.TransitionType;
import com.etas.amd620.core.ComponentSpecification.TriggerPortType;
import com.etas.amd620.core.ComponentSpecification.ViewInfoT;
import com.etas.amd620.core.ComponentSpecification.ViewType;
import com.etas.amd620.core.ComponentSpecification.ViewType1;
import com.etas.amd620.core.ComponentSpecification.util.ComponentSpecificationSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ComponentSpecificationAdapterFactory
extends AdapterFactoryImpl {
    protected static ComponentSpecificationPackage modelPackage;
    protected ComponentSpecificationSwitch<Adapter> modelSwitch = new ComponentSpecificationSwitch<Adapter>(){

        @Override
        public Adapter caseActionsType(ActionsType object) {
            return ComponentSpecificationAdapterFactory.this.createActionsTypeAdapter();
        }

        @Override
        public Adapter caseActionsType1(ActionsType1 object) {
            return ComponentSpecificationAdapterFactory.this.createActionsType1Adapter();
        }

        @Override
        public Adapter caseActionT(ActionT object) {
            return ComponentSpecificationAdapterFactory.this.createActionTAdapter();
        }

        @Override
        public Adapter caseActionType(ActionType object) {
            return ComponentSpecificationAdapterFactory.this.createActionTypeAdapter();
        }

        @Override
        public Adapter caseBlockConnectorT(BlockConnectorT object) {
            return ComponentSpecificationAdapterFactory.this.createBlockConnectorTAdapter();
        }

        @Override
        public Adapter caseBlockDiagramSpecificationT(BlockDiagramSpecificationT object) {
            return ComponentSpecificationAdapterFactory.this.createBlockDiagramSpecificationTAdapter();
        }

        @Override
        public Adapter caseBlockInterfaceT(BlockInterfaceT object) {
            return ComponentSpecificationAdapterFactory.this.createBlockInterfaceTAdapter();
        }

        @Override
        public Adapter caseBooleanTableType(BooleanTableType object) {
            return ComponentSpecificationAdapterFactory.this.createBooleanTableTypeAdapter();
        }

        @Override
        public Adapter caseCCodeSpecificationT(CCodeSpecificationT object) {
            return ComponentSpecificationAdapterFactory.this.createCCodeSpecificationTAdapter();
        }

        @Override
        public Adapter caseCCodeType(CCodeType object) {
            return ComponentSpecificationAdapterFactory.this.createCCodeTypeAdapter();
        }

        @Override
        public Adapter caseCodeVariantType(CodeVariantType object) {
            return ComponentSpecificationAdapterFactory.this.createCodeVariantTypeAdapter();
        }

        @Override
        public Adapter caseColorT(ColorT object) {
            return ComponentSpecificationAdapterFactory.this.createColorTAdapter();
        }

        @Override
        public Adapter caseColumnHeadingType(ColumnHeadingType object) {
            return ComponentSpecificationAdapterFactory.this.createColumnHeadingTypeAdapter();
        }

        @Override
        public Adapter caseComplexElementT(ComplexElementT object) {
            return ComponentSpecificationAdapterFactory.this.createComplexElementTAdapter();
        }

        @Override
        public Adapter caseConditionalTableType(ConditionalTableType object) {
            return ComponentSpecificationAdapterFactory.this.createConditionalTableTypeAdapter();
        }

        @Override
        public Adapter caseConditionColumnsType(ConditionColumnsType object) {
            return ComponentSpecificationAdapterFactory.this.createConditionColumnsTypeAdapter();
        }

        @Override
        public Adapter caseConditionType(ConditionType object) {
            return ComponentSpecificationAdapterFactory.this.createConditionTypeAdapter();
        }

        @Override
        public Adapter caseConnectionLineT(ConnectionLineT object) {
            return ComponentSpecificationAdapterFactory.this.createConnectionLineTAdapter();
        }

        @Override
        public Adapter caseConnectionPointT(ConnectionPointT object) {
            return ComponentSpecificationAdapterFactory.this.createConnectionPointTAdapter();
        }

        @Override
        public Adapter caseConnectionT(ConnectionT object) {
            return ComponentSpecificationAdapterFactory.this.createConnectionTAdapter();
        }

        @Override
        public Adapter caseConnectorInterfaceType(ConnectorInterfaceType object) {
            return ComponentSpecificationAdapterFactory.this.createConnectorInterfaceTypeAdapter();
        }

        @Override
        public Adapter caseContentsComplexType(ContentsComplexType object) {
            return ComponentSpecificationAdapterFactory.this.createContentsComplexTypeAdapter();
        }

        @Override
        public Adapter caseControlRteAccessT(ControlRteAccessT object) {
            return ComponentSpecificationAdapterFactory.this.createControlRteAccessTAdapter();
        }

        @Override
        public Adapter caseControlRteInvokeT(ControlRteInvokeT object) {
            return ComponentSpecificationAdapterFactory.this.createControlRteInvokeTAdapter();
        }

        @Override
        public Adapter caseControlT(ControlT object) {
            return ComponentSpecificationAdapterFactory.this.createControlTAdapter();
        }

        @Override
        public Adapter caseDiagramElementsComplexType(DiagramElementsComplexType object) {
            return ComponentSpecificationAdapterFactory.this.createDiagramElementsComplexTypeAdapter();
        }

        @Override
        public Adapter caseDiagramElementT(DiagramElementT object) {
            return ComponentSpecificationAdapterFactory.this.createDiagramElementTAdapter();
        }

        @Override
        public Adapter caseDisablingModesType(DisablingModesType object) {
            return ComponentSpecificationAdapterFactory.this.createDisablingModesTypeAdapter();
        }

        @Override
        public Adapter caseDocumentRoot(DocumentRoot object) {
            return ComponentSpecificationAdapterFactory.this.createDocumentRootAdapter();
        }

        @Override
        public Adapter caseEntryActionType(EntryActionType object) {
            return ComponentSpecificationAdapterFactory.this.createEntryActionTypeAdapter();
        }

        @Override
        public Adapter caseESDLActionType(ESDLActionType object) {
            return ComponentSpecificationAdapterFactory.this.createESDLActionTypeAdapter();
        }

        @Override
        public Adapter caseESDLCodeT(ESDLCodeT object) {
            return ComponentSpecificationAdapterFactory.this.createESDLCodeTAdapter();
        }

        @Override
        public Adapter caseESDLSpecificationT(ESDLSpecificationT object) {
            return ComponentSpecificationAdapterFactory.this.createESDLSpecificationTAdapter();
        }

        @Override
        public Adapter caseEventSpecificationT(EventSpecificationT object) {
            return ComponentSpecificationAdapterFactory.this.createEventSpecificationTAdapter();
        }

        @Override
        public Adapter caseEventsType(EventsType object) {
            return ComponentSpecificationAdapterFactory.this.createEventsTypeAdapter();
        }

        @Override
        public Adapter caseEventT(EventT object) {
            return ComponentSpecificationAdapterFactory.this.createEventTAdapter();
        }

        @Override
        public Adapter caseEventTypeType(EventTypeType object) {
            return ComponentSpecificationAdapterFactory.this.createEventTypeTypeAdapter();
        }

        @Override
        public Adapter caseExitActionType(ExitActionType object) {
            return ComponentSpecificationAdapterFactory.this.createExitActionTypeAdapter();
        }

        @Override
        public Adapter caseFileListSpecificationT(FileListSpecificationT object) {
            return ComponentSpecificationAdapterFactory.this.createFileListSpecificationTAdapter();
        }

        @Override
        public Adapter caseFileReferenceT(FileReferenceT object) {
            return ComponentSpecificationAdapterFactory.this.createFileReferenceTAdapter();
        }

        @Override
        public Adapter caseFileType(FileType object) {
            return ComponentSpecificationAdapterFactory.this.createFileTypeAdapter();
        }

        @Override
        public Adapter caseFormattedTextT(FormattedTextT object) {
            return ComponentSpecificationAdapterFactory.this.createFormattedTextTAdapter();
        }

        @Override
        public Adapter caseGenericDataT(GenericDataT object) {
            return ComponentSpecificationAdapterFactory.this.createGenericDataTAdapter();
        }

        @Override
        public Adapter caseGetSetPortBaseT(GetSetPortBaseT object) {
            return ComponentSpecificationAdapterFactory.this.createGetSetPortBaseTAdapter();
        }

        @Override
        public Adapter caseGraphicObjectT(GraphicObjectT object) {
            return ComponentSpecificationAdapterFactory.this.createGraphicObjectTAdapter();
        }

        @Override
        public Adapter caseGraphicSpecificationT(GraphicSpecificationT object) {
            return ComponentSpecificationAdapterFactory.this.createGraphicSpecificationTAdapter();
        }

        @Override
        public Adapter caseHeaderFileType(HeaderFileType object) {
            return ComponentSpecificationAdapterFactory.this.createHeaderFileTypeAdapter();
        }

        @Override
        public Adapter caseHierarchyConnectorType(HierarchyConnectorType object) {
            return ComponentSpecificationAdapterFactory.this.createHierarchyConnectorTypeAdapter();
        }

        @Override
        public Adapter caseHierarchyStateT(HierarchyStateT object) {
            return ComponentSpecificationAdapterFactory.this.createHierarchyStateTAdapter();
        }

        @Override
        public Adapter caseHierarchyT(HierarchyT object) {
            return ComponentSpecificationAdapterFactory.this.createHierarchyTAdapter();
        }

        @Override
        public Adapter caseIconT(IconT object) {
            return ComponentSpecificationAdapterFactory.this.createIconTAdapter();
        }

        @Override
        public Adapter caseImplementationCastT(ImplementationCastT object) {
            return ComponentSpecificationAdapterFactory.this.createImplementationCastTAdapter();
        }

        @Override
        public Adapter caseInOutPortT(InOutPortT object) {
            return ComponentSpecificationAdapterFactory.this.createInOutPortTAdapter();
        }

        @Override
        public Adapter caseInputColumnsType(InputColumnsType object) {
            return ComponentSpecificationAdapterFactory.this.createInputColumnsTypeAdapter();
        }

        @Override
        public Adapter caseInputPortType(InputPortType object) {
            return ComponentSpecificationAdapterFactory.this.createInputPortTypeAdapter();
        }

        @Override
        public Adapter caseInstructionColumnsType(InstructionColumnsType object) {
            return ComponentSpecificationAdapterFactory.this.createInstructionColumnsTypeAdapter();
        }

        @Override
        public Adapter caseInterfaceElementType(InterfaceElementType object) {
            return ComponentSpecificationAdapterFactory.this.createInterfaceElementTypeAdapter();
        }

        @Override
        public Adapter caseInterfacesType(InterfacesType object) {
            return ComponentSpecificationAdapterFactory.this.createInterfacesTypeAdapter();
        }

        @Override
        public Adapter caseInterfacesType1(InterfacesType1 object) {
            return ComponentSpecificationAdapterFactory.this.createInterfacesType1Adapter();
        }

        @Override
        public Adapter caseInterfacesType2(InterfacesType2 object) {
            return ComponentSpecificationAdapterFactory.this.createInterfacesType2Adapter();
        }

        @Override
        public Adapter caseInterfacesType3(InterfacesType3 object) {
            return ComponentSpecificationAdapterFactory.this.createInterfacesType3Adapter();
        }

        @Override
        public Adapter caseInterfacesType4(InterfacesType4 object) {
            return ComponentSpecificationAdapterFactory.this.createInterfacesType4Adapter();
        }

        @Override
        public Adapter caseInterfacesType5(InterfacesType5 object) {
            return ComponentSpecificationAdapterFactory.this.createInterfacesType5Adapter();
        }

        @Override
        public Adapter caseInterfacesType6(InterfacesType6 object) {
            return ComponentSpecificationAdapterFactory.this.createInterfacesType6Adapter();
        }

        @Override
        public Adapter caseInterfacesType7(InterfacesType7 object) {
            return ComponentSpecificationAdapterFactory.this.createInterfacesType7Adapter();
        }

        @Override
        public Adapter caseIntervalT(IntervalT object) {
            return ComponentSpecificationAdapterFactory.this.createIntervalTAdapter();
        }

        @Override
        public Adapter caseItemRefT(ItemRefT object) {
            return ComponentSpecificationAdapterFactory.this.createItemRefTAdapter();
        }

        @Override
        public Adapter caseJunctionT(JunctionT object) {
            return ComponentSpecificationAdapterFactory.this.createJunctionTAdapter();
        }

        @Override
        public Adapter caseLayoutT(LayoutT object) {
            return ComponentSpecificationAdapterFactory.this.createLayoutTAdapter();
        }

        @Override
        public Adapter caseLineStyleT(LineStyleT object) {
            return ComponentSpecificationAdapterFactory.this.createLineStyleTAdapter();
        }

        @Override
        public Adapter caseLineT(LineT object) {
            return ComponentSpecificationAdapterFactory.this.createLineTAdapter();
        }

        @Override
        public Adapter caseLiteralT(LiteralT object) {
            return ComponentSpecificationAdapterFactory.this.createLiteralTAdapter();
        }

        @Override
        public Adapter caseMemberGetPortT(MemberGetPortT object) {
            return ComponentSpecificationAdapterFactory.this.createMemberGetPortTAdapter();
        }

        @Override
        public Adapter caseMemberSetPortT(MemberSetPortT object) {
            return ComponentSpecificationAdapterFactory.this.createMemberSetPortTAdapter();
        }

        @Override
        public Adapter caseMethodActionType(MethodActionType object) {
            return ComponentSpecificationAdapterFactory.this.createMethodActionTypeAdapter();
        }

        @Override
        public Adapter caseMethodBodiesComplexType(MethodBodiesComplexType object) {
            return ComponentSpecificationAdapterFactory.this.createMethodBodiesComplexTypeAdapter();
        }

        @Override
        public Adapter caseMethodBodyT(MethodBodyT object) {
            return ComponentSpecificationAdapterFactory.this.createMethodBodyTAdapter();
        }

        @Override
        public Adapter caseMethodPortT(MethodPortT object) {
            return ComponentSpecificationAdapterFactory.this.createMethodPortTAdapter();
        }

        @Override
        public Adapter caseModeElementType(ModeElementType object) {
            return ComponentSpecificationAdapterFactory.this.createModeElementTypeAdapter();
        }

        @Override
        public Adapter caseModeSwitchEventType(ModeSwitchEventType object) {
            return ComponentSpecificationAdapterFactory.this.createModeSwitchEventTypeAdapter();
        }

        @Override
        public Adapter caseModeT(ModeT object) {
            return ComponentSpecificationAdapterFactory.this.createModeTAdapter();
        }

        @Override
        public Adapter caseNotesT(NotesT object) {
            return ComponentSpecificationAdapterFactory.this.createNotesTAdapter();
        }

        @Override
        public Adapter caseNoteType(NoteType object) {
            return ComponentSpecificationAdapterFactory.this.createNoteTypeAdapter();
        }

        @Override
        public Adapter caseOperationInvokedEventType(OperationInvokedEventType object) {
            return ComponentSpecificationAdapterFactory.this.createOperationInvokedEventTypeAdapter();
        }

        @Override
        public Adapter caseOperatorT(OperatorT object) {
            return ComponentSpecificationAdapterFactory.this.createOperatorTAdapter();
        }

        @Override
        public Adapter caseOperatorType(OperatorType object) {
            return ComponentSpecificationAdapterFactory.this.createOperatorTypeAdapter();
        }

        @Override
        public Adapter caseOptionT(OptionT object) {
            return ComponentSpecificationAdapterFactory.this.createOptionTAdapter();
        }

        @Override
        public Adapter caseOutputColumnsType(OutputColumnsType object) {
            return ComponentSpecificationAdapterFactory.this.createOutputColumnsTypeAdapter();
        }

        @Override
        public Adapter casePinT(PinT object) {
            return ComponentSpecificationAdapterFactory.this.createPinTAdapter();
        }

        @Override
        public Adapter casePointT(PointT object) {
            return ComponentSpecificationAdapterFactory.this.createPointTAdapter();
        }

        @Override
        public Adapter casePortsType(PortsType object) {
            return ComponentSpecificationAdapterFactory.this.createPortsTypeAdapter();
        }

        @Override
        public Adapter casePortT(PortT object) {
            return ComponentSpecificationAdapterFactory.this.createPortTAdapter();
        }

        @Override
        public Adapter caseProjectSpecificationT(ProjectSpecificationT object) {
            return ComponentSpecificationAdapterFactory.this.createProjectSpecificationTAdapter();
        }

        @Override
        public Adapter caseResourceInterfaceType(ResourceInterfaceType object) {
            return ComponentSpecificationAdapterFactory.this.createResourceInterfaceTypeAdapter();
        }

        @Override
        public Adapter caseResourceT(ResourceT object) {
            return ComponentSpecificationAdapterFactory.this.createResourceTAdapter();
        }

        @Override
        public Adapter caseReturnPortT(ReturnPortT object) {
            return ComponentSpecificationAdapterFactory.this.createReturnPortTAdapter();
        }

        @Override
        public Adapter caseReturnPortType(ReturnPortType object) {
            return ComponentSpecificationAdapterFactory.this.createReturnPortTypeAdapter();
        }

        @Override
        public Adapter caseReturnPortType1(ReturnPortType1 object) {
            return ComponentSpecificationAdapterFactory.this.createReturnPortType1Adapter();
        }

        @Override
        public Adapter caseReturnPortType2(ReturnPortType2 object) {
            return ComponentSpecificationAdapterFactory.this.createReturnPortType2Adapter();
        }

        @Override
        public Adapter caseRunnablesType(RunnablesType object) {
            return ComponentSpecificationAdapterFactory.this.createRunnablesTypeAdapter();
        }

        @Override
        public Adapter caseRunnableType(RunnableType object) {
            return ComponentSpecificationAdapterFactory.this.createRunnableTypeAdapter();
        }

        @Override
        public Adapter caseSelectorPortT(SelectorPortT object) {
            return ComponentSpecificationAdapterFactory.this.createSelectorPortTAdapter();
        }

        @Override
        public Adapter caseSelectorPortType(SelectorPortType object) {
            return ComponentSpecificationAdapterFactory.this.createSelectorPortTypeAdapter();
        }

        @Override
        public Adapter caseSelectorPortType1(SelectorPortType1 object) {
            return ComponentSpecificationAdapterFactory.this.createSelectorPortType1Adapter();
        }

        @Override
        public Adapter caseSelectorPortType2(SelectorPortType2 object) {
            return ComponentSpecificationAdapterFactory.this.createSelectorPortType2Adapter();
        }

        @Override
        public Adapter caseSequenceCallT(SequenceCallT object) {
            return ComponentSpecificationAdapterFactory.this.createSequenceCallTAdapter();
        }

        @Override
        public Adapter caseSequencedPortT(SequencedPortT object) {
            return ComponentSpecificationAdapterFactory.this.createSequencedPortTAdapter();
        }

        @Override
        public Adapter caseSimpleElementBaseT(SimpleElementBaseT object) {
            return ComponentSpecificationAdapterFactory.this.createSimpleElementBaseTAdapter();
        }

        @Override
        public Adapter caseSimpleElementT(SimpleElementT object) {
            return ComponentSpecificationAdapterFactory.this.createSimpleElementTAdapter();
        }

        @Override
        public Adapter caseSizeT(SizeT object) {
            return ComponentSpecificationAdapterFactory.this.createSizeTAdapter();
        }

        @Override
        public Adapter caseSpecificationsType(SpecificationsType object) {
            return ComponentSpecificationAdapterFactory.this.createSpecificationsTypeAdapter();
        }

        @Override
        public Adapter caseSpecificationT(SpecificationT object) {
            return ComponentSpecificationAdapterFactory.this.createSpecificationTAdapter();
        }

        @Override
        public Adapter caseSpecificationType(SpecificationType object) {
            return ComponentSpecificationAdapterFactory.this.createSpecificationTypeAdapter();
        }

        @Override
        public Adapter caseStateMachineSpecificationT(StateMachineSpecificationT object) {
            return ComponentSpecificationAdapterFactory.this.createStateMachineSpecificationTAdapter();
        }

        @Override
        public Adapter caseStateT(StateT object) {
            return ComponentSpecificationAdapterFactory.this.createStateTAdapter();
        }

        @Override
        public Adapter caseStaticActionType(StaticActionType object) {
            return ComponentSpecificationAdapterFactory.this.createStaticActionTypeAdapter();
        }

        @Override
        public Adapter caseSymbolT(SymbolT object) {
            return ComponentSpecificationAdapterFactory.this.createSymbolTAdapter();
        }

        @Override
        public Adapter caseTableCellType(TableCellType object) {
            return ComponentSpecificationAdapterFactory.this.createTableCellTypeAdapter();
        }

        @Override
        public Adapter caseTableColumnT(TableColumnT object) {
            return ComponentSpecificationAdapterFactory.this.createTableColumnTAdapter();
        }

        @Override
        public Adapter caseTableSpecificationT(TableSpecificationT object) {
            return ComponentSpecificationAdapterFactory.this.createTableSpecificationTAdapter();
        }

        @Override
        public Adapter caseTextT(TextT object) {
            return ComponentSpecificationAdapterFactory.this.createTextTAdapter();
        }

        @Override
        public Adapter caseTimeStampT(TimeStampT object) {
            return ComponentSpecificationAdapterFactory.this.createTimeStampTAdapter();
        }

        @Override
        public Adapter caseTimingEventType(TimingEventType object) {
            return ComponentSpecificationAdapterFactory.this.createTimingEventTypeAdapter();
        }

        @Override
        public Adapter caseTransitionT(TransitionT object) {
            return ComponentSpecificationAdapterFactory.this.createTransitionTAdapter();
        }

        @Override
        public Adapter caseTransitionType(TransitionType object) {
            return ComponentSpecificationAdapterFactory.this.createTransitionTypeAdapter();
        }

        @Override
        public Adapter caseTriggerPortType(TriggerPortType object) {
            return ComponentSpecificationAdapterFactory.this.createTriggerPortTypeAdapter();
        }

        @Override
        public Adapter caseViewInfoT(ViewInfoT object) {
            return ComponentSpecificationAdapterFactory.this.createViewInfoTAdapter();
        }

        @Override
        public Adapter caseViewType(ViewType object) {
            return ComponentSpecificationAdapterFactory.this.createViewTypeAdapter();
        }

        @Override
        public Adapter caseViewType1(ViewType1 object) {
            return ComponentSpecificationAdapterFactory.this.createViewType1Adapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ComponentSpecificationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ComponentSpecificationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ComponentSpecificationPackage.eINSTANCE;
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
        return (Adapter)this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createActionsTypeAdapter() {
        return null;
    }

    public Adapter createActionsType1Adapter() {
        return null;
    }

    public Adapter createActionTAdapter() {
        return null;
    }

    public Adapter createActionTypeAdapter() {
        return null;
    }

    public Adapter createBlockConnectorTAdapter() {
        return null;
    }

    public Adapter createBlockDiagramSpecificationTAdapter() {
        return null;
    }

    public Adapter createBlockInterfaceTAdapter() {
        return null;
    }

    public Adapter createBooleanTableTypeAdapter() {
        return null;
    }

    public Adapter createCCodeSpecificationTAdapter() {
        return null;
    }

    public Adapter createCCodeTypeAdapter() {
        return null;
    }

    public Adapter createCodeVariantTypeAdapter() {
        return null;
    }

    public Adapter createColorTAdapter() {
        return null;
    }

    public Adapter createColumnHeadingTypeAdapter() {
        return null;
    }

    public Adapter createComplexElementTAdapter() {
        return null;
    }

    public Adapter createConditionalTableTypeAdapter() {
        return null;
    }

    public Adapter createConditionColumnsTypeAdapter() {
        return null;
    }

    public Adapter createConditionTypeAdapter() {
        return null;
    }

    public Adapter createConnectionLineTAdapter() {
        return null;
    }

    public Adapter createConnectionPointTAdapter() {
        return null;
    }

    public Adapter createConnectionTAdapter() {
        return null;
    }

    public Adapter createConnectorInterfaceTypeAdapter() {
        return null;
    }

    public Adapter createContentsComplexTypeAdapter() {
        return null;
    }

    public Adapter createControlRteAccessTAdapter() {
        return null;
    }

    public Adapter createControlRteInvokeTAdapter() {
        return null;
    }

    public Adapter createControlTAdapter() {
        return null;
    }

    public Adapter createDiagramElementsComplexTypeAdapter() {
        return null;
    }

    public Adapter createDiagramElementTAdapter() {
        return null;
    }

    public Adapter createDisablingModesTypeAdapter() {
        return null;
    }

    public Adapter createDocumentRootAdapter() {
        return null;
    }

    public Adapter createEntryActionTypeAdapter() {
        return null;
    }

    public Adapter createESDLActionTypeAdapter() {
        return null;
    }

    public Adapter createESDLCodeTAdapter() {
        return null;
    }

    public Adapter createESDLSpecificationTAdapter() {
        return null;
    }

    public Adapter createEventSpecificationTAdapter() {
        return null;
    }

    public Adapter createEventsTypeAdapter() {
        return null;
    }

    public Adapter createEventTAdapter() {
        return null;
    }

    public Adapter createEventTypeTypeAdapter() {
        return null;
    }

    public Adapter createExitActionTypeAdapter() {
        return null;
    }

    public Adapter createFileListSpecificationTAdapter() {
        return null;
    }

    public Adapter createFileReferenceTAdapter() {
        return null;
    }

    public Adapter createFileTypeAdapter() {
        return null;
    }

    public Adapter createFormattedTextTAdapter() {
        return null;
    }

    public Adapter createGenericDataTAdapter() {
        return null;
    }

    public Adapter createGetSetPortBaseTAdapter() {
        return null;
    }

    public Adapter createGraphicObjectTAdapter() {
        return null;
    }

    public Adapter createGraphicSpecificationTAdapter() {
        return null;
    }

    public Adapter createHeaderFileTypeAdapter() {
        return null;
    }

    public Adapter createHierarchyConnectorTypeAdapter() {
        return null;
    }

    public Adapter createHierarchyStateTAdapter() {
        return null;
    }

    public Adapter createHierarchyTAdapter() {
        return null;
    }

    public Adapter createIconTAdapter() {
        return null;
    }

    public Adapter createImplementationCastTAdapter() {
        return null;
    }

    public Adapter createInOutPortTAdapter() {
        return null;
    }

    public Adapter createInputColumnsTypeAdapter() {
        return null;
    }

    public Adapter createInputPortTypeAdapter() {
        return null;
    }

    public Adapter createInstructionColumnsTypeAdapter() {
        return null;
    }

    public Adapter createInterfaceElementTypeAdapter() {
        return null;
    }

    public Adapter createInterfacesTypeAdapter() {
        return null;
    }

    public Adapter createInterfacesType1Adapter() {
        return null;
    }

    public Adapter createInterfacesType2Adapter() {
        return null;
    }

    public Adapter createInterfacesType3Adapter() {
        return null;
    }

    public Adapter createInterfacesType4Adapter() {
        return null;
    }

    public Adapter createInterfacesType5Adapter() {
        return null;
    }

    public Adapter createInterfacesType6Adapter() {
        return null;
    }

    public Adapter createInterfacesType7Adapter() {
        return null;
    }

    public Adapter createIntervalTAdapter() {
        return null;
    }

    public Adapter createItemRefTAdapter() {
        return null;
    }

    public Adapter createJunctionTAdapter() {
        return null;
    }

    public Adapter createLayoutTAdapter() {
        return null;
    }

    public Adapter createLineStyleTAdapter() {
        return null;
    }

    public Adapter createLineTAdapter() {
        return null;
    }

    public Adapter createLiteralTAdapter() {
        return null;
    }

    public Adapter createMemberGetPortTAdapter() {
        return null;
    }

    public Adapter createMemberSetPortTAdapter() {
        return null;
    }

    public Adapter createMethodActionTypeAdapter() {
        return null;
    }

    public Adapter createMethodBodiesComplexTypeAdapter() {
        return null;
    }

    public Adapter createMethodBodyTAdapter() {
        return null;
    }

    public Adapter createMethodPortTAdapter() {
        return null;
    }

    public Adapter createModeElementTypeAdapter() {
        return null;
    }

    public Adapter createModeSwitchEventTypeAdapter() {
        return null;
    }

    public Adapter createModeTAdapter() {
        return null;
    }

    public Adapter createNotesTAdapter() {
        return null;
    }

    public Adapter createNoteTypeAdapter() {
        return null;
    }

    public Adapter createOperationInvokedEventTypeAdapter() {
        return null;
    }

    public Adapter createOperatorTAdapter() {
        return null;
    }

    public Adapter createOperatorTypeAdapter() {
        return null;
    }

    public Adapter createOptionTAdapter() {
        return null;
    }

    public Adapter createOutputColumnsTypeAdapter() {
        return null;
    }

    public Adapter createPinTAdapter() {
        return null;
    }

    public Adapter createPointTAdapter() {
        return null;
    }

    public Adapter createPortsTypeAdapter() {
        return null;
    }

    public Adapter createPortTAdapter() {
        return null;
    }

    public Adapter createProjectSpecificationTAdapter() {
        return null;
    }

    public Adapter createResourceInterfaceTypeAdapter() {
        return null;
    }

    public Adapter createResourceTAdapter() {
        return null;
    }

    public Adapter createReturnPortTAdapter() {
        return null;
    }

    public Adapter createReturnPortTypeAdapter() {
        return null;
    }

    public Adapter createReturnPortType1Adapter() {
        return null;
    }

    public Adapter createReturnPortType2Adapter() {
        return null;
    }

    public Adapter createRunnablesTypeAdapter() {
        return null;
    }

    public Adapter createRunnableTypeAdapter() {
        return null;
    }

    public Adapter createSelectorPortTAdapter() {
        return null;
    }

    public Adapter createSelectorPortTypeAdapter() {
        return null;
    }

    public Adapter createSelectorPortType1Adapter() {
        return null;
    }

    public Adapter createSelectorPortType2Adapter() {
        return null;
    }

    public Adapter createSequenceCallTAdapter() {
        return null;
    }

    public Adapter createSequencedPortTAdapter() {
        return null;
    }

    public Adapter createSimpleElementBaseTAdapter() {
        return null;
    }

    public Adapter createSimpleElementTAdapter() {
        return null;
    }

    public Adapter createSizeTAdapter() {
        return null;
    }

    public Adapter createSpecificationsTypeAdapter() {
        return null;
    }

    public Adapter createSpecificationTAdapter() {
        return null;
    }

    public Adapter createSpecificationTypeAdapter() {
        return null;
    }

    public Adapter createStateMachineSpecificationTAdapter() {
        return null;
    }

    public Adapter createStateTAdapter() {
        return null;
    }

    public Adapter createStaticActionTypeAdapter() {
        return null;
    }

    public Adapter createSymbolTAdapter() {
        return null;
    }

    public Adapter createTableCellTypeAdapter() {
        return null;
    }

    public Adapter createTableColumnTAdapter() {
        return null;
    }

    public Adapter createTableSpecificationTAdapter() {
        return null;
    }

    public Adapter createTextTAdapter() {
        return null;
    }

    public Adapter createTimeStampTAdapter() {
        return null;
    }

    public Adapter createTimingEventTypeAdapter() {
        return null;
    }

    public Adapter createTransitionTAdapter() {
        return null;
    }

    public Adapter createTransitionTypeAdapter() {
        return null;
    }

    public Adapter createTriggerPortTypeAdapter() {
        return null;
    }

    public Adapter createViewInfoTAdapter() {
        return null;
    }

    public Adapter createViewTypeAdapter() {
        return null;
    }

    public Adapter createViewType1Adapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

