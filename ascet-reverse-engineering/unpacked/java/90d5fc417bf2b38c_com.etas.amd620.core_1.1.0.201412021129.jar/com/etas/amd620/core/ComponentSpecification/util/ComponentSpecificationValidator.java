/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicDiagnostic
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EValidator$PatternMatcher
 *  org.eclipse.emf.ecore.util.EObjectValidator
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 *  org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil
 *  org.eclipse.emf.ecore.xml.type.util.XMLTypeValidator
 */
package com.etas.amd620.core.ComponentSpecification.util;

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
import java.math.BigInteger;
import java.util.Map;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.util.EObjectValidator;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeValidator;

public class ComponentSpecificationValidator
extends EObjectValidator {
    public static final ComponentSpecificationValidator INSTANCE = new ComponentSpecificationValidator();
    public static final String DIAGNOSTIC_SOURCE = "com.etas.amd620.core.ComponentSpecification";
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 0;
    protected static final int DIAGNOSTIC_CODE_COUNT = 0;
    protected XMLTypeValidator xmlTypeValidator = XMLTypeValidator.INSTANCE;
    public static final BigInteger GRAPHIC_OIDT__MIN__VALUE = new BigInteger("-1");
    public static final EValidator.PatternMatcher[][] NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*.?\\d*/\\d*\\.?\\d*")}};
    public static final EValidator.PatternMatcher[][] NZQR_MEMBER2__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*/\\d*")}};
    public static final EValidator.PatternMatcher[][] OID__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"(_040|_07v)\\w{26}|_sm")}};

    protected EPackage getEPackage() {
        return ComponentSpecificationPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateActionsType((ActionsType)value, diagnostics, context);
            }
            case 1: {
                return this.validateActionsType1((ActionsType1)value, diagnostics, context);
            }
            case 2: {
                return this.validateActionT((ActionT)value, diagnostics, context);
            }
            case 3: {
                return this.validateActionType((ActionType)value, diagnostics, context);
            }
            case 4: {
                return this.validateBlockConnectorT((BlockConnectorT)value, diagnostics, context);
            }
            case 5: {
                return this.validateBlockDiagramSpecificationT((BlockDiagramSpecificationT)value, diagnostics, context);
            }
            case 6: {
                return this.validateBlockInterfaceT((BlockInterfaceT)value, diagnostics, context);
            }
            case 7: {
                return this.validateBooleanTableType((BooleanTableType)value, diagnostics, context);
            }
            case 8: {
                return this.validateCCodeSpecificationT((CCodeSpecificationT)value, diagnostics, context);
            }
            case 9: {
                return this.validateCCodeType((CCodeType)value, diagnostics, context);
            }
            case 10: {
                return this.validateCodeVariantType((CodeVariantType)value, diagnostics, context);
            }
            case 11: {
                return this.validateColorT((ColorT)value, diagnostics, context);
            }
            case 12: {
                return this.validateColumnHeadingType((ColumnHeadingType)value, diagnostics, context);
            }
            case 13: {
                return this.validateComplexElementT((ComplexElementT)value, diagnostics, context);
            }
            case 14: {
                return this.validateConditionalTableType((ConditionalTableType)value, diagnostics, context);
            }
            case 15: {
                return this.validateConditionColumnsType((ConditionColumnsType)value, diagnostics, context);
            }
            case 16: {
                return this.validateConditionType((ConditionType)value, diagnostics, context);
            }
            case 17: {
                return this.validateConnectionLineT((ConnectionLineT)value, diagnostics, context);
            }
            case 18: {
                return this.validateConnectionPointT((ConnectionPointT)value, diagnostics, context);
            }
            case 19: {
                return this.validateConnectionT((ConnectionT)value, diagnostics, context);
            }
            case 20: {
                return this.validateConnectorInterfaceType((ConnectorInterfaceType)value, diagnostics, context);
            }
            case 21: {
                return this.validateContentsComplexType((ContentsComplexType)value, diagnostics, context);
            }
            case 22: {
                return this.validateControlRteAccessT((ControlRteAccessT)value, diagnostics, context);
            }
            case 23: {
                return this.validateControlRteInvokeT((ControlRteInvokeT)value, diagnostics, context);
            }
            case 24: {
                return this.validateControlT((ControlT)value, diagnostics, context);
            }
            case 25: {
                return this.validateDiagramElementsComplexType((DiagramElementsComplexType)value, diagnostics, context);
            }
            case 26: {
                return this.validateDiagramElementT((DiagramElementT)value, diagnostics, context);
            }
            case 27: {
                return this.validateDisablingModesType((DisablingModesType)value, diagnostics, context);
            }
            case 28: {
                return this.validateDocumentRoot((DocumentRoot)value, diagnostics, context);
            }
            case 29: {
                return this.validateEntryActionType((EntryActionType)value, diagnostics, context);
            }
            case 30: {
                return this.validateESDLActionType((ESDLActionType)value, diagnostics, context);
            }
            case 31: {
                return this.validateESDLCodeT((ESDLCodeT)value, diagnostics, context);
            }
            case 32: {
                return this.validateESDLSpecificationT((ESDLSpecificationT)value, diagnostics, context);
            }
            case 33: {
                return this.validateEventSpecificationT((EventSpecificationT)value, diagnostics, context);
            }
            case 34: {
                return this.validateEventsType((EventsType)value, diagnostics, context);
            }
            case 35: {
                return this.validateEventT((EventT)value, diagnostics, context);
            }
            case 36: {
                return this.validateEventTypeType((EventTypeType)value, diagnostics, context);
            }
            case 37: {
                return this.validateExitActionType((ExitActionType)value, diagnostics, context);
            }
            case 38: {
                return this.validateFileListSpecificationT((FileListSpecificationT)value, diagnostics, context);
            }
            case 39: {
                return this.validateFileReferenceT((FileReferenceT)value, diagnostics, context);
            }
            case 40: {
                return this.validateFileType((FileType)value, diagnostics, context);
            }
            case 41: {
                return this.validateFormattedTextT((FormattedTextT)value, diagnostics, context);
            }
            case 42: {
                return this.validateGenericDataT((GenericDataT)value, diagnostics, context);
            }
            case 43: {
                return this.validateGetSetPortBaseT((GetSetPortBaseT)value, diagnostics, context);
            }
            case 44: {
                return this.validateGraphicObjectT((GraphicObjectT)value, diagnostics, context);
            }
            case 45: {
                return this.validateGraphicSpecificationT((GraphicSpecificationT)value, diagnostics, context);
            }
            case 46: {
                return this.validateHeaderFileType((HeaderFileType)value, diagnostics, context);
            }
            case 47: {
                return this.validateHierarchyConnectorType((HierarchyConnectorType)value, diagnostics, context);
            }
            case 48: {
                return this.validateHierarchyStateT((HierarchyStateT)value, diagnostics, context);
            }
            case 49: {
                return this.validateHierarchyT((HierarchyT)value, diagnostics, context);
            }
            case 50: {
                return this.validateIconT((IconT)value, diagnostics, context);
            }
            case 51: {
                return this.validateImplementationCastT((ImplementationCastT)value, diagnostics, context);
            }
            case 52: {
                return this.validateInOutPortT((InOutPortT)value, diagnostics, context);
            }
            case 53: {
                return this.validateInputColumnsType((InputColumnsType)value, diagnostics, context);
            }
            case 54: {
                return this.validateInputPortType((InputPortType)value, diagnostics, context);
            }
            case 55: {
                return this.validateInstructionColumnsType((InstructionColumnsType)value, diagnostics, context);
            }
            case 56: {
                return this.validateInterfaceElementType((InterfaceElementType)value, diagnostics, context);
            }
            case 57: {
                return this.validateInterfacesType((InterfacesType)value, diagnostics, context);
            }
            case 58: {
                return this.validateInterfacesType1((InterfacesType1)value, diagnostics, context);
            }
            case 59: {
                return this.validateInterfacesType2((InterfacesType2)value, diagnostics, context);
            }
            case 60: {
                return this.validateInterfacesType3((InterfacesType3)value, diagnostics, context);
            }
            case 61: {
                return this.validateInterfacesType4((InterfacesType4)value, diagnostics, context);
            }
            case 62: {
                return this.validateInterfacesType5((InterfacesType5)value, diagnostics, context);
            }
            case 63: {
                return this.validateInterfacesType6((InterfacesType6)value, diagnostics, context);
            }
            case 64: {
                return this.validateInterfacesType7((InterfacesType7)value, diagnostics, context);
            }
            case 65: {
                return this.validateIntervalT((IntervalT)value, diagnostics, context);
            }
            case 66: {
                return this.validateItemRefT((ItemRefT)value, diagnostics, context);
            }
            case 67: {
                return this.validateJunctionT((JunctionT)value, diagnostics, context);
            }
            case 68: {
                return this.validateLayoutT((LayoutT)value, diagnostics, context);
            }
            case 69: {
                return this.validateLineStyleT((LineStyleT)value, diagnostics, context);
            }
            case 70: {
                return this.validateLineT((LineT)value, diagnostics, context);
            }
            case 71: {
                return this.validateLiteralT((LiteralT)value, diagnostics, context);
            }
            case 72: {
                return this.validateMemberGetPortT((MemberGetPortT)value, diagnostics, context);
            }
            case 73: {
                return this.validateMemberSetPortT((MemberSetPortT)value, diagnostics, context);
            }
            case 74: {
                return this.validateMethodActionType((MethodActionType)value, diagnostics, context);
            }
            case 75: {
                return this.validateMethodBodiesComplexType((MethodBodiesComplexType)value, diagnostics, context);
            }
            case 76: {
                return this.validateMethodBodyT((MethodBodyT)value, diagnostics, context);
            }
            case 77: {
                return this.validateMethodPortT((MethodPortT)value, diagnostics, context);
            }
            case 78: {
                return this.validateModeElementType((ModeElementType)value, diagnostics, context);
            }
            case 79: {
                return this.validateModeSwitchEventType((ModeSwitchEventType)value, diagnostics, context);
            }
            case 80: {
                return this.validateModeT((ModeT)value, diagnostics, context);
            }
            case 81: {
                return this.validateNotesT((NotesT)value, diagnostics, context);
            }
            case 82: {
                return this.validateNoteType((NoteType)value, diagnostics, context);
            }
            case 83: {
                return this.validateOperationInvokedEventType((OperationInvokedEventType)value, diagnostics, context);
            }
            case 84: {
                return this.validateOperatorT((OperatorT)value, diagnostics, context);
            }
            case 85: {
                return this.validateOperatorType((OperatorType)value, diagnostics, context);
            }
            case 86: {
                return this.validateOptionT((OptionT)value, diagnostics, context);
            }
            case 87: {
                return this.validateOutputColumnsType((OutputColumnsType)value, diagnostics, context);
            }
            case 88: {
                return this.validatePinT((PinT)value, diagnostics, context);
            }
            case 89: {
                return this.validatePointT((PointT)value, diagnostics, context);
            }
            case 90: {
                return this.validatePortsType((PortsType)value, diagnostics, context);
            }
            case 91: {
                return this.validatePortT((PortT)value, diagnostics, context);
            }
            case 92: {
                return this.validateProjectSpecificationT((ProjectSpecificationT)value, diagnostics, context);
            }
            case 93: {
                return this.validateResourceInterfaceType((ResourceInterfaceType)value, diagnostics, context);
            }
            case 94: {
                return this.validateResourceT((ResourceT)value, diagnostics, context);
            }
            case 95: {
                return this.validateReturnPortT((ReturnPortT)value, diagnostics, context);
            }
            case 96: {
                return this.validateReturnPortType((ReturnPortType)value, diagnostics, context);
            }
            case 97: {
                return this.validateReturnPortType1((ReturnPortType1)value, diagnostics, context);
            }
            case 98: {
                return this.validateReturnPortType2((ReturnPortType2)value, diagnostics, context);
            }
            case 99: {
                return this.validateRunnablesType((RunnablesType)value, diagnostics, context);
            }
            case 100: {
                return this.validateRunnableType((RunnableType)value, diagnostics, context);
            }
            case 101: {
                return this.validateSelectorPortT((SelectorPortT)value, diagnostics, context);
            }
            case 102: {
                return this.validateSelectorPortType((SelectorPortType)value, diagnostics, context);
            }
            case 103: {
                return this.validateSelectorPortType1((SelectorPortType1)value, diagnostics, context);
            }
            case 104: {
                return this.validateSelectorPortType2((SelectorPortType2)value, diagnostics, context);
            }
            case 105: {
                return this.validateSequenceCallT((SequenceCallT)value, diagnostics, context);
            }
            case 106: {
                return this.validateSequencedPortT((SequencedPortT)value, diagnostics, context);
            }
            case 107: {
                return this.validateSimpleElementBaseT((SimpleElementBaseT)value, diagnostics, context);
            }
            case 108: {
                return this.validateSimpleElementT((SimpleElementT)value, diagnostics, context);
            }
            case 109: {
                return this.validateSizeT((SizeT)value, diagnostics, context);
            }
            case 110: {
                return this.validateSpecificationsType((SpecificationsType)value, diagnostics, context);
            }
            case 111: {
                return this.validateSpecificationT((SpecificationT)value, diagnostics, context);
            }
            case 112: {
                return this.validateSpecificationType((SpecificationType)value, diagnostics, context);
            }
            case 113: {
                return this.validateStateMachineSpecificationT((StateMachineSpecificationT)value, diagnostics, context);
            }
            case 114: {
                return this.validateStateT((StateT)value, diagnostics, context);
            }
            case 115: {
                return this.validateStaticActionType((StaticActionType)value, diagnostics, context);
            }
            case 116: {
                return this.validateSymbolT((SymbolT)value, diagnostics, context);
            }
            case 117: {
                return this.validateTableCellType((TableCellType)value, diagnostics, context);
            }
            case 118: {
                return this.validateTableColumnT((TableColumnT)value, diagnostics, context);
            }
            case 119: {
                return this.validateTableSpecificationT((TableSpecificationT)value, diagnostics, context);
            }
            case 120: {
                return this.validateTextT((TextT)value, diagnostics, context);
            }
            case 121: {
                return this.validateTimeStampT((TimeStampT)value, diagnostics, context);
            }
            case 122: {
                return this.validateTimingEventType((TimingEventType)value, diagnostics, context);
            }
            case 123: {
                return this.validateTransitionT((TransitionT)value, diagnostics, context);
            }
            case 124: {
                return this.validateTransitionType((TransitionType)value, diagnostics, context);
            }
            case 125: {
                return this.validateTriggerPortType((TriggerPortType)value, diagnostics, context);
            }
            case 126: {
                return this.validateViewInfoT((ViewInfoT)value, diagnostics, context);
            }
            case 127: {
                return this.validateViewType((ViewType)value, diagnostics, context);
            }
            case 128: {
                return this.validateViewType1((ViewType1)value, diagnostics, context);
            }
            case 129: {
                return this.validateAccessType((AccessType)((Object)value), diagnostics, context);
            }
            case 130: {
                return this.validateAccessType1((AccessType1)((Object)value), diagnostics, context);
            }
            case 131: {
                return this.validateCtOutputsType((CtOutputsType)((Object)value), diagnostics, context);
            }
            case 132: {
                return this.validateDirectionType((DirectionType)((Object)value), diagnostics, context);
            }
            case 133: {
                return this.validateDirectionType1((DirectionType1)((Object)value), diagnostics, context);
            }
            case 134: {
                return this.validateFlowType((FlowType)((Object)value), diagnostics, context);
            }
            case 135: {
                return this.validateModeSwitchTypeType((ModeSwitchTypeType)((Object)value), diagnostics, context);
            }
            case 136: {
                return this.validateOperatorTType((OperatorTType)((Object)value), diagnostics, context);
            }
            case 137: {
                return this.validatePublicType((PublicType)((Object)value), diagnostics, context);
            }
            case 138: {
                return this.validateTypeType((TypeType)((Object)value), diagnostics, context);
            }
            case 139: {
                return this.validateTypeType1((TypeType1)((Object)value), diagnostics, context);
            }
            case 140: {
                return this.validateTypeType2((TypeType2)((Object)value), diagnostics, context);
            }
            case 141: {
                return this.validateTypeType3((TypeType3)((Object)value), diagnostics, context);
            }
            case 142: {
                return this.validateTypeType4((TypeType4)((Object)value), diagnostics, context);
            }
            case 143: {
                return this.validateTypeType5((TypeType5)((Object)value), diagnostics, context);
            }
            case 144: {
                return this.validateVisibilityType((VisibilityType)((Object)value), diagnostics, context);
            }
            case 145: {
                return this.validateAccessTypeObject((AccessType)((Object)value), diagnostics, context);
            }
            case 146: {
                return this.validateAccessTypeObject1((AccessType1)((Object)value), diagnostics, context);
            }
            case 147: {
                return this.validateCtOutputsTypeObject((CtOutputsType)((Object)value), diagnostics, context);
            }
            case 148: {
                return this.validateDirectionTypeObject((DirectionType)((Object)value), diagnostics, context);
            }
            case 149: {
                return this.validateDirectionTypeObject1((DirectionType1)((Object)value), diagnostics, context);
            }
            case 150: {
                return this.validateFlowTypeObject((FlowType)((Object)value), diagnostics, context);
            }
            case 151: {
                return this.validateGraphicOIDT((BigInteger)value, diagnostics, context);
            }
            case 152: {
                return this.validateModeSwitchTypeTypeObject((ModeSwitchTypeType)((Object)value), diagnostics, context);
            }
            case 153: {
                return this.validateNumberOrFraction(value, diagnostics, context);
            }
            case 154: {
                return this.validateNumberOrFractionMember1((String)value, diagnostics, context);
            }
            case 155: {
                return this.validateNzqr(value, diagnostics, context);
            }
            case 156: {
                return this.validateNzqrMember2((String)value, diagnostics, context);
            }
            case 157: {
                return this.validateOID((String)value, diagnostics, context);
            }
            case 158: {
                return this.validateOperatorTTypeObject((OperatorTType)((Object)value), diagnostics, context);
            }
            case 159: {
                return this.validatePublicTypeObject((PublicType)((Object)value), diagnostics, context);
            }
            case 160: {
                return this.validateTypeTypeObject((TypeType)((Object)value), diagnostics, context);
            }
            case 161: {
                return this.validateTypeTypeObject1((TypeType4)((Object)value), diagnostics, context);
            }
            case 162: {
                return this.validateTypeTypeObject2((TypeType1)((Object)value), diagnostics, context);
            }
            case 163: {
                return this.validateTypeTypeObject3((TypeType3)((Object)value), diagnostics, context);
            }
            case 164: {
                return this.validateTypeTypeObject4((TypeType2)((Object)value), diagnostics, context);
            }
            case 165: {
                return this.validateTypeTypeObject5((TypeType5)((Object)value), diagnostics, context);
            }
            case 166: {
                return this.validateVisibilityTypeObject((VisibilityType)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateActionsType(ActionsType actionsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(actionsType, diagnostics, context);
    }

    public boolean validateActionsType1(ActionsType1 actionsType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(actionsType1, diagnostics, context);
    }

    public boolean validateActionT(ActionT actionT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(actionT, diagnostics, context);
    }

    public boolean validateActionType(ActionType actionType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(actionType, diagnostics, context);
    }

    public boolean validateBlockConnectorT(BlockConnectorT blockConnectorT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(blockConnectorT, diagnostics, context);
    }

    public boolean validateBlockDiagramSpecificationT(BlockDiagramSpecificationT blockDiagramSpecificationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(blockDiagramSpecificationT, diagnostics, context);
    }

    public boolean validateBlockInterfaceT(BlockInterfaceT blockInterfaceT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(blockInterfaceT, diagnostics, context);
    }

    public boolean validateBooleanTableType(BooleanTableType booleanTableType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(booleanTableType, diagnostics, context);
    }

    public boolean validateCCodeSpecificationT(CCodeSpecificationT cCodeSpecificationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(cCodeSpecificationT, diagnostics, context);
    }

    public boolean validateCCodeType(CCodeType cCodeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(cCodeType, diagnostics, context);
    }

    public boolean validateCodeVariantType(CodeVariantType codeVariantType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(codeVariantType, diagnostics, context);
    }

    public boolean validateColorT(ColorT colorT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(colorT, diagnostics, context);
    }

    public boolean validateColumnHeadingType(ColumnHeadingType columnHeadingType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(columnHeadingType, diagnostics, context);
    }

    public boolean validateComplexElementT(ComplexElementT complexElementT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(complexElementT, diagnostics, context);
    }

    public boolean validateConditionalTableType(ConditionalTableType conditionalTableType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(conditionalTableType, diagnostics, context);
    }

    public boolean validateConditionColumnsType(ConditionColumnsType conditionColumnsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(conditionColumnsType, diagnostics, context);
    }

    public boolean validateConditionType(ConditionType conditionType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(conditionType, diagnostics, context);
    }

    public boolean validateConnectionLineT(ConnectionLineT connectionLineT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(connectionLineT, diagnostics, context);
    }

    public boolean validateConnectionPointT(ConnectionPointT connectionPointT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(connectionPointT, diagnostics, context);
    }

    public boolean validateConnectionT(ConnectionT connectionT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(connectionT, diagnostics, context);
    }

    public boolean validateConnectorInterfaceType(ConnectorInterfaceType connectorInterfaceType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(connectorInterfaceType, diagnostics, context);
    }

    public boolean validateContentsComplexType(ContentsComplexType contentsComplexType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(contentsComplexType, diagnostics, context);
    }

    public boolean validateControlRteAccessT(ControlRteAccessT controlRteAccessT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(controlRteAccessT, diagnostics, context);
    }

    public boolean validateControlRteInvokeT(ControlRteInvokeT controlRteInvokeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(controlRteInvokeT, diagnostics, context);
    }

    public boolean validateControlT(ControlT controlT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(controlT, diagnostics, context);
    }

    public boolean validateDiagramElementsComplexType(DiagramElementsComplexType diagramElementsComplexType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(diagramElementsComplexType, diagnostics, context);
    }

    public boolean validateDiagramElementT(DiagramElementT diagramElementT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(diagramElementT, diagnostics, context);
    }

    public boolean validateDisablingModesType(DisablingModesType disablingModesType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(disablingModesType, diagnostics, context);
    }

    public boolean validateDocumentRoot(DocumentRoot documentRoot, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(documentRoot, diagnostics, context);
    }

    public boolean validateEntryActionType(EntryActionType entryActionType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(entryActionType, diagnostics, context);
    }

    public boolean validateESDLActionType(ESDLActionType esdlActionType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(esdlActionType, diagnostics, context);
    }

    public boolean validateESDLCodeT(ESDLCodeT esdlCodeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(esdlCodeT, diagnostics, context);
    }

    public boolean validateESDLSpecificationT(ESDLSpecificationT esdlSpecificationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(esdlSpecificationT, diagnostics, context);
    }

    public boolean validateEventSpecificationT(EventSpecificationT eventSpecificationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(eventSpecificationT, diagnostics, context);
    }

    public boolean validateEventsType(EventsType eventsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(eventsType, diagnostics, context);
    }

    public boolean validateEventT(EventT eventT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(eventT, diagnostics, context);
    }

    public boolean validateEventTypeType(EventTypeType eventTypeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(eventTypeType, diagnostics, context);
    }

    public boolean validateExitActionType(ExitActionType exitActionType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(exitActionType, diagnostics, context);
    }

    public boolean validateFileListSpecificationT(FileListSpecificationT fileListSpecificationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(fileListSpecificationT, diagnostics, context);
    }

    public boolean validateFileReferenceT(FileReferenceT fileReferenceT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(fileReferenceT, diagnostics, context);
    }

    public boolean validateFileType(FileType fileType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(fileType, diagnostics, context);
    }

    public boolean validateFormattedTextT(FormattedTextT formattedTextT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(formattedTextT, diagnostics, context);
    }

    public boolean validateGenericDataT(GenericDataT genericDataT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(genericDataT, diagnostics, context);
    }

    public boolean validateGetSetPortBaseT(GetSetPortBaseT getSetPortBaseT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(getSetPortBaseT, diagnostics, context);
    }

    public boolean validateGraphicObjectT(GraphicObjectT graphicObjectT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(graphicObjectT, diagnostics, context);
    }

    public boolean validateGraphicSpecificationT(GraphicSpecificationT graphicSpecificationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(graphicSpecificationT, diagnostics, context);
    }

    public boolean validateHeaderFileType(HeaderFileType headerFileType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(headerFileType, diagnostics, context);
    }

    public boolean validateHierarchyConnectorType(HierarchyConnectorType hierarchyConnectorType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(hierarchyConnectorType, diagnostics, context);
    }

    public boolean validateHierarchyStateT(HierarchyStateT hierarchyStateT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(hierarchyStateT, diagnostics, context);
    }

    public boolean validateHierarchyT(HierarchyT hierarchyT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(hierarchyT, diagnostics, context);
    }

    public boolean validateIconT(IconT iconT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(iconT, diagnostics, context);
    }

    public boolean validateImplementationCastT(ImplementationCastT implementationCastT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(implementationCastT, diagnostics, context);
    }

    public boolean validateInOutPortT(InOutPortT inOutPortT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(inOutPortT, diagnostics, context);
    }

    public boolean validateInputColumnsType(InputColumnsType inputColumnsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(inputColumnsType, diagnostics, context);
    }

    public boolean validateInputPortType(InputPortType inputPortType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(inputPortType, diagnostics, context);
    }

    public boolean validateInstructionColumnsType(InstructionColumnsType instructionColumnsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(instructionColumnsType, diagnostics, context);
    }

    public boolean validateInterfaceElementType(InterfaceElementType interfaceElementType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(interfaceElementType, diagnostics, context);
    }

    public boolean validateInterfacesType(InterfacesType interfacesType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(interfacesType, diagnostics, context);
    }

    public boolean validateInterfacesType1(InterfacesType1 interfacesType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(interfacesType1, diagnostics, context);
    }

    public boolean validateInterfacesType2(InterfacesType2 interfacesType2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(interfacesType2, diagnostics, context);
    }

    public boolean validateInterfacesType3(InterfacesType3 interfacesType3, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(interfacesType3, diagnostics, context);
    }

    public boolean validateInterfacesType4(InterfacesType4 interfacesType4, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(interfacesType4, diagnostics, context);
    }

    public boolean validateInterfacesType5(InterfacesType5 interfacesType5, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(interfacesType5, diagnostics, context);
    }

    public boolean validateInterfacesType6(InterfacesType6 interfacesType6, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(interfacesType6, diagnostics, context);
    }

    public boolean validateInterfacesType7(InterfacesType7 interfacesType7, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(interfacesType7, diagnostics, context);
    }

    public boolean validateIntervalT(IntervalT intervalT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(intervalT, diagnostics, context);
    }

    public boolean validateItemRefT(ItemRefT itemRefT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(itemRefT, diagnostics, context);
    }

    public boolean validateJunctionT(JunctionT junctionT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(junctionT, diagnostics, context);
    }

    public boolean validateLayoutT(LayoutT layoutT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(layoutT, diagnostics, context);
    }

    public boolean validateLineStyleT(LineStyleT lineStyleT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(lineStyleT, diagnostics, context);
    }

    public boolean validateLineT(LineT lineT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(lineT, diagnostics, context);
    }

    public boolean validateLiteralT(LiteralT literalT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(literalT, diagnostics, context);
    }

    public boolean validateMemberGetPortT(MemberGetPortT memberGetPortT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(memberGetPortT, diagnostics, context);
    }

    public boolean validateMemberSetPortT(MemberSetPortT memberSetPortT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(memberSetPortT, diagnostics, context);
    }

    public boolean validateMethodActionType(MethodActionType methodActionType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(methodActionType, diagnostics, context);
    }

    public boolean validateMethodBodiesComplexType(MethodBodiesComplexType methodBodiesComplexType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(methodBodiesComplexType, diagnostics, context);
    }

    public boolean validateMethodBodyT(MethodBodyT methodBodyT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(methodBodyT, diagnostics, context);
    }

    public boolean validateMethodPortT(MethodPortT methodPortT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(methodPortT, diagnostics, context);
    }

    public boolean validateModeElementType(ModeElementType modeElementType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(modeElementType, diagnostics, context);
    }

    public boolean validateModeSwitchEventType(ModeSwitchEventType modeSwitchEventType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(modeSwitchEventType, diagnostics, context);
    }

    public boolean validateModeT(ModeT modeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(modeT, diagnostics, context);
    }

    public boolean validateNotesT(NotesT notesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(notesT, diagnostics, context);
    }

    public boolean validateNoteType(NoteType noteType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(noteType, diagnostics, context);
    }

    public boolean validateOperationInvokedEventType(OperationInvokedEventType operationInvokedEventType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(operationInvokedEventType, diagnostics, context);
    }

    public boolean validateOperatorT(OperatorT operatorT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(operatorT, diagnostics, context);
    }

    public boolean validateOperatorType(OperatorType operatorType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(operatorType, diagnostics, context);
    }

    public boolean validateOptionT(OptionT optionT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(optionT, diagnostics, context);
    }

    public boolean validateOutputColumnsType(OutputColumnsType outputColumnsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(outputColumnsType, diagnostics, context);
    }

    public boolean validatePinT(PinT pinT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(pinT, diagnostics, context);
    }

    public boolean validatePointT(PointT pointT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(pointT, diagnostics, context);
    }

    public boolean validatePortsType(PortsType portsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(portsType, diagnostics, context);
    }

    public boolean validatePortT(PortT portT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(portT, diagnostics, context);
    }

    public boolean validateProjectSpecificationT(ProjectSpecificationT projectSpecificationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(projectSpecificationT, diagnostics, context);
    }

    public boolean validateResourceInterfaceType(ResourceInterfaceType resourceInterfaceType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(resourceInterfaceType, diagnostics, context);
    }

    public boolean validateResourceT(ResourceT resourceT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(resourceT, diagnostics, context);
    }

    public boolean validateReturnPortT(ReturnPortT returnPortT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(returnPortT, diagnostics, context);
    }

    public boolean validateReturnPortType(ReturnPortType returnPortType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(returnPortType, diagnostics, context);
    }

    public boolean validateReturnPortType1(ReturnPortType1 returnPortType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(returnPortType1, diagnostics, context);
    }

    public boolean validateReturnPortType2(ReturnPortType2 returnPortType2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(returnPortType2, diagnostics, context);
    }

    public boolean validateRunnablesType(RunnablesType runnablesType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(runnablesType, diagnostics, context);
    }

    public boolean validateRunnableType(RunnableType runnableType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(runnableType, diagnostics, context);
    }

    public boolean validateSelectorPortT(SelectorPortT selectorPortT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(selectorPortT, diagnostics, context);
    }

    public boolean validateSelectorPortType(SelectorPortType selectorPortType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(selectorPortType, diagnostics, context);
    }

    public boolean validateSelectorPortType1(SelectorPortType1 selectorPortType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(selectorPortType1, diagnostics, context);
    }

    public boolean validateSelectorPortType2(SelectorPortType2 selectorPortType2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(selectorPortType2, diagnostics, context);
    }

    public boolean validateSequenceCallT(SequenceCallT sequenceCallT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(sequenceCallT, diagnostics, context);
    }

    public boolean validateSequencedPortT(SequencedPortT sequencedPortT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(sequencedPortT, diagnostics, context);
    }

    public boolean validateSimpleElementBaseT(SimpleElementBaseT simpleElementBaseT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(simpleElementBaseT, diagnostics, context);
    }

    public boolean validateSimpleElementT(SimpleElementT simpleElementT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(simpleElementT, diagnostics, context);
    }

    public boolean validateSizeT(SizeT sizeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(sizeT, diagnostics, context);
    }

    public boolean validateSpecificationsType(SpecificationsType specificationsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(specificationsType, diagnostics, context);
    }

    public boolean validateSpecificationT(SpecificationT specificationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(specificationT, diagnostics, context);
    }

    public boolean validateSpecificationType(SpecificationType specificationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(specificationType, diagnostics, context);
    }

    public boolean validateStateMachineSpecificationT(StateMachineSpecificationT stateMachineSpecificationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(stateMachineSpecificationT, diagnostics, context);
    }

    public boolean validateStateT(StateT stateT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(stateT, diagnostics, context);
    }

    public boolean validateStaticActionType(StaticActionType staticActionType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(staticActionType, diagnostics, context);
    }

    public boolean validateSymbolT(SymbolT symbolT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(symbolT, diagnostics, context);
    }

    public boolean validateTableCellType(TableCellType tableCellType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(tableCellType, diagnostics, context);
    }

    public boolean validateTableColumnT(TableColumnT tableColumnT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(tableColumnT, diagnostics, context);
    }

    public boolean validateTableSpecificationT(TableSpecificationT tableSpecificationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(tableSpecificationT, diagnostics, context);
    }

    public boolean validateTextT(TextT textT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(textT, diagnostics, context);
    }

    public boolean validateTimeStampT(TimeStampT timeStampT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(timeStampT, diagnostics, context);
    }

    public boolean validateTimingEventType(TimingEventType timingEventType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(timingEventType, diagnostics, context);
    }

    public boolean validateTransitionT(TransitionT transitionT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(transitionT, diagnostics, context);
    }

    public boolean validateTransitionType(TransitionType transitionType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(transitionType, diagnostics, context);
    }

    public boolean validateTriggerPortType(TriggerPortType triggerPortType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(triggerPortType, diagnostics, context);
    }

    public boolean validateViewInfoT(ViewInfoT viewInfoT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(viewInfoT, diagnostics, context);
    }

    public boolean validateViewType(ViewType viewType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(viewType, diagnostics, context);
    }

    public boolean validateViewType1(ViewType1 viewType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(viewType1, diagnostics, context);
    }

    public boolean validateAccessType(AccessType accessType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateAccessType1(AccessType1 accessType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateCtOutputsType(CtOutputsType ctOutputsType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateDirectionType(DirectionType directionType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateDirectionType1(DirectionType1 directionType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateFlowType(FlowType flowType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateModeSwitchTypeType(ModeSwitchTypeType modeSwitchTypeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateOperatorTType(OperatorTType operatorTType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validatePublicType(PublicType publicType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeType(TypeType typeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeType1(TypeType1 typeType1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeType2(TypeType2 typeType2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeType3(TypeType3 typeType3, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeType4(TypeType4 typeType4, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeType5(TypeType5 typeType5, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateVisibilityType(VisibilityType visibilityType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateAccessTypeObject(AccessType accessTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateAccessTypeObject1(AccessType1 accessTypeObject1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateCtOutputsTypeObject(CtOutputsType ctOutputsTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateDirectionTypeObject(DirectionType directionTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateDirectionTypeObject1(DirectionType1 directionTypeObject1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateFlowTypeObject(FlowType flowTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateGraphicOIDT(BigInteger graphicOIDT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateGraphicOIDT_Min(graphicOIDT, diagnostics, context);
        return result;
    }

    public boolean validateGraphicOIDT_Min(BigInteger graphicOIDT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = graphicOIDT.compareTo(GRAPHIC_OIDT__MIN__VALUE) >= 0;
        if (!result && diagnostics != null) {
            this.reportMinViolation(ComponentSpecificationPackage.eINSTANCE.getGraphicOIDT(), graphicOIDT, GRAPHIC_OIDT__MIN__VALUE, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateModeSwitchTypeTypeObject(ModeSwitchTypeType modeSwitchTypeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateNumberOrFraction(Object numberOrFraction, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNumberOrFraction_MemberTypes(numberOrFraction, diagnostics, context);
        return result;
    }

    public boolean validateNumberOrFraction_MemberTypes(Object numberOrFraction, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (diagnostics != null) {
            BasicDiagnostic tempDiagnostics = new BasicDiagnostic();
            if (XMLTypePackage.Literals.DOUBLE.isInstance(numberOrFraction) && this.xmlTypeValidator.validateDouble(((Double)numberOrFraction).doubleValue(), (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            if (ComponentSpecificationPackage.eINSTANCE.getNumberOrFractionMember1().isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            for (Diagnostic diagnostic : tempDiagnostics.getChildren()) {
                diagnostics.add(diagnostic);
            }
        } else {
            if (XMLTypePackage.Literals.DOUBLE.isInstance(numberOrFraction) && this.xmlTypeValidator.validateDouble(((Double)numberOrFraction).doubleValue(), null, context)) {
                return true;
            }
            if (ComponentSpecificationPackage.eINSTANCE.getNumberOrFractionMember1().isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, null, context)) {
                return true;
            }
        }
        return false;
    }

    public boolean validateNumberOrFractionMember1(String numberOrFractionMember1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNumberOrFractionMember1_Pattern(numberOrFractionMember1, diagnostics, context);
        return result;
    }

    public boolean validateNumberOrFractionMember1_Pattern(String numberOrFractionMember1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(ComponentSpecificationPackage.eINSTANCE.getNumberOrFractionMember1(), numberOrFractionMember1, NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateNzqr(Object nzqr, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNzqr_MemberTypes(nzqr, diagnostics, context);
        return result;
    }

    public boolean validateNzqr_MemberTypes(Object nzqr, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (diagnostics != null) {
            BasicDiagnostic tempDiagnostics = new BasicDiagnostic();
            if (XMLTypePackage.Literals.DOUBLE.isInstance(nzqr) && this.xmlTypeValidator.validateDouble(((Double)nzqr).doubleValue(), (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            if (XMLTypePackage.Literals.INT.isInstance(nzqr) && this.xmlTypeValidator.validateInt(((Integer)nzqr).intValue(), (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            if (ComponentSpecificationPackage.eINSTANCE.getNzqrMember2().isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            for (Diagnostic diagnostic : tempDiagnostics.getChildren()) {
                diagnostics.add(diagnostic);
            }
        } else {
            if (XMLTypePackage.Literals.DOUBLE.isInstance(nzqr) && this.xmlTypeValidator.validateDouble(((Double)nzqr).doubleValue(), null, context)) {
                return true;
            }
            if (XMLTypePackage.Literals.INT.isInstance(nzqr) && this.xmlTypeValidator.validateInt(((Integer)nzqr).intValue(), null, context)) {
                return true;
            }
            if (ComponentSpecificationPackage.eINSTANCE.getNzqrMember2().isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, null, context)) {
                return true;
            }
        }
        return false;
    }

    public boolean validateNzqrMember2(String nzqrMember2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNzqrMember2_Pattern(nzqrMember2, diagnostics, context);
        return result;
    }

    public boolean validateNzqrMember2_Pattern(String nzqrMember2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(ComponentSpecificationPackage.eINSTANCE.getNzqrMember2(), nzqrMember2, NZQR_MEMBER2__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateOID(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateOID_Pattern(oid, diagnostics, context);
        return result;
    }

    public boolean validateOID_Pattern(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(ComponentSpecificationPackage.eINSTANCE.getOID(), oid, OID__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateOperatorTTypeObject(OperatorTType operatorTTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validatePublicTypeObject(PublicType publicTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeTypeObject(TypeType typeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeTypeObject1(TypeType4 typeTypeObject1, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeTypeObject2(TypeType1 typeTypeObject2, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeTypeObject3(TypeType3 typeTypeObject3, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeTypeObject4(TypeType2 typeTypeObject4, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeTypeObject5(TypeType5 typeTypeObject5, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateVisibilityTypeObject(VisibilityType visibilityTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return super.getResourceLocator();
    }
}

