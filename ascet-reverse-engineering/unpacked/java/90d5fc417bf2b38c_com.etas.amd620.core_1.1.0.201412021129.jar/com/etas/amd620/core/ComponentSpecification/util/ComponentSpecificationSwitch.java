/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.Switch
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
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.Switch;

public class ComponentSpecificationSwitch<T>
extends Switch<T> {
    protected static ComponentSpecificationPackage modelPackage;

    public ComponentSpecificationSwitch() {
        if (modelPackage == null) {
            modelPackage = ComponentSpecificationPackage.eINSTANCE;
        }
    }

    protected boolean isSwitchFor(EPackage ePackage) {
        return ePackage == modelPackage;
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                ActionsType actionsType = (ActionsType)theEObject;
                T result = this.caseActionsType(actionsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ActionsType1 actionsType1 = (ActionsType1)theEObject;
                T result = this.caseActionsType1(actionsType1);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ActionT actionT = (ActionT)theEObject;
                T result = this.caseActionT(actionT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ActionType actionType = (ActionType)theEObject;
                T result = this.caseActionType(actionType);
                if (result == null) {
                    result = this.caseActionT(actionType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                BlockConnectorT blockConnectorT = (BlockConnectorT)theEObject;
                T result = this.caseBlockConnectorT(blockConnectorT);
                if (result == null) {
                    result = this.caseGraphicObjectT(blockConnectorT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                BlockDiagramSpecificationT blockDiagramSpecificationT = (BlockDiagramSpecificationT)theEObject;
                T result = this.caseBlockDiagramSpecificationT(blockDiagramSpecificationT);
                if (result == null) {
                    result = this.caseGraphicSpecificationT(blockDiagramSpecificationT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                BlockInterfaceT blockInterfaceT = (BlockInterfaceT)theEObject;
                T result = this.caseBlockInterfaceT(blockInterfaceT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                BooleanTableType booleanTableType = (BooleanTableType)theEObject;
                T result = this.caseBooleanTableType(booleanTableType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                CCodeSpecificationT cCodeSpecificationT = (CCodeSpecificationT)theEObject;
                T result = this.caseCCodeSpecificationT(cCodeSpecificationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                CCodeType cCodeType = (CCodeType)theEObject;
                T result = this.caseCCodeType(cCodeType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                CodeVariantType codeVariantType = (CodeVariantType)theEObject;
                T result = this.caseCodeVariantType(codeVariantType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                ColorT colorT = (ColorT)theEObject;
                T result = this.caseColorT(colorT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                ColumnHeadingType columnHeadingType = (ColumnHeadingType)theEObject;
                T result = this.caseColumnHeadingType(columnHeadingType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                ComplexElementT complexElementT = (ComplexElementT)theEObject;
                T result = this.caseComplexElementT(complexElementT);
                if (result == null) {
                    result = this.caseLayoutT(complexElementT);
                }
                if (result == null) {
                    result = this.caseGraphicObjectT(complexElementT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                ConditionalTableType conditionalTableType = (ConditionalTableType)theEObject;
                T result = this.caseConditionalTableType(conditionalTableType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                ConditionColumnsType conditionColumnsType = (ConditionColumnsType)theEObject;
                T result = this.caseConditionColumnsType(conditionColumnsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                ConditionType conditionType = (ConditionType)theEObject;
                T result = this.caseConditionType(conditionType);
                if (result == null) {
                    result = this.caseActionT(conditionType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                ConnectionLineT connectionLineT = (ConnectionLineT)theEObject;
                T result = this.caseConnectionLineT(connectionLineT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                ConnectionPointT connectionPointT = (ConnectionPointT)theEObject;
                T result = this.caseConnectionPointT(connectionPointT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                ConnectionT connectionT = (ConnectionT)theEObject;
                T result = this.caseConnectionT(connectionT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                ConnectorInterfaceType connectorInterfaceType = (ConnectorInterfaceType)theEObject;
                T result = this.caseConnectorInterfaceType(connectorInterfaceType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                ContentsComplexType contentsComplexType = (ContentsComplexType)theEObject;
                T result = this.caseContentsComplexType(contentsComplexType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                ControlRteAccessT controlRteAccessT = (ControlRteAccessT)theEObject;
                T result = this.caseControlRteAccessT(controlRteAccessT);
                if (result == null) {
                    result = this.caseGraphicObjectT(controlRteAccessT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                ControlRteInvokeT controlRteInvokeT = (ControlRteInvokeT)theEObject;
                T result = this.caseControlRteInvokeT(controlRteInvokeT);
                if (result == null) {
                    result = this.caseControlT(controlRteInvokeT);
                }
                if (result == null) {
                    result = this.caseGraphicObjectT(controlRteInvokeT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 24: {
                ControlT controlT = (ControlT)theEObject;
                T result = this.caseControlT(controlT);
                if (result == null) {
                    result = this.caseGraphicObjectT(controlT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                DiagramElementsComplexType diagramElementsComplexType = (DiagramElementsComplexType)theEObject;
                T result = this.caseDiagramElementsComplexType(diagramElementsComplexType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 26: {
                DiagramElementT diagramElementT = (DiagramElementT)theEObject;
                T result = this.caseDiagramElementT(diagramElementT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 27: {
                DisablingModesType disablingModesType = (DisablingModesType)theEObject;
                T result = this.caseDisablingModesType(disablingModesType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 28: {
                DocumentRoot documentRoot = (DocumentRoot)theEObject;
                T result = this.caseDocumentRoot(documentRoot);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 29: {
                EntryActionType entryActionType = (EntryActionType)theEObject;
                T result = this.caseEntryActionType(entryActionType);
                if (result == null) {
                    result = this.caseActionT(entryActionType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 30: {
                ESDLActionType esdlActionType = (ESDLActionType)theEObject;
                T result = this.caseESDLActionType(esdlActionType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 31: {
                ESDLCodeT esdlCodeT = (ESDLCodeT)theEObject;
                T result = this.caseESDLCodeT(esdlCodeT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 32: {
                ESDLSpecificationT esdlSpecificationT = (ESDLSpecificationT)theEObject;
                T result = this.caseESDLSpecificationT(esdlSpecificationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 33: {
                EventSpecificationT eventSpecificationT = (EventSpecificationT)theEObject;
                T result = this.caseEventSpecificationT(eventSpecificationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 34: {
                EventsType eventsType = (EventsType)theEObject;
                T result = this.caseEventsType(eventsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 35: {
                EventT eventT = (EventT)theEObject;
                T result = this.caseEventT(eventT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 36: {
                EventTypeType eventTypeType = (EventTypeType)theEObject;
                T result = this.caseEventTypeType(eventTypeType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 37: {
                ExitActionType exitActionType = (ExitActionType)theEObject;
                T result = this.caseExitActionType(exitActionType);
                if (result == null) {
                    result = this.caseActionT(exitActionType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 38: {
                FileListSpecificationT fileListSpecificationT = (FileListSpecificationT)theEObject;
                T result = this.caseFileListSpecificationT(fileListSpecificationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 39: {
                FileReferenceT fileReferenceT = (FileReferenceT)theEObject;
                T result = this.caseFileReferenceT(fileReferenceT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 40: {
                FileType fileType = (FileType)theEObject;
                T result = this.caseFileType(fileType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 41: {
                FormattedTextT formattedTextT = (FormattedTextT)theEObject;
                T result = this.caseFormattedTextT(formattedTextT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 42: {
                GenericDataT genericDataT = (GenericDataT)theEObject;
                T result = this.caseGenericDataT(genericDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 43: {
                GetSetPortBaseT getSetPortBaseT = (GetSetPortBaseT)theEObject;
                T result = this.caseGetSetPortBaseT(getSetPortBaseT);
                if (result == null) {
                    result = this.casePinT(getSetPortBaseT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 44: {
                GraphicObjectT graphicObjectT = (GraphicObjectT)theEObject;
                T result = this.caseGraphicObjectT(graphicObjectT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 45: {
                GraphicSpecificationT graphicSpecificationT = (GraphicSpecificationT)theEObject;
                T result = this.caseGraphicSpecificationT(graphicSpecificationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 46: {
                HeaderFileType headerFileType = (HeaderFileType)theEObject;
                T result = this.caseHeaderFileType(headerFileType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 47: {
                HierarchyConnectorType hierarchyConnectorType = (HierarchyConnectorType)theEObject;
                T result = this.caseHierarchyConnectorType(hierarchyConnectorType);
                if (result == null) {
                    result = this.caseInOutPortT(hierarchyConnectorType);
                }
                if (result == null) {
                    result = this.caseGraphicObjectT(hierarchyConnectorType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 48: {
                HierarchyStateT hierarchyStateT = (HierarchyStateT)theEObject;
                T result = this.caseHierarchyStateT(hierarchyStateT);
                if (result == null) {
                    result = this.caseStateT(hierarchyStateT);
                }
                if (result == null) {
                    result = this.caseGraphicObjectT(hierarchyStateT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 49: {
                HierarchyT hierarchyT = (HierarchyT)theEObject;
                T result = this.caseHierarchyT(hierarchyT);
                if (result == null) {
                    result = this.caseGraphicObjectT(hierarchyT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 50: {
                IconT iconT = (IconT)theEObject;
                T result = this.caseIconT(iconT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 51: {
                ImplementationCastT implementationCastT = (ImplementationCastT)theEObject;
                T result = this.caseImplementationCastT(implementationCastT);
                if (result == null) {
                    result = this.caseSimpleElementBaseT(implementationCastT);
                }
                if (result == null) {
                    result = this.caseGraphicObjectT(implementationCastT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 52: {
                InOutPortT inOutPortT = (InOutPortT)theEObject;
                T result = this.caseInOutPortT(inOutPortT);
                if (result == null) {
                    result = this.caseGraphicObjectT(inOutPortT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 53: {
                InputColumnsType inputColumnsType = (InputColumnsType)theEObject;
                T result = this.caseInputColumnsType(inputColumnsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 54: {
                InputPortType inputPortType = (InputPortType)theEObject;
                T result = this.caseInputPortType(inputPortType);
                if (result == null) {
                    result = this.casePortT(inputPortType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 55: {
                InstructionColumnsType instructionColumnsType = (InstructionColumnsType)theEObject;
                T result = this.caseInstructionColumnsType(instructionColumnsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 56: {
                InterfaceElementType interfaceElementType = (InterfaceElementType)theEObject;
                T result = this.caseInterfaceElementType(interfaceElementType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 57: {
                InterfacesType interfacesType = (InterfacesType)theEObject;
                T result = this.caseInterfacesType(interfacesType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 58: {
                InterfacesType1 interfacesType1 = (InterfacesType1)theEObject;
                T result = this.caseInterfacesType1(interfacesType1);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 59: {
                InterfacesType2 interfacesType2 = (InterfacesType2)theEObject;
                T result = this.caseInterfacesType2(interfacesType2);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 60: {
                InterfacesType3 interfacesType3 = (InterfacesType3)theEObject;
                T result = this.caseInterfacesType3(interfacesType3);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 61: {
                InterfacesType4 interfacesType4 = (InterfacesType4)theEObject;
                T result = this.caseInterfacesType4(interfacesType4);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 62: {
                InterfacesType5 interfacesType5 = (InterfacesType5)theEObject;
                T result = this.caseInterfacesType5(interfacesType5);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 63: {
                InterfacesType6 interfacesType6 = (InterfacesType6)theEObject;
                T result = this.caseInterfacesType6(interfacesType6);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 64: {
                InterfacesType7 interfacesType7 = (InterfacesType7)theEObject;
                T result = this.caseInterfacesType7(interfacesType7);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 65: {
                IntervalT intervalT = (IntervalT)theEObject;
                T result = this.caseIntervalT(intervalT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 66: {
                ItemRefT itemRefT = (ItemRefT)theEObject;
                T result = this.caseItemRefT(itemRefT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 67: {
                JunctionT junctionT = (JunctionT)theEObject;
                T result = this.caseJunctionT(junctionT);
                if (result == null) {
                    result = this.caseGraphicObjectT(junctionT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 68: {
                LayoutT layoutT = (LayoutT)theEObject;
                T result = this.caseLayoutT(layoutT);
                if (result == null) {
                    result = this.caseGraphicObjectT(layoutT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 69: {
                LineStyleT lineStyleT = (LineStyleT)theEObject;
                T result = this.caseLineStyleT(lineStyleT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 70: {
                LineT lineT = (LineT)theEObject;
                T result = this.caseLineT(lineT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 71: {
                LiteralT literalT = (LiteralT)theEObject;
                T result = this.caseLiteralT(literalT);
                if (result == null) {
                    result = this.caseGraphicObjectT(literalT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 72: {
                MemberGetPortT memberGetPortT = (MemberGetPortT)theEObject;
                T result = this.caseMemberGetPortT(memberGetPortT);
                if (result == null) {
                    result = this.caseGetSetPortBaseT(memberGetPortT);
                }
                if (result == null) {
                    result = this.casePinT(memberGetPortT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 73: {
                MemberSetPortT memberSetPortT = (MemberSetPortT)theEObject;
                T result = this.caseMemberSetPortT(memberSetPortT);
                if (result == null) {
                    result = this.caseGetSetPortBaseT(memberSetPortT);
                }
                if (result == null) {
                    result = this.casePinT(memberSetPortT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 74: {
                MethodActionType methodActionType = (MethodActionType)theEObject;
                T result = this.caseMethodActionType(methodActionType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 75: {
                MethodBodiesComplexType methodBodiesComplexType = (MethodBodiesComplexType)theEObject;
                T result = this.caseMethodBodiesComplexType(methodBodiesComplexType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 76: {
                MethodBodyT methodBodyT = (MethodBodyT)theEObject;
                T result = this.caseMethodBodyT(methodBodyT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 77: {
                MethodPortT methodPortT = (MethodPortT)theEObject;
                T result = this.caseMethodPortT(methodPortT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 78: {
                ModeElementType modeElementType = (ModeElementType)theEObject;
                T result = this.caseModeElementType(modeElementType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 79: {
                ModeSwitchEventType modeSwitchEventType = (ModeSwitchEventType)theEObject;
                T result = this.caseModeSwitchEventType(modeSwitchEventType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 80: {
                ModeT modeT = (ModeT)theEObject;
                T result = this.caseModeT(modeT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 81: {
                NotesT notesT = (NotesT)theEObject;
                T result = this.caseNotesT(notesT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 82: {
                NoteType noteType = (NoteType)theEObject;
                T result = this.caseNoteType(noteType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 83: {
                OperationInvokedEventType operationInvokedEventType = (OperationInvokedEventType)theEObject;
                T result = this.caseOperationInvokedEventType(operationInvokedEventType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 84: {
                OperatorT operatorT = (OperatorT)theEObject;
                T result = this.caseOperatorT(operatorT);
                if (result == null) {
                    result = this.caseGraphicObjectT(operatorT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 85: {
                OperatorType operatorType = (OperatorType)theEObject;
                T result = this.caseOperatorType(operatorType);
                if (result == null) {
                    result = this.caseOperatorT(operatorType);
                }
                if (result == null) {
                    result = this.caseGraphicObjectT(operatorType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 86: {
                OptionT optionT = (OptionT)theEObject;
                T result = this.caseOptionT(optionT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 87: {
                OutputColumnsType outputColumnsType = (OutputColumnsType)theEObject;
                T result = this.caseOutputColumnsType(outputColumnsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 88: {
                PinT pinT = (PinT)theEObject;
                T result = this.casePinT(pinT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 89: {
                PointT pointT = (PointT)theEObject;
                T result = this.casePointT(pointT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 90: {
                PortsType portsType = (PortsType)theEObject;
                T result = this.casePortsType(portsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 91: {
                PortT portT = (PortT)theEObject;
                T result = this.casePortT(portT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 92: {
                ProjectSpecificationT projectSpecificationT = (ProjectSpecificationT)theEObject;
                T result = this.caseProjectSpecificationT(projectSpecificationT);
                if (result == null) {
                    result = this.caseGraphicSpecificationT(projectSpecificationT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 93: {
                ResourceInterfaceType resourceInterfaceType = (ResourceInterfaceType)theEObject;
                T result = this.caseResourceInterfaceType(resourceInterfaceType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 94: {
                ResourceT resourceT = (ResourceT)theEObject;
                T result = this.caseResourceT(resourceT);
                if (result == null) {
                    result = this.caseSimpleElementBaseT(resourceT);
                }
                if (result == null) {
                    result = this.caseGraphicObjectT(resourceT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 95: {
                ReturnPortT returnPortT = (ReturnPortT)theEObject;
                T result = this.caseReturnPortT(returnPortT);
                if (result == null) {
                    result = this.casePortT(returnPortT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 96: {
                ReturnPortType returnPortType = (ReturnPortType)theEObject;
                T result = this.caseReturnPortType(returnPortType);
                if (result == null) {
                    result = this.casePortT(returnPortType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 97: {
                ReturnPortType1 returnPortType1 = (ReturnPortType1)theEObject;
                T result = this.caseReturnPortType1(returnPortType1);
                if (result == null) {
                    result = this.casePortT(returnPortType1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 98: {
                ReturnPortType2 returnPortType2 = (ReturnPortType2)theEObject;
                T result = this.caseReturnPortType2(returnPortType2);
                if (result == null) {
                    result = this.casePortT(returnPortType2);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 99: {
                RunnablesType runnablesType = (RunnablesType)theEObject;
                T result = this.caseRunnablesType(runnablesType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 100: {
                RunnableType runnableType = (RunnableType)theEObject;
                T result = this.caseRunnableType(runnableType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 101: {
                SelectorPortT selectorPortT = (SelectorPortT)theEObject;
                T result = this.caseSelectorPortT(selectorPortT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 102: {
                SelectorPortType selectorPortType = (SelectorPortType)theEObject;
                T result = this.caseSelectorPortType(selectorPortType);
                if (result == null) {
                    result = this.casePortT(selectorPortType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 103: {
                SelectorPortType1 selectorPortType1 = (SelectorPortType1)theEObject;
                T result = this.caseSelectorPortType1(selectorPortType1);
                if (result == null) {
                    result = this.casePortT(selectorPortType1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 104: {
                SelectorPortType2 selectorPortType2 = (SelectorPortType2)theEObject;
                T result = this.caseSelectorPortType2(selectorPortType2);
                if (result == null) {
                    result = this.casePortT(selectorPortType2);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 105: {
                SequenceCallT sequenceCallT = (SequenceCallT)theEObject;
                T result = this.caseSequenceCallT(sequenceCallT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 106: {
                SequencedPortT sequencedPortT = (SequencedPortT)theEObject;
                T result = this.caseSequencedPortT(sequencedPortT);
                if (result == null) {
                    result = this.casePortT(sequencedPortT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 107: {
                SimpleElementBaseT simpleElementBaseT = (SimpleElementBaseT)theEObject;
                T result = this.caseSimpleElementBaseT(simpleElementBaseT);
                if (result == null) {
                    result = this.caseGraphicObjectT(simpleElementBaseT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 108: {
                SimpleElementT simpleElementT = (SimpleElementT)theEObject;
                T result = this.caseSimpleElementT(simpleElementT);
                if (result == null) {
                    result = this.caseSimpleElementBaseT(simpleElementT);
                }
                if (result == null) {
                    result = this.caseGraphicObjectT(simpleElementT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 109: {
                SizeT sizeT = (SizeT)theEObject;
                T result = this.caseSizeT(sizeT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 110: {
                SpecificationsType specificationsType = (SpecificationsType)theEObject;
                T result = this.caseSpecificationsType(specificationsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 111: {
                SpecificationT specificationT = (SpecificationT)theEObject;
                T result = this.caseSpecificationT(specificationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 112: {
                SpecificationType specificationType = (SpecificationType)theEObject;
                T result = this.caseSpecificationType(specificationType);
                if (result == null) {
                    result = this.caseSpecificationT(specificationType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 113: {
                StateMachineSpecificationT stateMachineSpecificationT = (StateMachineSpecificationT)theEObject;
                T result = this.caseStateMachineSpecificationT(stateMachineSpecificationT);
                if (result == null) {
                    result = this.caseGraphicSpecificationT(stateMachineSpecificationT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 114: {
                StateT stateT = (StateT)theEObject;
                T result = this.caseStateT(stateT);
                if (result == null) {
                    result = this.caseGraphicObjectT(stateT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 115: {
                StaticActionType staticActionType = (StaticActionType)theEObject;
                T result = this.caseStaticActionType(staticActionType);
                if (result == null) {
                    result = this.caseActionT(staticActionType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 116: {
                SymbolT symbolT = (SymbolT)theEObject;
                T result = this.caseSymbolT(symbolT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 117: {
                TableCellType tableCellType = (TableCellType)theEObject;
                T result = this.caseTableCellType(tableCellType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 118: {
                TableColumnT tableColumnT = (TableColumnT)theEObject;
                T result = this.caseTableColumnT(tableColumnT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 119: {
                TableSpecificationT tableSpecificationT = (TableSpecificationT)theEObject;
                T result = this.caseTableSpecificationT(tableSpecificationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 120: {
                TextT textT = (TextT)theEObject;
                T result = this.caseTextT(textT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 121: {
                TimeStampT timeStampT = (TimeStampT)theEObject;
                T result = this.caseTimeStampT(timeStampT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 122: {
                TimingEventType timingEventType = (TimingEventType)theEObject;
                T result = this.caseTimingEventType(timingEventType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 123: {
                TransitionT transitionT = (TransitionT)theEObject;
                T result = this.caseTransitionT(transitionT);
                if (result == null) {
                    result = this.caseGraphicObjectT(transitionT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 124: {
                TransitionType transitionType = (TransitionType)theEObject;
                T result = this.caseTransitionType(transitionType);
                if (result == null) {
                    result = this.caseTransitionT(transitionType);
                }
                if (result == null) {
                    result = this.caseGraphicObjectT(transitionType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 125: {
                TriggerPortType triggerPortType = (TriggerPortType)theEObject;
                T result = this.caseTriggerPortType(triggerPortType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 126: {
                ViewInfoT viewInfoT = (ViewInfoT)theEObject;
                T result = this.caseViewInfoT(viewInfoT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 127: {
                ViewType viewType = (ViewType)theEObject;
                T result = this.caseViewType(viewType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 128: {
                ViewType1 viewType1 = (ViewType1)theEObject;
                T result = this.caseViewType1(viewType1);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseActionsType(ActionsType object) {
        return null;
    }

    public T caseActionsType1(ActionsType1 object) {
        return null;
    }

    public T caseActionT(ActionT object) {
        return null;
    }

    public T caseActionType(ActionType object) {
        return null;
    }

    public T caseBlockConnectorT(BlockConnectorT object) {
        return null;
    }

    public T caseBlockDiagramSpecificationT(BlockDiagramSpecificationT object) {
        return null;
    }

    public T caseBlockInterfaceT(BlockInterfaceT object) {
        return null;
    }

    public T caseBooleanTableType(BooleanTableType object) {
        return null;
    }

    public T caseCCodeSpecificationT(CCodeSpecificationT object) {
        return null;
    }

    public T caseCCodeType(CCodeType object) {
        return null;
    }

    public T caseCodeVariantType(CodeVariantType object) {
        return null;
    }

    public T caseColorT(ColorT object) {
        return null;
    }

    public T caseColumnHeadingType(ColumnHeadingType object) {
        return null;
    }

    public T caseComplexElementT(ComplexElementT object) {
        return null;
    }

    public T caseConditionalTableType(ConditionalTableType object) {
        return null;
    }

    public T caseConditionColumnsType(ConditionColumnsType object) {
        return null;
    }

    public T caseConditionType(ConditionType object) {
        return null;
    }

    public T caseConnectionLineT(ConnectionLineT object) {
        return null;
    }

    public T caseConnectionPointT(ConnectionPointT object) {
        return null;
    }

    public T caseConnectionT(ConnectionT object) {
        return null;
    }

    public T caseConnectorInterfaceType(ConnectorInterfaceType object) {
        return null;
    }

    public T caseContentsComplexType(ContentsComplexType object) {
        return null;
    }

    public T caseControlRteAccessT(ControlRteAccessT object) {
        return null;
    }

    public T caseControlRteInvokeT(ControlRteInvokeT object) {
        return null;
    }

    public T caseControlT(ControlT object) {
        return null;
    }

    public T caseDiagramElementsComplexType(DiagramElementsComplexType object) {
        return null;
    }

    public T caseDiagramElementT(DiagramElementT object) {
        return null;
    }

    public T caseDisablingModesType(DisablingModesType object) {
        return null;
    }

    public T caseDocumentRoot(DocumentRoot object) {
        return null;
    }

    public T caseEntryActionType(EntryActionType object) {
        return null;
    }

    public T caseESDLActionType(ESDLActionType object) {
        return null;
    }

    public T caseESDLCodeT(ESDLCodeT object) {
        return null;
    }

    public T caseESDLSpecificationT(ESDLSpecificationT object) {
        return null;
    }

    public T caseEventSpecificationT(EventSpecificationT object) {
        return null;
    }

    public T caseEventsType(EventsType object) {
        return null;
    }

    public T caseEventT(EventT object) {
        return null;
    }

    public T caseEventTypeType(EventTypeType object) {
        return null;
    }

    public T caseExitActionType(ExitActionType object) {
        return null;
    }

    public T caseFileListSpecificationT(FileListSpecificationT object) {
        return null;
    }

    public T caseFileReferenceT(FileReferenceT object) {
        return null;
    }

    public T caseFileType(FileType object) {
        return null;
    }

    public T caseFormattedTextT(FormattedTextT object) {
        return null;
    }

    public T caseGenericDataT(GenericDataT object) {
        return null;
    }

    public T caseGetSetPortBaseT(GetSetPortBaseT object) {
        return null;
    }

    public T caseGraphicObjectT(GraphicObjectT object) {
        return null;
    }

    public T caseGraphicSpecificationT(GraphicSpecificationT object) {
        return null;
    }

    public T caseHeaderFileType(HeaderFileType object) {
        return null;
    }

    public T caseHierarchyConnectorType(HierarchyConnectorType object) {
        return null;
    }

    public T caseHierarchyStateT(HierarchyStateT object) {
        return null;
    }

    public T caseHierarchyT(HierarchyT object) {
        return null;
    }

    public T caseIconT(IconT object) {
        return null;
    }

    public T caseImplementationCastT(ImplementationCastT object) {
        return null;
    }

    public T caseInOutPortT(InOutPortT object) {
        return null;
    }

    public T caseInputColumnsType(InputColumnsType object) {
        return null;
    }

    public T caseInputPortType(InputPortType object) {
        return null;
    }

    public T caseInstructionColumnsType(InstructionColumnsType object) {
        return null;
    }

    public T caseInterfaceElementType(InterfaceElementType object) {
        return null;
    }

    public T caseInterfacesType(InterfacesType object) {
        return null;
    }

    public T caseInterfacesType1(InterfacesType1 object) {
        return null;
    }

    public T caseInterfacesType2(InterfacesType2 object) {
        return null;
    }

    public T caseInterfacesType3(InterfacesType3 object) {
        return null;
    }

    public T caseInterfacesType4(InterfacesType4 object) {
        return null;
    }

    public T caseInterfacesType5(InterfacesType5 object) {
        return null;
    }

    public T caseInterfacesType6(InterfacesType6 object) {
        return null;
    }

    public T caseInterfacesType7(InterfacesType7 object) {
        return null;
    }

    public T caseIntervalT(IntervalT object) {
        return null;
    }

    public T caseItemRefT(ItemRefT object) {
        return null;
    }

    public T caseJunctionT(JunctionT object) {
        return null;
    }

    public T caseLayoutT(LayoutT object) {
        return null;
    }

    public T caseLineStyleT(LineStyleT object) {
        return null;
    }

    public T caseLineT(LineT object) {
        return null;
    }

    public T caseLiteralT(LiteralT object) {
        return null;
    }

    public T caseMemberGetPortT(MemberGetPortT object) {
        return null;
    }

    public T caseMemberSetPortT(MemberSetPortT object) {
        return null;
    }

    public T caseMethodActionType(MethodActionType object) {
        return null;
    }

    public T caseMethodBodiesComplexType(MethodBodiesComplexType object) {
        return null;
    }

    public T caseMethodBodyT(MethodBodyT object) {
        return null;
    }

    public T caseMethodPortT(MethodPortT object) {
        return null;
    }

    public T caseModeElementType(ModeElementType object) {
        return null;
    }

    public T caseModeSwitchEventType(ModeSwitchEventType object) {
        return null;
    }

    public T caseModeT(ModeT object) {
        return null;
    }

    public T caseNotesT(NotesT object) {
        return null;
    }

    public T caseNoteType(NoteType object) {
        return null;
    }

    public T caseOperationInvokedEventType(OperationInvokedEventType object) {
        return null;
    }

    public T caseOperatorT(OperatorT object) {
        return null;
    }

    public T caseOperatorType(OperatorType object) {
        return null;
    }

    public T caseOptionT(OptionT object) {
        return null;
    }

    public T caseOutputColumnsType(OutputColumnsType object) {
        return null;
    }

    public T casePinT(PinT object) {
        return null;
    }

    public T casePointT(PointT object) {
        return null;
    }

    public T casePortsType(PortsType object) {
        return null;
    }

    public T casePortT(PortT object) {
        return null;
    }

    public T caseProjectSpecificationT(ProjectSpecificationT object) {
        return null;
    }

    public T caseResourceInterfaceType(ResourceInterfaceType object) {
        return null;
    }

    public T caseResourceT(ResourceT object) {
        return null;
    }

    public T caseReturnPortT(ReturnPortT object) {
        return null;
    }

    public T caseReturnPortType(ReturnPortType object) {
        return null;
    }

    public T caseReturnPortType1(ReturnPortType1 object) {
        return null;
    }

    public T caseReturnPortType2(ReturnPortType2 object) {
        return null;
    }

    public T caseRunnablesType(RunnablesType object) {
        return null;
    }

    public T caseRunnableType(RunnableType object) {
        return null;
    }

    public T caseSelectorPortT(SelectorPortT object) {
        return null;
    }

    public T caseSelectorPortType(SelectorPortType object) {
        return null;
    }

    public T caseSelectorPortType1(SelectorPortType1 object) {
        return null;
    }

    public T caseSelectorPortType2(SelectorPortType2 object) {
        return null;
    }

    public T caseSequenceCallT(SequenceCallT object) {
        return null;
    }

    public T caseSequencedPortT(SequencedPortT object) {
        return null;
    }

    public T caseSimpleElementBaseT(SimpleElementBaseT object) {
        return null;
    }

    public T caseSimpleElementT(SimpleElementT object) {
        return null;
    }

    public T caseSizeT(SizeT object) {
        return null;
    }

    public T caseSpecificationsType(SpecificationsType object) {
        return null;
    }

    public T caseSpecificationT(SpecificationT object) {
        return null;
    }

    public T caseSpecificationType(SpecificationType object) {
        return null;
    }

    public T caseStateMachineSpecificationT(StateMachineSpecificationT object) {
        return null;
    }

    public T caseStateT(StateT object) {
        return null;
    }

    public T caseStaticActionType(StaticActionType object) {
        return null;
    }

    public T caseSymbolT(SymbolT object) {
        return null;
    }

    public T caseTableCellType(TableCellType object) {
        return null;
    }

    public T caseTableColumnT(TableColumnT object) {
        return null;
    }

    public T caseTableSpecificationT(TableSpecificationT object) {
        return null;
    }

    public T caseTextT(TextT object) {
        return null;
    }

    public T caseTimeStampT(TimeStampT object) {
        return null;
    }

    public T caseTimingEventType(TimingEventType object) {
        return null;
    }

    public T caseTransitionT(TransitionT object) {
        return null;
    }

    public T caseTransitionType(TransitionType object) {
        return null;
    }

    public T caseTriggerPortType(TriggerPortType object) {
        return null;
    }

    public T caseViewInfoT(ViewInfoT object) {
        return null;
    }

    public T caseViewType(ViewType object) {
        return null;
    }

    public T caseViewType1(ViewType1 object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

