/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package com.etas.amd620.core.ComponentSpecification;

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
import com.etas.amd620.core.ComponentSpecification.impl.ComponentSpecificationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComponentSpecificationFactory
extends EFactory {
    public static final ComponentSpecificationFactory eINSTANCE = ComponentSpecificationFactoryImpl.init();

    public ActionsType createActionsType();

    public ActionsType1 createActionsType1();

    public ActionT createActionT();

    public ActionType createActionType();

    public BlockConnectorT createBlockConnectorT();

    public BlockDiagramSpecificationT createBlockDiagramSpecificationT();

    public BlockInterfaceT createBlockInterfaceT();

    public BooleanTableType createBooleanTableType();

    public CCodeSpecificationT createCCodeSpecificationT();

    public CCodeType createCCodeType();

    public CodeVariantType createCodeVariantType();

    public ColorT createColorT();

    public ColumnHeadingType createColumnHeadingType();

    public ComplexElementT createComplexElementT();

    public ConditionalTableType createConditionalTableType();

    public ConditionColumnsType createConditionColumnsType();

    public ConditionType createConditionType();

    public ConnectionLineT createConnectionLineT();

    public ConnectionPointT createConnectionPointT();

    public ConnectionT createConnectionT();

    public ConnectorInterfaceType createConnectorInterfaceType();

    public ContentsComplexType createContentsComplexType();

    public ControlRteAccessT createControlRteAccessT();

    public ControlRteInvokeT createControlRteInvokeT();

    public ControlT createControlT();

    public DiagramElementsComplexType createDiagramElementsComplexType();

    public DiagramElementT createDiagramElementT();

    public DisablingModesType createDisablingModesType();

    public DocumentRoot createDocumentRoot();

    public EntryActionType createEntryActionType();

    public ESDLActionType createESDLActionType();

    public ESDLCodeT createESDLCodeT();

    public ESDLSpecificationT createESDLSpecificationT();

    public EventSpecificationT createEventSpecificationT();

    public EventsType createEventsType();

    public EventT createEventT();

    public EventTypeType createEventTypeType();

    public ExitActionType createExitActionType();

    public FileListSpecificationT createFileListSpecificationT();

    public FileReferenceT createFileReferenceT();

    public FileType createFileType();

    public FormattedTextT createFormattedTextT();

    public GenericDataT createGenericDataT();

    public GetSetPortBaseT createGetSetPortBaseT();

    public GraphicObjectT createGraphicObjectT();

    public GraphicSpecificationT createGraphicSpecificationT();

    public HeaderFileType createHeaderFileType();

    public HierarchyConnectorType createHierarchyConnectorType();

    public HierarchyStateT createHierarchyStateT();

    public HierarchyT createHierarchyT();

    public IconT createIconT();

    public ImplementationCastT createImplementationCastT();

    public InOutPortT createInOutPortT();

    public InputColumnsType createInputColumnsType();

    public InputPortType createInputPortType();

    public InstructionColumnsType createInstructionColumnsType();

    public InterfaceElementType createInterfaceElementType();

    public InterfacesType createInterfacesType();

    public InterfacesType1 createInterfacesType1();

    public InterfacesType2 createInterfacesType2();

    public InterfacesType3 createInterfacesType3();

    public InterfacesType4 createInterfacesType4();

    public InterfacesType5 createInterfacesType5();

    public InterfacesType6 createInterfacesType6();

    public InterfacesType7 createInterfacesType7();

    public IntervalT createIntervalT();

    public ItemRefT createItemRefT();

    public JunctionT createJunctionT();

    public LayoutT createLayoutT();

    public LineStyleT createLineStyleT();

    public LineT createLineT();

    public LiteralT createLiteralT();

    public MemberGetPortT createMemberGetPortT();

    public MemberSetPortT createMemberSetPortT();

    public MethodActionType createMethodActionType();

    public MethodBodiesComplexType createMethodBodiesComplexType();

    public MethodBodyT createMethodBodyT();

    public MethodPortT createMethodPortT();

    public ModeElementType createModeElementType();

    public ModeSwitchEventType createModeSwitchEventType();

    public ModeT createModeT();

    public NotesT createNotesT();

    public NoteType createNoteType();

    public OperationInvokedEventType createOperationInvokedEventType();

    public OperatorT createOperatorT();

    public OperatorType createOperatorType();

    public OptionT createOptionT();

    public OutputColumnsType createOutputColumnsType();

    public PinT createPinT();

    public PointT createPointT();

    public PortsType createPortsType();

    public PortT createPortT();

    public ProjectSpecificationT createProjectSpecificationT();

    public ResourceInterfaceType createResourceInterfaceType();

    public ResourceT createResourceT();

    public ReturnPortT createReturnPortT();

    public ReturnPortType createReturnPortType();

    public ReturnPortType1 createReturnPortType1();

    public ReturnPortType2 createReturnPortType2();

    public RunnablesType createRunnablesType();

    public RunnableType createRunnableType();

    public SelectorPortT createSelectorPortT();

    public SelectorPortType createSelectorPortType();

    public SelectorPortType1 createSelectorPortType1();

    public SelectorPortType2 createSelectorPortType2();

    public SequenceCallT createSequenceCallT();

    public SequencedPortT createSequencedPortT();

    public SimpleElementBaseT createSimpleElementBaseT();

    public SimpleElementT createSimpleElementT();

    public SizeT createSizeT();

    public SpecificationsType createSpecificationsType();

    public SpecificationT createSpecificationT();

    public SpecificationType createSpecificationType();

    public StateMachineSpecificationT createStateMachineSpecificationT();

    public StateT createStateT();

    public StaticActionType createStaticActionType();

    public SymbolT createSymbolT();

    public TableCellType createTableCellType();

    public TableColumnT createTableColumnT();

    public TableSpecificationT createTableSpecificationT();

    public TextT createTextT();

    public TimeStampT createTimeStampT();

    public TimingEventType createTimingEventType();

    public TransitionT createTransitionT();

    public TransitionType createTransitionType();

    public TriggerPortType createTriggerPortType();

    public ViewInfoT createViewInfoT();

    public ViewType createViewType();

    public ViewType1 createViewType1();

    public ComponentSpecificationPackage getComponentSpecificationPackage();
}

