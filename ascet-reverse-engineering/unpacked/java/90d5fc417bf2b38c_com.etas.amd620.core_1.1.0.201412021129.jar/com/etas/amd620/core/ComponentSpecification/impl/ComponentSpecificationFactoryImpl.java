/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 *  org.eclipse.emf.ecore.util.Diagnostician
 *  org.eclipse.emf.ecore.xml.type.XMLTypeFactory
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.AccessType;
import com.etas.amd620.core.ComponentSpecification.AccessType1;
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
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationFactory;
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
import com.etas.amd620.core.ComponentSpecification.CtOutputsType;
import com.etas.amd620.core.ComponentSpecification.DiagramElementT;
import com.etas.amd620.core.ComponentSpecification.DiagramElementsComplexType;
import com.etas.amd620.core.ComponentSpecification.DirectionType;
import com.etas.amd620.core.ComponentSpecification.DirectionType1;
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
import com.etas.amd620.core.ComponentSpecification.FlowType;
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
import com.etas.amd620.core.ComponentSpecification.ModeSwitchTypeType;
import com.etas.amd620.core.ComponentSpecification.ModeT;
import com.etas.amd620.core.ComponentSpecification.NoteType;
import com.etas.amd620.core.ComponentSpecification.NotesT;
import com.etas.amd620.core.ComponentSpecification.OperationInvokedEventType;
import com.etas.amd620.core.ComponentSpecification.OperatorT;
import com.etas.amd620.core.ComponentSpecification.OperatorTType;
import com.etas.amd620.core.ComponentSpecification.OperatorType;
import com.etas.amd620.core.ComponentSpecification.OptionT;
import com.etas.amd620.core.ComponentSpecification.OutputColumnsType;
import com.etas.amd620.core.ComponentSpecification.PinT;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.PortT;
import com.etas.amd620.core.ComponentSpecification.PortsType;
import com.etas.amd620.core.ComponentSpecification.ProjectSpecificationT;
import com.etas.amd620.core.ComponentSpecification.PublicType;
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
import com.etas.amd620.core.ComponentSpecification.TypeType;
import com.etas.amd620.core.ComponentSpecification.TypeType1;
import com.etas.amd620.core.ComponentSpecification.TypeType2;
import com.etas.amd620.core.ComponentSpecification.TypeType3;
import com.etas.amd620.core.ComponentSpecification.TypeType4;
import com.etas.amd620.core.ComponentSpecification.TypeType5;
import com.etas.amd620.core.ComponentSpecification.ViewInfoT;
import com.etas.amd620.core.ComponentSpecification.ViewType;
import com.etas.amd620.core.ComponentSpecification.ViewType1;
import com.etas.amd620.core.ComponentSpecification.VisibilityType;
import com.etas.amd620.core.ComponentSpecification.impl.ActionTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ActionTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ActionsType1Impl;
import com.etas.amd620.core.ComponentSpecification.impl.ActionsTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.BlockConnectorTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.BlockDiagramSpecificationTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.BlockInterfaceTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.BooleanTableTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.CCodeSpecificationTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.CCodeTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.CodeVariantTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ColorTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ColumnHeadingTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ComplexElementTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ConditionColumnsTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ConditionTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ConditionalTableTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ConnectionLineTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ConnectionPointTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ConnectionTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ConnectorInterfaceTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ContentsComplexTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ControlRteAccessTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ControlRteInvokeTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ControlTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.DiagramElementTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.DiagramElementsComplexTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.DisablingModesTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.DocumentRootImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ESDLActionTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ESDLCodeTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ESDLSpecificationTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.EntryActionTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.EventSpecificationTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.EventTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.EventTypeTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.EventsTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ExitActionTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.FileListSpecificationTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.FileReferenceTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.FileTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.FormattedTextTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.GenericDataTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.GetSetPortBaseTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.GraphicObjectTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.GraphicSpecificationTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.HeaderFileTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.HierarchyConnectorTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.HierarchyStateTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.HierarchyTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.IconTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ImplementationCastTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.InOutPortTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.InputColumnsTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.InputPortTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.InstructionColumnsTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.InterfaceElementTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.InterfacesType1Impl;
import com.etas.amd620.core.ComponentSpecification.impl.InterfacesType2Impl;
import com.etas.amd620.core.ComponentSpecification.impl.InterfacesType3Impl;
import com.etas.amd620.core.ComponentSpecification.impl.InterfacesType4Impl;
import com.etas.amd620.core.ComponentSpecification.impl.InterfacesType5Impl;
import com.etas.amd620.core.ComponentSpecification.impl.InterfacesType6Impl;
import com.etas.amd620.core.ComponentSpecification.impl.InterfacesType7Impl;
import com.etas.amd620.core.ComponentSpecification.impl.InterfacesTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.IntervalTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ItemRefTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.JunctionTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.LayoutTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.LineStyleTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.LineTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.LiteralTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.MemberGetPortTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.MemberSetPortTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.MethodActionTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.MethodBodiesComplexTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.MethodBodyTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.MethodPortTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ModeElementTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ModeSwitchEventTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ModeTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.NoteTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.NotesTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.OperationInvokedEventTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.OperatorTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.OperatorTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.OptionTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.OutputColumnsTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.PinTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.PointTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.PortTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.PortsTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ProjectSpecificationTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ResourceInterfaceTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ResourceTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ReturnPortTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ReturnPortType1Impl;
import com.etas.amd620.core.ComponentSpecification.impl.ReturnPortType2Impl;
import com.etas.amd620.core.ComponentSpecification.impl.ReturnPortTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.RunnableTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.RunnablesTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.SelectorPortTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.SelectorPortType1Impl;
import com.etas.amd620.core.ComponentSpecification.impl.SelectorPortType2Impl;
import com.etas.amd620.core.ComponentSpecification.impl.SelectorPortTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.SequenceCallTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.SequencedPortTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.SimpleElementBaseTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.SimpleElementTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.SizeTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.SpecificationTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.SpecificationTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.SpecificationsTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.StateMachineSpecificationTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.StateTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.StaticActionTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.SymbolTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.TableCellTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.TableColumnTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.TableSpecificationTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.TextTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.TimeStampTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.TimingEventTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.TransitionTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.TransitionTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.TriggerPortTypeImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ViewInfoTImpl;
import com.etas.amd620.core.ComponentSpecification.impl.ViewType1Impl;
import com.etas.amd620.core.ComponentSpecification.impl.ViewTypeImpl;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.util.Diagnostician;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

public class ComponentSpecificationFactoryImpl
extends EFactoryImpl
implements ComponentSpecificationFactory {
    public static ComponentSpecificationFactory init() {
        try {
            ComponentSpecificationFactory theComponentSpecificationFactory = (ComponentSpecificationFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.etas.com/ascet/amd/620/component_specification");
            if (theComponentSpecificationFactory != null) {
                return theComponentSpecificationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ComponentSpecificationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createActionsType();
            }
            case 1: {
                return this.createActionsType1();
            }
            case 2: {
                return this.createActionT();
            }
            case 3: {
                return this.createActionType();
            }
            case 4: {
                return this.createBlockConnectorT();
            }
            case 5: {
                return this.createBlockDiagramSpecificationT();
            }
            case 6: {
                return this.createBlockInterfaceT();
            }
            case 7: {
                return this.createBooleanTableType();
            }
            case 8: {
                return this.createCCodeSpecificationT();
            }
            case 9: {
                return this.createCCodeType();
            }
            case 10: {
                return this.createCodeVariantType();
            }
            case 11: {
                return this.createColorT();
            }
            case 12: {
                return this.createColumnHeadingType();
            }
            case 13: {
                return this.createComplexElementT();
            }
            case 14: {
                return this.createConditionalTableType();
            }
            case 15: {
                return this.createConditionColumnsType();
            }
            case 16: {
                return this.createConditionType();
            }
            case 17: {
                return this.createConnectionLineT();
            }
            case 18: {
                return this.createConnectionPointT();
            }
            case 19: {
                return this.createConnectionT();
            }
            case 20: {
                return this.createConnectorInterfaceType();
            }
            case 21: {
                return this.createContentsComplexType();
            }
            case 22: {
                return this.createControlRteAccessT();
            }
            case 23: {
                return this.createControlRteInvokeT();
            }
            case 24: {
                return this.createControlT();
            }
            case 25: {
                return this.createDiagramElementsComplexType();
            }
            case 26: {
                return this.createDiagramElementT();
            }
            case 27: {
                return this.createDisablingModesType();
            }
            case 28: {
                return this.createDocumentRoot();
            }
            case 29: {
                return this.createEntryActionType();
            }
            case 30: {
                return this.createESDLActionType();
            }
            case 31: {
                return this.createESDLCodeT();
            }
            case 32: {
                return this.createESDLSpecificationT();
            }
            case 33: {
                return this.createEventSpecificationT();
            }
            case 34: {
                return this.createEventsType();
            }
            case 35: {
                return this.createEventT();
            }
            case 36: {
                return this.createEventTypeType();
            }
            case 37: {
                return this.createExitActionType();
            }
            case 38: {
                return this.createFileListSpecificationT();
            }
            case 39: {
                return this.createFileReferenceT();
            }
            case 40: {
                return this.createFileType();
            }
            case 41: {
                return this.createFormattedTextT();
            }
            case 42: {
                return this.createGenericDataT();
            }
            case 43: {
                return this.createGetSetPortBaseT();
            }
            case 44: {
                return this.createGraphicObjectT();
            }
            case 45: {
                return this.createGraphicSpecificationT();
            }
            case 46: {
                return this.createHeaderFileType();
            }
            case 47: {
                return this.createHierarchyConnectorType();
            }
            case 48: {
                return this.createHierarchyStateT();
            }
            case 49: {
                return this.createHierarchyT();
            }
            case 50: {
                return this.createIconT();
            }
            case 51: {
                return this.createImplementationCastT();
            }
            case 52: {
                return this.createInOutPortT();
            }
            case 53: {
                return this.createInputColumnsType();
            }
            case 54: {
                return this.createInputPortType();
            }
            case 55: {
                return this.createInstructionColumnsType();
            }
            case 56: {
                return this.createInterfaceElementType();
            }
            case 57: {
                return this.createInterfacesType();
            }
            case 58: {
                return this.createInterfacesType1();
            }
            case 59: {
                return this.createInterfacesType2();
            }
            case 60: {
                return this.createInterfacesType3();
            }
            case 61: {
                return this.createInterfacesType4();
            }
            case 62: {
                return this.createInterfacesType5();
            }
            case 63: {
                return this.createInterfacesType6();
            }
            case 64: {
                return this.createInterfacesType7();
            }
            case 65: {
                return this.createIntervalT();
            }
            case 66: {
                return this.createItemRefT();
            }
            case 67: {
                return this.createJunctionT();
            }
            case 68: {
                return this.createLayoutT();
            }
            case 69: {
                return this.createLineStyleT();
            }
            case 70: {
                return this.createLineT();
            }
            case 71: {
                return this.createLiteralT();
            }
            case 72: {
                return this.createMemberGetPortT();
            }
            case 73: {
                return this.createMemberSetPortT();
            }
            case 74: {
                return this.createMethodActionType();
            }
            case 75: {
                return this.createMethodBodiesComplexType();
            }
            case 76: {
                return this.createMethodBodyT();
            }
            case 77: {
                return this.createMethodPortT();
            }
            case 78: {
                return this.createModeElementType();
            }
            case 79: {
                return this.createModeSwitchEventType();
            }
            case 80: {
                return this.createModeT();
            }
            case 81: {
                return this.createNotesT();
            }
            case 82: {
                return this.createNoteType();
            }
            case 83: {
                return this.createOperationInvokedEventType();
            }
            case 84: {
                return this.createOperatorT();
            }
            case 85: {
                return this.createOperatorType();
            }
            case 86: {
                return this.createOptionT();
            }
            case 87: {
                return this.createOutputColumnsType();
            }
            case 88: {
                return this.createPinT();
            }
            case 89: {
                return this.createPointT();
            }
            case 90: {
                return this.createPortsType();
            }
            case 91: {
                return this.createPortT();
            }
            case 92: {
                return this.createProjectSpecificationT();
            }
            case 93: {
                return this.createResourceInterfaceType();
            }
            case 94: {
                return this.createResourceT();
            }
            case 95: {
                return this.createReturnPortT();
            }
            case 96: {
                return this.createReturnPortType();
            }
            case 97: {
                return this.createReturnPortType1();
            }
            case 98: {
                return this.createReturnPortType2();
            }
            case 99: {
                return this.createRunnablesType();
            }
            case 100: {
                return this.createRunnableType();
            }
            case 101: {
                return this.createSelectorPortT();
            }
            case 102: {
                return this.createSelectorPortType();
            }
            case 103: {
                return this.createSelectorPortType1();
            }
            case 104: {
                return this.createSelectorPortType2();
            }
            case 105: {
                return this.createSequenceCallT();
            }
            case 106: {
                return this.createSequencedPortT();
            }
            case 107: {
                return this.createSimpleElementBaseT();
            }
            case 108: {
                return this.createSimpleElementT();
            }
            case 109: {
                return this.createSizeT();
            }
            case 110: {
                return this.createSpecificationsType();
            }
            case 111: {
                return this.createSpecificationT();
            }
            case 112: {
                return this.createSpecificationType();
            }
            case 113: {
                return this.createStateMachineSpecificationT();
            }
            case 114: {
                return this.createStateT();
            }
            case 115: {
                return this.createStaticActionType();
            }
            case 116: {
                return this.createSymbolT();
            }
            case 117: {
                return this.createTableCellType();
            }
            case 118: {
                return this.createTableColumnT();
            }
            case 119: {
                return this.createTableSpecificationT();
            }
            case 120: {
                return this.createTextT();
            }
            case 121: {
                return this.createTimeStampT();
            }
            case 122: {
                return this.createTimingEventType();
            }
            case 123: {
                return this.createTransitionT();
            }
            case 124: {
                return this.createTransitionType();
            }
            case 125: {
                return this.createTriggerPortType();
            }
            case 126: {
                return this.createViewInfoT();
            }
            case 127: {
                return this.createViewType();
            }
            case 128: {
                return this.createViewType1();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 129: {
                return this.createAccessTypeFromString(eDataType, initialValue);
            }
            case 130: {
                return this.createAccessType1FromString(eDataType, initialValue);
            }
            case 131: {
                return this.createCtOutputsTypeFromString(eDataType, initialValue);
            }
            case 132: {
                return this.createDirectionTypeFromString(eDataType, initialValue);
            }
            case 133: {
                return this.createDirectionType1FromString(eDataType, initialValue);
            }
            case 134: {
                return this.createFlowTypeFromString(eDataType, initialValue);
            }
            case 135: {
                return this.createModeSwitchTypeTypeFromString(eDataType, initialValue);
            }
            case 136: {
                return this.createOperatorTTypeFromString(eDataType, initialValue);
            }
            case 137: {
                return this.createPublicTypeFromString(eDataType, initialValue);
            }
            case 138: {
                return this.createTypeTypeFromString(eDataType, initialValue);
            }
            case 139: {
                return this.createTypeType1FromString(eDataType, initialValue);
            }
            case 140: {
                return this.createTypeType2FromString(eDataType, initialValue);
            }
            case 141: {
                return this.createTypeType3FromString(eDataType, initialValue);
            }
            case 142: {
                return this.createTypeType4FromString(eDataType, initialValue);
            }
            case 143: {
                return this.createTypeType5FromString(eDataType, initialValue);
            }
            case 144: {
                return this.createVisibilityTypeFromString(eDataType, initialValue);
            }
            case 145: {
                return this.createAccessTypeObjectFromString(eDataType, initialValue);
            }
            case 146: {
                return this.createAccessTypeObject1FromString(eDataType, initialValue);
            }
            case 147: {
                return this.createCtOutputsTypeObjectFromString(eDataType, initialValue);
            }
            case 148: {
                return this.createDirectionTypeObjectFromString(eDataType, initialValue);
            }
            case 149: {
                return this.createDirectionTypeObject1FromString(eDataType, initialValue);
            }
            case 150: {
                return this.createFlowTypeObjectFromString(eDataType, initialValue);
            }
            case 151: {
                return this.createGraphicOIDTFromString(eDataType, initialValue);
            }
            case 152: {
                return this.createModeSwitchTypeTypeObjectFromString(eDataType, initialValue);
            }
            case 153: {
                return this.createNumberOrFractionFromString(eDataType, initialValue);
            }
            case 154: {
                return this.createNumberOrFractionMember1FromString(eDataType, initialValue);
            }
            case 155: {
                return this.createNzqrFromString(eDataType, initialValue);
            }
            case 156: {
                return this.createNzqrMember2FromString(eDataType, initialValue);
            }
            case 157: {
                return this.createOIDFromString(eDataType, initialValue);
            }
            case 158: {
                return this.createOperatorTTypeObjectFromString(eDataType, initialValue);
            }
            case 159: {
                return this.createPublicTypeObjectFromString(eDataType, initialValue);
            }
            case 160: {
                return this.createTypeTypeObjectFromString(eDataType, initialValue);
            }
            case 161: {
                return this.createTypeTypeObject1FromString(eDataType, initialValue);
            }
            case 162: {
                return this.createTypeTypeObject2FromString(eDataType, initialValue);
            }
            case 163: {
                return this.createTypeTypeObject3FromString(eDataType, initialValue);
            }
            case 164: {
                return this.createTypeTypeObject4FromString(eDataType, initialValue);
            }
            case 165: {
                return this.createTypeTypeObject5FromString(eDataType, initialValue);
            }
            case 166: {
                return this.createVisibilityTypeObjectFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 129: {
                return this.convertAccessTypeToString(eDataType, instanceValue);
            }
            case 130: {
                return this.convertAccessType1ToString(eDataType, instanceValue);
            }
            case 131: {
                return this.convertCtOutputsTypeToString(eDataType, instanceValue);
            }
            case 132: {
                return this.convertDirectionTypeToString(eDataType, instanceValue);
            }
            case 133: {
                return this.convertDirectionType1ToString(eDataType, instanceValue);
            }
            case 134: {
                return this.convertFlowTypeToString(eDataType, instanceValue);
            }
            case 135: {
                return this.convertModeSwitchTypeTypeToString(eDataType, instanceValue);
            }
            case 136: {
                return this.convertOperatorTTypeToString(eDataType, instanceValue);
            }
            case 137: {
                return this.convertPublicTypeToString(eDataType, instanceValue);
            }
            case 138: {
                return this.convertTypeTypeToString(eDataType, instanceValue);
            }
            case 139: {
                return this.convertTypeType1ToString(eDataType, instanceValue);
            }
            case 140: {
                return this.convertTypeType2ToString(eDataType, instanceValue);
            }
            case 141: {
                return this.convertTypeType3ToString(eDataType, instanceValue);
            }
            case 142: {
                return this.convertTypeType4ToString(eDataType, instanceValue);
            }
            case 143: {
                return this.convertTypeType5ToString(eDataType, instanceValue);
            }
            case 144: {
                return this.convertVisibilityTypeToString(eDataType, instanceValue);
            }
            case 145: {
                return this.convertAccessTypeObjectToString(eDataType, instanceValue);
            }
            case 146: {
                return this.convertAccessTypeObject1ToString(eDataType, instanceValue);
            }
            case 147: {
                return this.convertCtOutputsTypeObjectToString(eDataType, instanceValue);
            }
            case 148: {
                return this.convertDirectionTypeObjectToString(eDataType, instanceValue);
            }
            case 149: {
                return this.convertDirectionTypeObject1ToString(eDataType, instanceValue);
            }
            case 150: {
                return this.convertFlowTypeObjectToString(eDataType, instanceValue);
            }
            case 151: {
                return this.convertGraphicOIDTToString(eDataType, instanceValue);
            }
            case 152: {
                return this.convertModeSwitchTypeTypeObjectToString(eDataType, instanceValue);
            }
            case 153: {
                return this.convertNumberOrFractionToString(eDataType, instanceValue);
            }
            case 154: {
                return this.convertNumberOrFractionMember1ToString(eDataType, instanceValue);
            }
            case 155: {
                return this.convertNzqrToString(eDataType, instanceValue);
            }
            case 156: {
                return this.convertNzqrMember2ToString(eDataType, instanceValue);
            }
            case 157: {
                return this.convertOIDToString(eDataType, instanceValue);
            }
            case 158: {
                return this.convertOperatorTTypeObjectToString(eDataType, instanceValue);
            }
            case 159: {
                return this.convertPublicTypeObjectToString(eDataType, instanceValue);
            }
            case 160: {
                return this.convertTypeTypeObjectToString(eDataType, instanceValue);
            }
            case 161: {
                return this.convertTypeTypeObject1ToString(eDataType, instanceValue);
            }
            case 162: {
                return this.convertTypeTypeObject2ToString(eDataType, instanceValue);
            }
            case 163: {
                return this.convertTypeTypeObject3ToString(eDataType, instanceValue);
            }
            case 164: {
                return this.convertTypeTypeObject4ToString(eDataType, instanceValue);
            }
            case 165: {
                return this.convertTypeTypeObject5ToString(eDataType, instanceValue);
            }
            case 166: {
                return this.convertVisibilityTypeObjectToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public ActionsType createActionsType() {
        ActionsTypeImpl actionsType = new ActionsTypeImpl();
        return actionsType;
    }

    @Override
    public ActionsType1 createActionsType1() {
        ActionsType1Impl actionsType1 = new ActionsType1Impl();
        return actionsType1;
    }

    @Override
    public ActionT createActionT() {
        ActionTImpl actionT = new ActionTImpl();
        return actionT;
    }

    @Override
    public ActionType createActionType() {
        ActionTypeImpl actionType = new ActionTypeImpl();
        return actionType;
    }

    @Override
    public BlockConnectorT createBlockConnectorT() {
        BlockConnectorTImpl blockConnectorT = new BlockConnectorTImpl();
        return blockConnectorT;
    }

    @Override
    public BlockDiagramSpecificationT createBlockDiagramSpecificationT() {
        BlockDiagramSpecificationTImpl blockDiagramSpecificationT = new BlockDiagramSpecificationTImpl();
        return blockDiagramSpecificationT;
    }

    @Override
    public BlockInterfaceT createBlockInterfaceT() {
        BlockInterfaceTImpl blockInterfaceT = new BlockInterfaceTImpl();
        return blockInterfaceT;
    }

    @Override
    public BooleanTableType createBooleanTableType() {
        BooleanTableTypeImpl booleanTableType = new BooleanTableTypeImpl();
        return booleanTableType;
    }

    @Override
    public CCodeSpecificationT createCCodeSpecificationT() {
        CCodeSpecificationTImpl cCodeSpecificationT = new CCodeSpecificationTImpl();
        return cCodeSpecificationT;
    }

    @Override
    public CCodeType createCCodeType() {
        CCodeTypeImpl cCodeType = new CCodeTypeImpl();
        return cCodeType;
    }

    @Override
    public CodeVariantType createCodeVariantType() {
        CodeVariantTypeImpl codeVariantType = new CodeVariantTypeImpl();
        return codeVariantType;
    }

    @Override
    public ColorT createColorT() {
        ColorTImpl colorT = new ColorTImpl();
        return colorT;
    }

    @Override
    public ColumnHeadingType createColumnHeadingType() {
        ColumnHeadingTypeImpl columnHeadingType = new ColumnHeadingTypeImpl();
        return columnHeadingType;
    }

    @Override
    public ComplexElementT createComplexElementT() {
        ComplexElementTImpl complexElementT = new ComplexElementTImpl();
        return complexElementT;
    }

    @Override
    public ConditionalTableType createConditionalTableType() {
        ConditionalTableTypeImpl conditionalTableType = new ConditionalTableTypeImpl();
        return conditionalTableType;
    }

    @Override
    public ConditionColumnsType createConditionColumnsType() {
        ConditionColumnsTypeImpl conditionColumnsType = new ConditionColumnsTypeImpl();
        return conditionColumnsType;
    }

    @Override
    public ConditionType createConditionType() {
        ConditionTypeImpl conditionType = new ConditionTypeImpl();
        return conditionType;
    }

    @Override
    public ConnectionLineT createConnectionLineT() {
        ConnectionLineTImpl connectionLineT = new ConnectionLineTImpl();
        return connectionLineT;
    }

    @Override
    public ConnectionPointT createConnectionPointT() {
        ConnectionPointTImpl connectionPointT = new ConnectionPointTImpl();
        return connectionPointT;
    }

    @Override
    public ConnectionT createConnectionT() {
        ConnectionTImpl connectionT = new ConnectionTImpl();
        return connectionT;
    }

    @Override
    public ConnectorInterfaceType createConnectorInterfaceType() {
        ConnectorInterfaceTypeImpl connectorInterfaceType = new ConnectorInterfaceTypeImpl();
        return connectorInterfaceType;
    }

    @Override
    public ContentsComplexType createContentsComplexType() {
        ContentsComplexTypeImpl contentsComplexType = new ContentsComplexTypeImpl();
        return contentsComplexType;
    }

    @Override
    public ControlRteAccessT createControlRteAccessT() {
        ControlRteAccessTImpl controlRteAccessT = new ControlRteAccessTImpl();
        return controlRteAccessT;
    }

    @Override
    public ControlRteInvokeT createControlRteInvokeT() {
        ControlRteInvokeTImpl controlRteInvokeT = new ControlRteInvokeTImpl();
        return controlRteInvokeT;
    }

    @Override
    public ControlT createControlT() {
        ControlTImpl controlT = new ControlTImpl();
        return controlT;
    }

    @Override
    public DiagramElementsComplexType createDiagramElementsComplexType() {
        DiagramElementsComplexTypeImpl diagramElementsComplexType = new DiagramElementsComplexTypeImpl();
        return diagramElementsComplexType;
    }

    @Override
    public DiagramElementT createDiagramElementT() {
        DiagramElementTImpl diagramElementT = new DiagramElementTImpl();
        return diagramElementT;
    }

    @Override
    public DisablingModesType createDisablingModesType() {
        DisablingModesTypeImpl disablingModesType = new DisablingModesTypeImpl();
        return disablingModesType;
    }

    @Override
    public DocumentRoot createDocumentRoot() {
        DocumentRootImpl documentRoot = new DocumentRootImpl();
        return documentRoot;
    }

    @Override
    public EntryActionType createEntryActionType() {
        EntryActionTypeImpl entryActionType = new EntryActionTypeImpl();
        return entryActionType;
    }

    @Override
    public ESDLActionType createESDLActionType() {
        ESDLActionTypeImpl esdlActionType = new ESDLActionTypeImpl();
        return esdlActionType;
    }

    @Override
    public ESDLCodeT createESDLCodeT() {
        ESDLCodeTImpl esdlCodeT = new ESDLCodeTImpl();
        return esdlCodeT;
    }

    @Override
    public ESDLSpecificationT createESDLSpecificationT() {
        ESDLSpecificationTImpl esdlSpecificationT = new ESDLSpecificationTImpl();
        return esdlSpecificationT;
    }

    @Override
    public EventSpecificationT createEventSpecificationT() {
        EventSpecificationTImpl eventSpecificationT = new EventSpecificationTImpl();
        return eventSpecificationT;
    }

    @Override
    public EventsType createEventsType() {
        EventsTypeImpl eventsType = new EventsTypeImpl();
        return eventsType;
    }

    @Override
    public EventT createEventT() {
        EventTImpl eventT = new EventTImpl();
        return eventT;
    }

    @Override
    public EventTypeType createEventTypeType() {
        EventTypeTypeImpl eventTypeType = new EventTypeTypeImpl();
        return eventTypeType;
    }

    @Override
    public ExitActionType createExitActionType() {
        ExitActionTypeImpl exitActionType = new ExitActionTypeImpl();
        return exitActionType;
    }

    @Override
    public FileListSpecificationT createFileListSpecificationT() {
        FileListSpecificationTImpl fileListSpecificationT = new FileListSpecificationTImpl();
        return fileListSpecificationT;
    }

    @Override
    public FileReferenceT createFileReferenceT() {
        FileReferenceTImpl fileReferenceT = new FileReferenceTImpl();
        return fileReferenceT;
    }

    @Override
    public FileType createFileType() {
        FileTypeImpl fileType = new FileTypeImpl();
        return fileType;
    }

    @Override
    public FormattedTextT createFormattedTextT() {
        FormattedTextTImpl formattedTextT = new FormattedTextTImpl();
        return formattedTextT;
    }

    @Override
    public GenericDataT createGenericDataT() {
        GenericDataTImpl genericDataT = new GenericDataTImpl();
        return genericDataT;
    }

    @Override
    public GetSetPortBaseT createGetSetPortBaseT() {
        GetSetPortBaseTImpl getSetPortBaseT = new GetSetPortBaseTImpl();
        return getSetPortBaseT;
    }

    @Override
    public GraphicObjectT createGraphicObjectT() {
        GraphicObjectTImpl graphicObjectT = new GraphicObjectTImpl();
        return graphicObjectT;
    }

    @Override
    public GraphicSpecificationT createGraphicSpecificationT() {
        GraphicSpecificationTImpl graphicSpecificationT = new GraphicSpecificationTImpl();
        return graphicSpecificationT;
    }

    @Override
    public HeaderFileType createHeaderFileType() {
        HeaderFileTypeImpl headerFileType = new HeaderFileTypeImpl();
        return headerFileType;
    }

    @Override
    public HierarchyConnectorType createHierarchyConnectorType() {
        HierarchyConnectorTypeImpl hierarchyConnectorType = new HierarchyConnectorTypeImpl();
        return hierarchyConnectorType;
    }

    @Override
    public HierarchyStateT createHierarchyStateT() {
        HierarchyStateTImpl hierarchyStateT = new HierarchyStateTImpl();
        return hierarchyStateT;
    }

    @Override
    public HierarchyT createHierarchyT() {
        HierarchyTImpl hierarchyT = new HierarchyTImpl();
        return hierarchyT;
    }

    @Override
    public IconT createIconT() {
        IconTImpl iconT = new IconTImpl();
        return iconT;
    }

    @Override
    public ImplementationCastT createImplementationCastT() {
        ImplementationCastTImpl implementationCastT = new ImplementationCastTImpl();
        return implementationCastT;
    }

    @Override
    public InOutPortT createInOutPortT() {
        InOutPortTImpl inOutPortT = new InOutPortTImpl();
        return inOutPortT;
    }

    @Override
    public InputColumnsType createInputColumnsType() {
        InputColumnsTypeImpl inputColumnsType = new InputColumnsTypeImpl();
        return inputColumnsType;
    }

    @Override
    public InputPortType createInputPortType() {
        InputPortTypeImpl inputPortType = new InputPortTypeImpl();
        return inputPortType;
    }

    @Override
    public InstructionColumnsType createInstructionColumnsType() {
        InstructionColumnsTypeImpl instructionColumnsType = new InstructionColumnsTypeImpl();
        return instructionColumnsType;
    }

    @Override
    public InterfaceElementType createInterfaceElementType() {
        InterfaceElementTypeImpl interfaceElementType = new InterfaceElementTypeImpl();
        return interfaceElementType;
    }

    @Override
    public InterfacesType createInterfacesType() {
        InterfacesTypeImpl interfacesType = new InterfacesTypeImpl();
        return interfacesType;
    }

    @Override
    public InterfacesType1 createInterfacesType1() {
        InterfacesType1Impl interfacesType1 = new InterfacesType1Impl();
        return interfacesType1;
    }

    @Override
    public InterfacesType2 createInterfacesType2() {
        InterfacesType2Impl interfacesType2 = new InterfacesType2Impl();
        return interfacesType2;
    }

    @Override
    public InterfacesType3 createInterfacesType3() {
        InterfacesType3Impl interfacesType3 = new InterfacesType3Impl();
        return interfacesType3;
    }

    @Override
    public InterfacesType4 createInterfacesType4() {
        InterfacesType4Impl interfacesType4 = new InterfacesType4Impl();
        return interfacesType4;
    }

    @Override
    public InterfacesType5 createInterfacesType5() {
        InterfacesType5Impl interfacesType5 = new InterfacesType5Impl();
        return interfacesType5;
    }

    @Override
    public InterfacesType6 createInterfacesType6() {
        InterfacesType6Impl interfacesType6 = new InterfacesType6Impl();
        return interfacesType6;
    }

    @Override
    public InterfacesType7 createInterfacesType7() {
        InterfacesType7Impl interfacesType7 = new InterfacesType7Impl();
        return interfacesType7;
    }

    @Override
    public IntervalT createIntervalT() {
        IntervalTImpl intervalT = new IntervalTImpl();
        return intervalT;
    }

    @Override
    public ItemRefT createItemRefT() {
        ItemRefTImpl itemRefT = new ItemRefTImpl();
        return itemRefT;
    }

    @Override
    public JunctionT createJunctionT() {
        JunctionTImpl junctionT = new JunctionTImpl();
        return junctionT;
    }

    @Override
    public LayoutT createLayoutT() {
        LayoutTImpl layoutT = new LayoutTImpl();
        return layoutT;
    }

    @Override
    public LineStyleT createLineStyleT() {
        LineStyleTImpl lineStyleT = new LineStyleTImpl();
        return lineStyleT;
    }

    @Override
    public LineT createLineT() {
        LineTImpl lineT = new LineTImpl();
        return lineT;
    }

    @Override
    public LiteralT createLiteralT() {
        LiteralTImpl literalT = new LiteralTImpl();
        return literalT;
    }

    @Override
    public MemberGetPortT createMemberGetPortT() {
        MemberGetPortTImpl memberGetPortT = new MemberGetPortTImpl();
        return memberGetPortT;
    }

    @Override
    public MemberSetPortT createMemberSetPortT() {
        MemberSetPortTImpl memberSetPortT = new MemberSetPortTImpl();
        return memberSetPortT;
    }

    @Override
    public MethodActionType createMethodActionType() {
        MethodActionTypeImpl methodActionType = new MethodActionTypeImpl();
        return methodActionType;
    }

    @Override
    public MethodBodiesComplexType createMethodBodiesComplexType() {
        MethodBodiesComplexTypeImpl methodBodiesComplexType = new MethodBodiesComplexTypeImpl();
        return methodBodiesComplexType;
    }

    @Override
    public MethodBodyT createMethodBodyT() {
        MethodBodyTImpl methodBodyT = new MethodBodyTImpl();
        return methodBodyT;
    }

    @Override
    public MethodPortT createMethodPortT() {
        MethodPortTImpl methodPortT = new MethodPortTImpl();
        return methodPortT;
    }

    @Override
    public ModeElementType createModeElementType() {
        ModeElementTypeImpl modeElementType = new ModeElementTypeImpl();
        return modeElementType;
    }

    @Override
    public ModeSwitchEventType createModeSwitchEventType() {
        ModeSwitchEventTypeImpl modeSwitchEventType = new ModeSwitchEventTypeImpl();
        return modeSwitchEventType;
    }

    @Override
    public ModeT createModeT() {
        ModeTImpl modeT = new ModeTImpl();
        return modeT;
    }

    @Override
    public NotesT createNotesT() {
        NotesTImpl notesT = new NotesTImpl();
        return notesT;
    }

    @Override
    public NoteType createNoteType() {
        NoteTypeImpl noteType = new NoteTypeImpl();
        return noteType;
    }

    @Override
    public OperationInvokedEventType createOperationInvokedEventType() {
        OperationInvokedEventTypeImpl operationInvokedEventType = new OperationInvokedEventTypeImpl();
        return operationInvokedEventType;
    }

    @Override
    public OperatorT createOperatorT() {
        OperatorTImpl operatorT = new OperatorTImpl();
        return operatorT;
    }

    @Override
    public OperatorType createOperatorType() {
        OperatorTypeImpl operatorType = new OperatorTypeImpl();
        return operatorType;
    }

    @Override
    public OptionT createOptionT() {
        OptionTImpl optionT = new OptionTImpl();
        return optionT;
    }

    @Override
    public OutputColumnsType createOutputColumnsType() {
        OutputColumnsTypeImpl outputColumnsType = new OutputColumnsTypeImpl();
        return outputColumnsType;
    }

    @Override
    public PinT createPinT() {
        PinTImpl pinT = new PinTImpl();
        return pinT;
    }

    @Override
    public PointT createPointT() {
        PointTImpl pointT = new PointTImpl();
        return pointT;
    }

    @Override
    public PortsType createPortsType() {
        PortsTypeImpl portsType = new PortsTypeImpl();
        return portsType;
    }

    @Override
    public PortT createPortT() {
        PortTImpl portT = new PortTImpl();
        return portT;
    }

    @Override
    public ProjectSpecificationT createProjectSpecificationT() {
        ProjectSpecificationTImpl projectSpecificationT = new ProjectSpecificationTImpl();
        return projectSpecificationT;
    }

    @Override
    public ResourceInterfaceType createResourceInterfaceType() {
        ResourceInterfaceTypeImpl resourceInterfaceType = new ResourceInterfaceTypeImpl();
        return resourceInterfaceType;
    }

    @Override
    public ResourceT createResourceT() {
        ResourceTImpl resourceT = new ResourceTImpl();
        return resourceT;
    }

    @Override
    public ReturnPortT createReturnPortT() {
        ReturnPortTImpl returnPortT = new ReturnPortTImpl();
        return returnPortT;
    }

    @Override
    public ReturnPortType createReturnPortType() {
        ReturnPortTypeImpl returnPortType = new ReturnPortTypeImpl();
        return returnPortType;
    }

    @Override
    public ReturnPortType1 createReturnPortType1() {
        ReturnPortType1Impl returnPortType1 = new ReturnPortType1Impl();
        return returnPortType1;
    }

    @Override
    public ReturnPortType2 createReturnPortType2() {
        ReturnPortType2Impl returnPortType2 = new ReturnPortType2Impl();
        return returnPortType2;
    }

    @Override
    public RunnablesType createRunnablesType() {
        RunnablesTypeImpl runnablesType = new RunnablesTypeImpl();
        return runnablesType;
    }

    @Override
    public RunnableType createRunnableType() {
        RunnableTypeImpl runnableType = new RunnableTypeImpl();
        return runnableType;
    }

    @Override
    public SelectorPortT createSelectorPortT() {
        SelectorPortTImpl selectorPortT = new SelectorPortTImpl();
        return selectorPortT;
    }

    @Override
    public SelectorPortType createSelectorPortType() {
        SelectorPortTypeImpl selectorPortType = new SelectorPortTypeImpl();
        return selectorPortType;
    }

    @Override
    public SelectorPortType1 createSelectorPortType1() {
        SelectorPortType1Impl selectorPortType1 = new SelectorPortType1Impl();
        return selectorPortType1;
    }

    @Override
    public SelectorPortType2 createSelectorPortType2() {
        SelectorPortType2Impl selectorPortType2 = new SelectorPortType2Impl();
        return selectorPortType2;
    }

    @Override
    public SequenceCallT createSequenceCallT() {
        SequenceCallTImpl sequenceCallT = new SequenceCallTImpl();
        return sequenceCallT;
    }

    @Override
    public SequencedPortT createSequencedPortT() {
        SequencedPortTImpl sequencedPortT = new SequencedPortTImpl();
        return sequencedPortT;
    }

    @Override
    public SimpleElementBaseT createSimpleElementBaseT() {
        SimpleElementBaseTImpl simpleElementBaseT = new SimpleElementBaseTImpl();
        return simpleElementBaseT;
    }

    @Override
    public SimpleElementT createSimpleElementT() {
        SimpleElementTImpl simpleElementT = new SimpleElementTImpl();
        return simpleElementT;
    }

    @Override
    public SizeT createSizeT() {
        SizeTImpl sizeT = new SizeTImpl();
        return sizeT;
    }

    @Override
    public SpecificationsType createSpecificationsType() {
        SpecificationsTypeImpl specificationsType = new SpecificationsTypeImpl();
        return specificationsType;
    }

    @Override
    public SpecificationT createSpecificationT() {
        SpecificationTImpl specificationT = new SpecificationTImpl();
        return specificationT;
    }

    @Override
    public SpecificationType createSpecificationType() {
        SpecificationTypeImpl specificationType = new SpecificationTypeImpl();
        return specificationType;
    }

    @Override
    public StateMachineSpecificationT createStateMachineSpecificationT() {
        StateMachineSpecificationTImpl stateMachineSpecificationT = new StateMachineSpecificationTImpl();
        return stateMachineSpecificationT;
    }

    @Override
    public StateT createStateT() {
        StateTImpl stateT = new StateTImpl();
        return stateT;
    }

    @Override
    public StaticActionType createStaticActionType() {
        StaticActionTypeImpl staticActionType = new StaticActionTypeImpl();
        return staticActionType;
    }

    @Override
    public SymbolT createSymbolT() {
        SymbolTImpl symbolT = new SymbolTImpl();
        return symbolT;
    }

    @Override
    public TableCellType createTableCellType() {
        TableCellTypeImpl tableCellType = new TableCellTypeImpl();
        return tableCellType;
    }

    @Override
    public TableColumnT createTableColumnT() {
        TableColumnTImpl tableColumnT = new TableColumnTImpl();
        return tableColumnT;
    }

    @Override
    public TableSpecificationT createTableSpecificationT() {
        TableSpecificationTImpl tableSpecificationT = new TableSpecificationTImpl();
        return tableSpecificationT;
    }

    @Override
    public TextT createTextT() {
        TextTImpl textT = new TextTImpl();
        return textT;
    }

    @Override
    public TimeStampT createTimeStampT() {
        TimeStampTImpl timeStampT = new TimeStampTImpl();
        return timeStampT;
    }

    @Override
    public TimingEventType createTimingEventType() {
        TimingEventTypeImpl timingEventType = new TimingEventTypeImpl();
        return timingEventType;
    }

    @Override
    public TransitionT createTransitionT() {
        TransitionTImpl transitionT = new TransitionTImpl();
        return transitionT;
    }

    @Override
    public TransitionType createTransitionType() {
        TransitionTypeImpl transitionType = new TransitionTypeImpl();
        return transitionType;
    }

    @Override
    public TriggerPortType createTriggerPortType() {
        TriggerPortTypeImpl triggerPortType = new TriggerPortTypeImpl();
        return triggerPortType;
    }

    @Override
    public ViewInfoT createViewInfoT() {
        ViewInfoTImpl viewInfoT = new ViewInfoTImpl();
        return viewInfoT;
    }

    @Override
    public ViewType createViewType() {
        ViewTypeImpl viewType = new ViewTypeImpl();
        return viewType;
    }

    @Override
    public ViewType1 createViewType1() {
        ViewType1Impl viewType1 = new ViewType1Impl();
        return viewType1;
    }

    public AccessType createAccessTypeFromString(EDataType eDataType, String initialValue) {
        AccessType result = AccessType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertAccessTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public AccessType1 createAccessType1FromString(EDataType eDataType, String initialValue) {
        AccessType1 result = AccessType1.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertAccessType1ToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CtOutputsType createCtOutputsTypeFromString(EDataType eDataType, String initialValue) {
        CtOutputsType result = CtOutputsType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCtOutputsTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DirectionType createDirectionTypeFromString(EDataType eDataType, String initialValue) {
        DirectionType result = DirectionType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDirectionTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DirectionType1 createDirectionType1FromString(EDataType eDataType, String initialValue) {
        DirectionType1 result = DirectionType1.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDirectionType1ToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public FlowType createFlowTypeFromString(EDataType eDataType, String initialValue) {
        FlowType result = FlowType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertFlowTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ModeSwitchTypeType createModeSwitchTypeTypeFromString(EDataType eDataType, String initialValue) {
        ModeSwitchTypeType result = ModeSwitchTypeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertModeSwitchTypeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public OperatorTType createOperatorTTypeFromString(EDataType eDataType, String initialValue) {
        OperatorTType result = OperatorTType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertOperatorTTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PublicType createPublicTypeFromString(EDataType eDataType, String initialValue) {
        PublicType result = PublicType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPublicTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TypeType createTypeTypeFromString(EDataType eDataType, String initialValue) {
        TypeType result = TypeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTypeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TypeType1 createTypeType1FromString(EDataType eDataType, String initialValue) {
        TypeType1 result = TypeType1.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTypeType1ToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TypeType2 createTypeType2FromString(EDataType eDataType, String initialValue) {
        TypeType2 result = TypeType2.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTypeType2ToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TypeType3 createTypeType3FromString(EDataType eDataType, String initialValue) {
        TypeType3 result = TypeType3.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTypeType3ToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TypeType4 createTypeType4FromString(EDataType eDataType, String initialValue) {
        TypeType4 result = TypeType4.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTypeType4ToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TypeType5 createTypeType5FromString(EDataType eDataType, String initialValue) {
        TypeType5 result = TypeType5.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTypeType5ToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public VisibilityType createVisibilityTypeFromString(EDataType eDataType, String initialValue) {
        VisibilityType result = VisibilityType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertVisibilityTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public AccessType createAccessTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createAccessTypeFromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getAccessType(), initialValue);
    }

    public String convertAccessTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertAccessTypeToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getAccessType(), instanceValue);
    }

    public AccessType1 createAccessTypeObject1FromString(EDataType eDataType, String initialValue) {
        return this.createAccessType1FromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getAccessType1(), initialValue);
    }

    public String convertAccessTypeObject1ToString(EDataType eDataType, Object instanceValue) {
        return this.convertAccessType1ToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getAccessType1(), instanceValue);
    }

    public CtOutputsType createCtOutputsTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createCtOutputsTypeFromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getCtOutputsType(), initialValue);
    }

    public String convertCtOutputsTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertCtOutputsTypeToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getCtOutputsType(), instanceValue);
    }

    public DirectionType createDirectionTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createDirectionTypeFromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getDirectionType(), initialValue);
    }

    public String convertDirectionTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertDirectionTypeToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getDirectionType(), instanceValue);
    }

    public DirectionType1 createDirectionTypeObject1FromString(EDataType eDataType, String initialValue) {
        return this.createDirectionType1FromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getDirectionType1(), initialValue);
    }

    public String convertDirectionTypeObject1ToString(EDataType eDataType, Object instanceValue) {
        return this.convertDirectionType1ToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getDirectionType1(), instanceValue);
    }

    public FlowType createFlowTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createFlowTypeFromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getFlowType(), initialValue);
    }

    public String convertFlowTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertFlowTypeToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getFlowType(), instanceValue);
    }

    public BigInteger createGraphicOIDTFromString(EDataType eDataType, String initialValue) {
        return (BigInteger)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.INTEGER, initialValue);
    }

    public String convertGraphicOIDTToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.INTEGER, instanceValue);
    }

    public ModeSwitchTypeType createModeSwitchTypeTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createModeSwitchTypeTypeFromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getModeSwitchTypeType(), initialValue);
    }

    public String convertModeSwitchTypeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertModeSwitchTypeTypeToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getModeSwitchTypeType(), instanceValue);
    }

    public Object createNumberOrFractionFromString(EDataType eDataType, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        Object result = null;
        RuntimeException exception = null;
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.DOUBLE, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = this.createNumberOrFractionMember1FromString(ComponentSpecificationPackage.eINSTANCE.getNumberOrFractionMember1(), initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        if (result != null || exception == null) {
            return result;
        }
        throw exception;
    }

    public String convertNumberOrFractionToString(EDataType eDataType, Object instanceValue) {
        String value;
        if (instanceValue == null) {
            return null;
        }
        if (XMLTypePackage.Literals.DOUBLE.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.DOUBLE, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (ComponentSpecificationPackage.eINSTANCE.getNumberOrFractionMember1().isInstance(instanceValue)) {
            try {
                value = this.convertNumberOrFractionMember1ToString(ComponentSpecificationPackage.eINSTANCE.getNumberOrFractionMember1(), instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        throw new IllegalArgumentException("Invalid value: '" + instanceValue + "' for datatype :" + eDataType.getName());
    }

    public String createNumberOrFractionMember1FromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertNumberOrFractionMember1ToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public Object createNzqrFromString(EDataType eDataType, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        Object result = null;
        RuntimeException exception = null;
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.DOUBLE, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.INT, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = this.createNzqrMember2FromString(ComponentSpecificationPackage.eINSTANCE.getNzqrMember2(), initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        if (result != null || exception == null) {
            return result;
        }
        throw exception;
    }

    public String convertNzqrToString(EDataType eDataType, Object instanceValue) {
        String value;
        if (instanceValue == null) {
            return null;
        }
        if (XMLTypePackage.Literals.DOUBLE.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.DOUBLE, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (XMLTypePackage.Literals.INT.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.INT, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (ComponentSpecificationPackage.eINSTANCE.getNzqrMember2().isInstance(instanceValue)) {
            try {
                value = this.convertNzqrMember2ToString(ComponentSpecificationPackage.eINSTANCE.getNzqrMember2(), instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        throw new IllegalArgumentException("Invalid value: '" + instanceValue + "' for datatype :" + eDataType.getName());
    }

    public String createNzqrMember2FromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertNzqrMember2ToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public String createOIDFromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertOIDToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public OperatorTType createOperatorTTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createOperatorTTypeFromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getOperatorTType(), initialValue);
    }

    public String convertOperatorTTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertOperatorTTypeToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getOperatorTType(), instanceValue);
    }

    public PublicType createPublicTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createPublicTypeFromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getPublicType(), initialValue);
    }

    public String convertPublicTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertPublicTypeToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getPublicType(), instanceValue);
    }

    public TypeType createTypeTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createTypeTypeFromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType(), initialValue);
    }

    public String convertTypeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeTypeToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType(), instanceValue);
    }

    public TypeType4 createTypeTypeObject1FromString(EDataType eDataType, String initialValue) {
        return this.createTypeType4FromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType4(), initialValue);
    }

    public String convertTypeTypeObject1ToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeType4ToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType4(), instanceValue);
    }

    public TypeType1 createTypeTypeObject2FromString(EDataType eDataType, String initialValue) {
        return this.createTypeType1FromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType1(), initialValue);
    }

    public String convertTypeTypeObject2ToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeType1ToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType1(), instanceValue);
    }

    public TypeType3 createTypeTypeObject3FromString(EDataType eDataType, String initialValue) {
        return this.createTypeType3FromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType3(), initialValue);
    }

    public String convertTypeTypeObject3ToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeType3ToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType3(), instanceValue);
    }

    public TypeType2 createTypeTypeObject4FromString(EDataType eDataType, String initialValue) {
        return this.createTypeType2FromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType2(), initialValue);
    }

    public String convertTypeTypeObject4ToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeType2ToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType2(), instanceValue);
    }

    public TypeType5 createTypeTypeObject5FromString(EDataType eDataType, String initialValue) {
        return this.createTypeType5FromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType5(), initialValue);
    }

    public String convertTypeTypeObject5ToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeType5ToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getTypeType5(), instanceValue);
    }

    public VisibilityType createVisibilityTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createVisibilityTypeFromString((EDataType)ComponentSpecificationPackage.eINSTANCE.getVisibilityType(), initialValue);
    }

    public String convertVisibilityTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertVisibilityTypeToString((EDataType)ComponentSpecificationPackage.eINSTANCE.getVisibilityType(), instanceValue);
    }

    @Override
    public ComponentSpecificationPackage getComponentSpecificationPackage() {
        return (ComponentSpecificationPackage)this.getEPackage();
    }

    @Deprecated
    public static ComponentSpecificationPackage getPackage() {
        return ComponentSpecificationPackage.eINSTANCE;
    }
}

