/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GbasetypesPackage
 *  gautosar.gcommonstructure.gconstants.GconstantsPackage
 *  gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage
 *  gautosar.gcommonstructure.gimplementation.GimplementationPackage
 *  gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorPackage
 *  gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage
 *  gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionPackage
 *  gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage
 *  gautosar.gecucdescription.GecucdescriptionPackage
 *  gautosar.gecucparameterdef.GecucparameterdefPackage
 *  gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GprimitivetypesPackage
 *  gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage
 *  gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage
 *  gautosar.ggenericstructure.gvarianthandling.GvarianthandlingPackage
 *  gautosar.gswcomponents.gcommunication.GcommunicationPackage
 *  gautosar.gswcomponents.gcomponents.GcomponentsPackage
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage
 *  gautosar.gswcomponents.gcomposition.GcompositionPackage
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage
 *  gautosar.gswcomponents.gdatatype.gunits.GunitsPackage
 *  gautosar.gswcomponents.gportinterface.GportinterfacePackage
 *  gautosar.gswcomponents.gswcimplementation.GswcimplementationPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage
 *  gautosar.gsystem.GsystemPackage
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EOperation
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.autosartoplevelstructure.AutosartoplevelstructurePackage;
import autosar40.autosartoplevelstructure.impl.AutosartoplevelstructurePackageImpl;
import autosar40.bswmodule.bswbehavior.BswBackgroundEvent;
import autosar40.bswmodule.bswbehavior.BswCalledEntity;
import autosar40.bswmodule.bswbehavior.BswEvent;
import autosar40.bswmodule.bswbehavior.BswExternalTriggerOccurredEvent;
import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswInternalTriggerOccurredEvent;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPoint;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPointRefConditional;
import autosar40.bswmodule.bswbehavior.BswInterruptCategory;
import autosar40.bswmodule.bswbehavior.BswInterruptEntity;
import autosar40.bswmodule.bswbehavior.BswModeReceiverPolicy;
import autosar40.bswmodule.bswbehavior.BswModeSenderPolicy;
import autosar40.bswmodule.bswbehavior.BswModeSwitchAckRequest;
import autosar40.bswmodule.bswbehavior.BswModeSwitchEvent;
import autosar40.bswmodule.bswbehavior.BswModeSwitchedAckEvent;
import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.bswmodule.bswbehavior.BswSchedulableEntity;
import autosar40.bswmodule.bswbehavior.BswSchedulerNamePrefix;
import autosar40.bswmodule.bswbehavior.BswServiceDependency;
import autosar40.bswmodule.bswbehavior.BswTimingEvent;
import autosar40.bswmodule.bswbehavior.BswTriggerDirectImplementation;
import autosar40.bswmodule.bswbehavior.BswbehaviorFactory;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.RoleBasedBswModuleEntryAssignment;
import autosar40.bswmodule.bswimplementation.BswimplementationPackage;
import autosar40.bswmodule.bswimplementation.impl.BswimplementationPackageImpl;
import autosar40.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar40.bswmodule.bswinterfaces.impl.BswinterfacesPackageImpl;
import autosar40.bswmodule.bswoverview.BswoverviewPackage;
import autosar40.bswmodule.bswoverview.impl.BswoverviewPackageImpl;
import autosar40.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar40.commonstructure.auxillaryobjects.impl.AuxillaryobjectsPackageImpl;
import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.axis.impl.AxisPackageImpl;
import autosar40.commonstructure.basetypes.BasetypesPackage;
import autosar40.commonstructure.basetypes.impl.BasetypesPackageImpl;
import autosar40.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar40.commonstructure.calibrationparameter.impl.CalibrationparameterPackageImpl;
import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;
import autosar40.commonstructure.calibrationvalue.impl.CalibrationvaluePackageImpl;
import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.commonstructure.constants.impl.ConstantsPackageImpl;
import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.impl.DatadefpropertiesPackageImpl;
import autosar40.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar40.commonstructure.datadictionaryproxies.impl.DatadictionaryproxiesPackageImpl;
import autosar40.commonstructure.filter.FilterPackage;
import autosar40.commonstructure.filter.impl.FilterPackageImpl;
import autosar40.commonstructure.flatmap.FlatmapPackage;
import autosar40.commonstructure.flatmap.impl.FlatmapPackageImpl;
import autosar40.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar40.commonstructure.globalconstraints.impl.GlobalconstraintsPackageImpl;
import autosar40.commonstructure.implementation.ImplementationPackage;
import autosar40.commonstructure.implementation.impl.ImplementationPackageImpl;
import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesPackage;
import autosar40.commonstructure.implementationdatatypes.impl.ImplementationdatatypesPackageImpl;
import autosar40.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar40.commonstructure.internalbehavior.impl.InternalbehaviorPackageImpl;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.commonstructure.measurementcalibrationsupport.impl.MeasurementcalibrationsupportPackageImpl;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.commonstructure.modedeclaration.impl.ModedeclarationPackageImpl;
import autosar40.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.ExecutiontimePackageImpl;
import autosar40.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar40.commonstructure.resourceconsumption.heapusage.impl.HeapusagePackageImpl;
import autosar40.commonstructure.resourceconsumption.impl.ResourceconsumptionPackageImpl;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.impl.MemorysectionusagePackageImpl;
import autosar40.commonstructure.resourceconsumption.stackusage.StackusagePackage;
import autosar40.commonstructure.resourceconsumption.stackusage.impl.StackusagePackageImpl;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.ServiceneedsPackageImpl;
import autosar40.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar40.commonstructure.serviceprocesstask.impl.ServiceprocesstaskPackageImpl;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;
import autosar40.commonstructure.swcbswmapping.impl.SwcbswmappingPackageImpl;
import autosar40.commonstructure.swclass.SwclassPackage;
import autosar40.commonstructure.swclass.impl.SwclassPackageImpl;
import autosar40.commonstructure.systemconstant.SystemconstantPackage;
import autosar40.commonstructure.systemconstant.impl.SystemconstantPackageImpl;
import autosar40.commonstructure.timing.TimingPackage;
import autosar40.commonstructure.timing.timingconstraint.TimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.impl.AgeconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.EventtriggeringconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionorderconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.impl.ExecutionorderconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutiontimeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.impl.ExecutiontimeconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.impl.TimingconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencytimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.impl.LatencytimingconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.impl.OffsetconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationtimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.impl.SynchronizationtimingconstraintPackageImpl;
import autosar40.commonstructure.timing.timingdescription.TimingdescriptionPackage;
import autosar40.commonstructure.timing.timingdescription.impl.TimingdescriptionPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.impl.TdeventbswPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TdeventbswinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.impl.TdeventbswinternalbehaviorPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TdeventcomPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.TdeventcomplexPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.impl.TdeventcomplexPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TdeventoccurrenceexpressionPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.impl.TdeventoccurrenceexpressionPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.InstancerefsPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.impl.InstancerefsPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TdeventswcinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.impl.TdeventswcinternalbehaviorPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl.TdeventvfbPackageImpl;
import autosar40.commonstructure.triggerdeclaration.TriggerdeclarationPackage;
import autosar40.commonstructure.triggerdeclaration.impl.TriggerdeclarationPackageImpl;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucdescription.impl.EcucdescriptionPackageImpl;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucparameterdefPackageImpl;
import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;
import autosar40.ecuresource.hwelementcategory.impl.HwelementcategoryPackageImpl;
import autosar40.ecuresource.impl.EcuresourcePackageImpl;
import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.abstractstructure.impl.AbstractstructurePackageImpl;
import autosar40.genericstructure.documentationonm1.Documentationonm1Package;
import autosar40.genericstructure.documentationonm1.impl.Documentationonm1PackageImpl;
import autosar40.genericstructure.formulalanguage.FormulalanguagePackage;
import autosar40.genericstructure.formulalanguage.impl.FormulalanguagePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataPackage;
import autosar40.genericstructure.generaltemplateclasses.admindata.impl.AdmindataPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyinstancerefPackage;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.impl.AnyinstancerefPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.arobject.ArobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ArobjectPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackagePackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ArpackagePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.AnnotationPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.impl.AnnotationPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl.FigurePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.FormulaPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.impl.FormulaPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.GerneralparametersPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.impl.BlockelementsPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl.ListelementsPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.NotePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.impl.NotePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl.OasisexchangetablePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.PaginationandviewPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginationandviewPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.impl.RequirementstracingPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.SynopsisPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.impl.SynopsisPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.ChaptersPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl.MsrqueryPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.InlineattributeenumsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.impl.InlineattributeenumsPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.InlinetextelementsPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.impl.InlinetextmodelPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LanguagedatamodelPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.impl.MultilanguagedataPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.impl.SinglelanguagedataPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.ElementcollectionPackage;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.impl.ElementcollectionPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.impl.EngineeringobjectPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralannotationPackage;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.impl.GeneralannotationPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiablePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionaltimePackage;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.impl.MultidimensionaltimePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.impl.PrimitivetypesPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SpecialdataPackage;
import autosar40.genericstructure.generaltemplateclasses.specialdata.impl.SpecialdataPackageImpl;
import autosar40.genericstructure.varianthandling.impl.VarianthandlingPackageImpl;
import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructurePackage;
import autosar40.standardization.abstractblueprintstructure.impl.AbstractblueprintstructurePackageImpl;
import autosar40.standardization.blueprintdedicated.genericblueprint.GenericblueprintPackage;
import autosar40.standardization.blueprintdedicated.genericblueprint.impl.GenericblueprintPackageImpl;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortinterfaceblueprintPackage;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.impl.PortinterfaceblueprintPackageImpl;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortprotoypeblueprintPackage;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.impl.PortprotoypeblueprintPackageImpl;
import autosar40.standardization.blueprintmapping.BlueprintmappingPackage;
import autosar40.standardization.blueprintmapping.impl.BlueprintmappingPackageImpl;
import autosar40.standardization.keyword.KeywordPackage;
import autosar40.standardization.keyword.impl.KeywordPackageImpl;
import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar40.swcomponent.applicationattributes.impl.ApplicationattributesPackageImpl;
import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.impl.CommunicationPackageImpl;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.impl.ComponentsPackageImpl;
import autosar40.swcomponent.composition.CompositionPackage;
import autosar40.swcomponent.composition.impl.CompositionPackageImpl;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar40.swcomponent.datatype.computationmethod.impl.ComputationmethodPackageImpl;
import autosar40.swcomponent.datatype.dataprototypes.DataprototypesPackage;
import autosar40.swcomponent.datatype.dataprototypes.impl.DataprototypesPackageImpl;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar40.swcomponent.datatype.datatypes.impl.DatatypesPackageImpl;
import autosar40.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar40.swcomponent.datatype.localconstraints.impl.LocalconstraintsPackageImpl;
import autosar40.swcomponent.datatype.recordlayout.RecordlayoutPackage;
import autosar40.swcomponent.datatype.recordlayout.impl.RecordlayoutPackageImpl;
import autosar40.swcomponent.datatype.units.UnitsPackage;
import autosar40.swcomponent.datatype.units.impl.UnitsPackageImpl;
import autosar40.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import autosar40.swcomponent.endtoendprotection.impl.EndtoendprotectionPackageImpl;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationparametervaluesPackage;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.impl.CalibrationparametervaluesPackageImpl;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationroutinemappingsetPackage;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.impl.InterpolationroutinemappingsetPackageImpl;
import autosar40.swcomponent.nvblockcomponent.NvblockcomponentPackage;
import autosar40.swcomponent.nvblockcomponent.impl.NvblockcomponentPackageImpl;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.impl.PortinterfacePackageImpl;
import autosar40.swcomponent.softwarecomponentdocumentation.SoftwarecomponentdocumentationPackage;
import autosar40.swcomponent.softwarecomponentdocumentation.impl.SoftwarecomponentdocumentationPackageImpl;
import autosar40.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar40.swcomponent.swcimplementation.impl.SwcimplementationPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.impl.DataelementsPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusagePackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.impl.InstancerefsusagePackageImpl;
import autosar40.swcomponent.swcinternalbehavior.impl.SwcinternalbehaviorPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludeddatatypesPackage;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.impl.IncludeddatatypesPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationdatadefpropsPackage;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.impl.InstantiationdatadefpropsPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.ModedeclarationgroupPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryPackage;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.impl.PerinstancememoryPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.impl.PortapioptionsPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.RteeventsPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableentityPackage;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.impl.RunnableentityPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar40.swcomponent.swcinternalbehavior.servercall.impl.ServercallPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.impl.ServicemappingPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.trigger.TriggerPackage;
import autosar40.swcomponent.swcinternalbehavior.trigger.impl.TriggerPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingPackage;
import autosar40.system.SystemPackage;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.impl.DatamappingPackageImpl;
import autosar40.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar40.system.ecuresourcemapping.impl.EcuresourcemappingPackageImpl;
import autosar40.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar40.system.fibex.fibex4can.cancommunication.impl.CancommunicationPackageImpl;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibex4can.cantopology.impl.CantopologyPackageImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl.EthernetcommunicationPackageImpl;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.impl.EthernettopologyPackageImpl;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.impl.FlexraycommunicationPackageImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexraytopologyPackageImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LincommunicationPackageImpl;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LintopologyPackageImpl;
import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar40.system.fibex.fibex4multiplatform.impl.Fibex4multiplatformPackageImpl;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcancommunicationPackage;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.impl.TtcancommunicationPackageImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.impl.TtcantopologyPackageImpl;
import autosar40.system.fibex.fibexcore.FibexcorePackage;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.impl.CorecommunicationPackageImpl;
import autosar40.system.fibex.fibexcore.corecommunication.timing.impl.TimingPackageImpl;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CoretopologyPackageImpl;
import autosar40.system.fibex.fibexcore.impl.FibexcorePackageImpl;
import autosar40.system.impl.SystemPackageImpl;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.impl.NetworkmanagementPackageImpl;
import autosar40.system.pncmapping.PncmappingPackage;
import autosar40.system.pncmapping.impl.PncmappingPackageImpl;
import autosar40.system.signalpaths.SignalpathsPackage;
import autosar40.system.signalpaths.impl.SignalpathsPackageImpl;
import autosar40.system.swmapping.SwmappingPackage;
import autosar40.system.swmapping.impl.SwmappingPackageImpl;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import autosar40.system.transportprotocols.impl.TransportprotocolsPackageImpl;
import gautosar.gcommonstructure.gbasetypes.GbasetypesPackage;
import gautosar.gcommonstructure.gconstants.GconstantsPackage;
import gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage;
import gautosar.gcommonstructure.gimplementation.GimplementationPackage;
import gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorPackage;
import gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage;
import gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionPackage;
import gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GecucparameterdefPackage;
import gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GprimitivetypesPackage;
import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;
import gautosar.ggenericstructure.gvarianthandling.GvarianthandlingPackage;
import gautosar.gswcomponents.gcommunication.GcommunicationPackage;
import gautosar.gswcomponents.gcomponents.GcomponentsPackage;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage;
import gautosar.gswcomponents.gcomposition.GcompositionPackage;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage;
import gautosar.gswcomponents.gdatatype.gunits.GunitsPackage;
import gautosar.gswcomponents.gportinterface.GportinterfacePackage;
import gautosar.gswcomponents.gswcimplementation.GswcimplementationPackage;
import gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryPackage;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage;
import gautosar.gsystem.GsystemPackage;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class BswbehaviorPackageImpl
extends EPackageImpl
implements BswbehaviorPackage {
    private EClass bswBackgroundEventEClass = null;
    private EClass bswEventEClass = null;
    private EClass bswSchedulableEntityEClass = null;
    private EClass bswModuleEntityEClass = null;
    private EClass bswInternalTriggeringPointRefConditionalEClass = null;
    private EClass bswInternalTriggeringPointEClass = null;
    private EClass bswSchedulerNamePrefixEClass = null;
    private EClass bswInternalBehaviorEClass = null;
    private EClass bswModeReceiverPolicyEClass = null;
    private EClass bswTriggerDirectImplementationEClass = null;
    private EClass bswServiceDependencyEClass = null;
    private EClass roleBasedBswModuleEntryAssignmentEClass = null;
    private EClass bswModeSenderPolicyEClass = null;
    private EClass bswModeSwitchAckRequestEClass = null;
    private EClass bswCalledEntityEClass = null;
    private EClass bswExternalTriggerOccurredEventEClass = null;
    private EClass bswInternalTriggerOccurredEventEClass = null;
    private EClass bswInterruptEntityEClass = null;
    private EClass bswModeSwitchedAckEventEClass = null;
    private EClass bswModeSwitchEventEClass = null;
    private EClass bswTimingEventEClass = null;
    private EEnum bswInterruptCategoryEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private BswbehaviorPackageImpl() {
        super("http://autosar.org/schema/r4.0/autosar40/bm/bb", (EFactory)BswbehaviorFactory.eINSTANCE);
    }

    public static BswbehaviorPackage init() {
        if (isInited) {
            return (BswbehaviorPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bb");
        }
        BswbehaviorPackageImpl theBswbehaviorPackage = (BswbehaviorPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/bm/bb") instanceof BswbehaviorPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/bm/bb") : new BswbehaviorPackageImpl());
        isInited = true;
        gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage.eINSTANCE.eClass();
        GinfrastructurePackage.eINSTANCE.eClass();
        GdocumentationPackage.eINSTANCE.eClass();
        GmultilanguagedataPackage.eINSTANCE.eClass();
        GlanguagedatamodelPackage.eINSTANCE.eClass();
        GinlinetextmodelPackage.eINSTANCE.eClass();
        GprimitivetypesPackage.eINSTANCE.eClass();
        GvarianthandlingPackage.eINSTANCE.eClass();
        GformulalanguagePackage.eINSTANCE.eClass();
        GecucparameterdefPackage.eINSTANCE.eClass();
        GecucdescriptionPackage.eINSTANCE.eClass();
        GcomponentsPackage.eINSTANCE.eClass();
        GinstancerefsPackage.eINSTANCE.eClass();
        GportinterfacePackage.eINSTANCE.eClass();
        GdatatypesPackage.eINSTANCE.eClass();
        GlocalconstraintsPackage.eINSTANCE.eClass();
        GdataprototypesPackage.eINSTANCE.eClass();
        GcomputationmethodPackage.eINSTANCE.eClass();
        GunitsPackage.eINSTANCE.eClass();
        GcompositionPackage.eINSTANCE.eClass();
        gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage.eINSTANCE.eClass();
        GswcinternalbehaviorPackage.eINSTANCE.eClass();
        GrteeventsPackage.eINSTANCE.eClass();
        GdataelementsPackage.eINSTANCE.eClass();
        GperinstancememoryPackage.eINSTANCE.eClass();
        GmodedeclarationgroupPackage.eINSTANCE.eClass();
        GservercallPackage.eINSTANCE.eClass();
        GswcimplementationPackage.eINSTANCE.eClass();
        GcommunicationPackage.eINSTANCE.eClass();
        GimplementationPackage.eINSTANCE.eClass();
        GresourceconsumptionPackage.eINSTANCE.eClass();
        GmodedeclarationPackage.eINSTANCE.eClass();
        GinternalbehaviorPackage.eINSTANCE.eClass();
        GconstantsPackage.eINSTANCE.eClass();
        GdatadefpropertiesPackage.eINSTANCE.eClass();
        GbasetypesPackage.eINSTANCE.eClass();
        GsystemconstantPackage.eINSTANCE.eClass();
        GsystemPackage.eINSTANCE.eClass();
        EcorePackage.eINSTANCE.eClass();
        EcuresourcePackageImpl theEcuresourcePackage = (EcuresourcePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/er") instanceof EcuresourcePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/er") : EcuresourcePackage.eINSTANCE);
        HwelementcategoryPackageImpl theHwelementcategoryPackage = (HwelementcategoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/er/hec") instanceof HwelementcategoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/er/hec") : HwelementcategoryPackage.eINSTANCE);
        FormulalanguagePackageImpl theFormulalanguagePackage = (FormulalanguagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/fl") instanceof FormulalanguagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/fl") : FormulalanguagePackage.eINSTANCE);
        AbstractstructurePackageImpl theAbstractstructurePackage = (AbstractstructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/as") instanceof AbstractstructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/as") : AbstractstructurePackage.eINSTANCE);
        VarianthandlingPackageImpl theVarianthandlingPackage = (VarianthandlingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/vh") instanceof VarianthandlingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/vh") : autosar40.genericstructure.varianthandling.VarianthandlingPackage.eINSTANCE);
        Documentationonm1PackageImpl theDocumentationonm1Package = (Documentationonm1PackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/dom") instanceof Documentationonm1PackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/dom") : Documentationonm1Package.eINSTANCE);
        IdentifiablePackageImpl theIdentifiablePackage = (IdentifiablePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/i") instanceof IdentifiablePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/i") : IdentifiablePackage.eINSTANCE);
        ChaptersPackageImpl theChaptersPackage = (ChaptersPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/c") instanceof ChaptersPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/c") : ChaptersPackage.eINSTANCE);
        MsrqueryPackageImpl theMsrqueryPackage = (MsrqueryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/mq") instanceof MsrqueryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/mq") : MsrqueryPackage.eINSTANCE);
        AnnotationPackageImpl theAnnotationPackage = (AnnotationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/a") instanceof AnnotationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/a") : AnnotationPackage.eINSTANCE);
        InlineattributeenumsPackageImpl theInlineattributeenumsPackage = (InlineattributeenumsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/iae") instanceof InlineattributeenumsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/iae") : InlineattributeenumsPackage.eINSTANCE);
        InlinetextelementsPackageImpl theInlinetextelementsPackage = (InlinetextelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ite") instanceof InlinetextelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ite") : InlinetextelementsPackage.eINSTANCE);
        SinglelanguagedataPackageImpl theSinglelanguagedataPackage = (SinglelanguagedataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/sld") instanceof SinglelanguagedataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/sld") : SinglelanguagedataPackage.eINSTANCE);
        InlinetextmodelPackageImpl theInlinetextmodelPackage = (InlinetextmodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/itm") instanceof InlinetextmodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/itm") : InlinetextmodelPackage.eINSTANCE);
        LanguagedatamodelPackageImpl theLanguagedatamodelPackage = (LanguagedatamodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ldm") instanceof LanguagedatamodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ldm") : LanguagedatamodelPackage.eINSTANCE);
        MultilanguagedataPackageImpl theMultilanguagedataPackage = (MultilanguagedataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/md") instanceof MultilanguagedataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/md") : MultilanguagedataPackage.eINSTANCE);
        BlockelementsPackageImpl theBlockelementsPackage = (BlockelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be") instanceof BlockelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be") : BlockelementsPackage.eINSTANCE);
        PaginationandviewPackageImpl thePaginationandviewPackage = (PaginationandviewPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/pav") instanceof PaginationandviewPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/pav") : PaginationandviewPackage.eINSTANCE);
        OasisexchangetablePackageImpl theOasisexchangetablePackage = (OasisexchangetablePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/oet") instanceof OasisexchangetablePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/oet") : OasisexchangetablePackage.eINSTANCE);
        FormulaPackageImpl theFormulaPackage = (FormulaPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/formula") instanceof FormulaPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/formula") : FormulaPackage.eINSTANCE);
        FigurePackageImpl theFigurePackage = (FigurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/figure") instanceof FigurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/figure") : FigurePackage.eINSTANCE);
        RequirementstracingPackageImpl theRequirementstracingPackage = (RequirementstracingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/rt") instanceof RequirementstracingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/rt") : RequirementstracingPackage.eINSTANCE);
        SynopsisPackageImpl theSynopsisPackage = (SynopsisPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/s") instanceof SynopsisPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/s") : SynopsisPackage.eINSTANCE);
        GerneralparametersPackageImpl theGerneralparametersPackage = (GerneralparametersPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/gp") instanceof GerneralparametersPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/gp") : GerneralparametersPackage.eINSTANCE);
        ListelementsPackageImpl theListelementsPackage = (ListelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/le") instanceof ListelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/le") : ListelementsPackage.eINSTANCE);
        NotePackageImpl theNotePackage = (NotePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/n") instanceof NotePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/n") : NotePackage.eINSTANCE);
        PrimitivetypesPackageImpl thePrimitivetypesPackage = (PrimitivetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt") instanceof PrimitivetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt") : PrimitivetypesPackage.eINSTANCE);
        AnyinstancerefPackageImpl theAnyinstancerefPackage = (AnyinstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/air") instanceof AnyinstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/air") : AnyinstancerefPackage.eINSTANCE);
        ArpackagePackageImpl theArpackagePackage = (ArpackagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/arp") instanceof ArpackagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/arp") : ArpackagePackage.eINSTANCE);
        ElementcollectionPackageImpl theElementcollectionPackage = (ElementcollectionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ec") instanceof ElementcollectionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ec") : ElementcollectionPackage.eINSTANCE);
        GeneralannotationPackageImpl theGeneralannotationPackage = (GeneralannotationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ga") instanceof GeneralannotationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ga") : GeneralannotationPackage.eINSTANCE);
        AdmindataPackageImpl theAdmindataPackage = (AdmindataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ad") instanceof AdmindataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ad") : AdmindataPackage.eINSTANCE);
        SpecialdataPackageImpl theSpecialdataPackage = (SpecialdataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/sd") instanceof SpecialdataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/sd") : SpecialdataPackage.eINSTANCE);
        MultidimensionaltimePackageImpl theMultidimensionaltimePackage = (MultidimensionaltimePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/mt") instanceof MultidimensionaltimePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/mt") : MultidimensionaltimePackage.eINSTANCE);
        EngineeringobjectPackageImpl theEngineeringobjectPackage = (EngineeringobjectPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/eo") instanceof EngineeringobjectPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/eo") : EngineeringobjectPackage.eINSTANCE);
        ArobjectPackageImpl theArobjectPackage = (ArobjectPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ao") instanceof ArobjectPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ao") : ArobjectPackage.eINSTANCE);
        FilterPackageImpl theFilterPackage = (FilterPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/f") instanceof FilterPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/f") : FilterPackage.eINSTANCE);
        FlatmapPackageImpl theFlatmapPackage = (FlatmapPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/fm") instanceof FlatmapPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/fm") : FlatmapPackage.eINSTANCE);
        DatadefpropertiesPackageImpl theDatadefpropertiesPackage = (DatadefpropertiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ddp") instanceof DatadefpropertiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ddp") : DatadefpropertiesPackage.eINSTANCE);
        DatadictionaryproxiesPackageImpl theDatadictionaryproxiesPackage = (DatadictionaryproxiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/dp") instanceof DatadictionaryproxiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/dp") : DatadictionaryproxiesPackage.eINSTANCE);
        MeasurementcalibrationsupportPackageImpl theMeasurementcalibrationsupportPackage = (MeasurementcalibrationsupportPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/mcs") instanceof MeasurementcalibrationsupportPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/mcs") : MeasurementcalibrationsupportPackage.eINSTANCE);
        ImplementationdatatypesPackageImpl theImplementationdatatypesPackage = (ImplementationdatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/idt") instanceof ImplementationdatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/idt") : ImplementationdatatypesPackage.eINSTANCE);
        InternalbehaviorPackageImpl theInternalbehaviorPackage = (InternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ib") instanceof InternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ib") : InternalbehaviorPackage.eINSTANCE);
        ModedeclarationPackageImpl theModedeclarationPackage = (ModedeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/md") instanceof ModedeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/md") : ModedeclarationPackage.eINSTANCE);
        AxisPackageImpl theAxisPackage = (AxisPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/a") instanceof AxisPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/a") : AxisPackage.eINSTANCE);
        CalibrationvaluePackageImpl theCalibrationvaluePackage = (CalibrationvaluePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/cv") instanceof CalibrationvaluePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/cv") : CalibrationvaluePackage.eINSTANCE);
        CalibrationparameterPackageImpl theCalibrationparameterPackage = (CalibrationparameterPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/cp") instanceof CalibrationparameterPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/cp") : CalibrationparameterPackage.eINSTANCE);
        BasetypesPackageImpl theBasetypesPackage = (BasetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/bt") instanceof BasetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/bt") : BasetypesPackage.eINSTANCE);
        GlobalconstraintsPackageImpl theGlobalconstraintsPackage = (GlobalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/gc") instanceof GlobalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/gc") : GlobalconstraintsPackage.eINSTANCE);
        AuxillaryobjectsPackageImpl theAuxillaryobjectsPackage = (AuxillaryobjectsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ao") instanceof AuxillaryobjectsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ao") : AuxillaryobjectsPackage.eINSTANCE);
        ConstantsPackageImpl theConstantsPackage = (ConstantsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/c") instanceof ConstantsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/c") : ConstantsPackage.eINSTANCE);
        TriggerdeclarationPackageImpl theTriggerdeclarationPackage = (TriggerdeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/td") instanceof TriggerdeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/td") : TriggerdeclarationPackage.eINSTANCE);
        ImplementationPackageImpl theImplementationPackage = (ImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/implementation") instanceof ImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/implementation") : ImplementationPackage.eINSTANCE);
        SwcbswmappingPackageImpl theSwcbswmappingPackage = (SwcbswmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sbm") instanceof SwcbswmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sbm") : SwcbswmappingPackage.eINSTANCE);
        ServiceneedsPackageImpl theServiceneedsPackage = (ServiceneedsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sn") instanceof ServiceneedsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sn") : ServiceneedsPackage.eINSTANCE);
        ResourceconsumptionPackageImpl theResourceconsumptionPackage = (ResourceconsumptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc") instanceof ResourceconsumptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc") : ResourceconsumptionPackage.eINSTANCE);
        MemorysectionusagePackageImpl theMemorysectionusagePackage = (MemorysectionusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/msu") instanceof MemorysectionusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/msu") : MemorysectionusagePackage.eINSTANCE);
        StackusagePackageImpl theStackusagePackage = (StackusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/su") instanceof StackusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/su") : StackusagePackage.eINSTANCE);
        HeapusagePackageImpl theHeapusagePackage = (HeapusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/hu") instanceof HeapusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/hu") : HeapusagePackage.eINSTANCE);
        ExecutiontimePackageImpl theExecutiontimePackage = (ExecutiontimePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/et") instanceof ExecutiontimePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/et") : ExecutiontimePackage.eINSTANCE);
        ServiceprocesstaskPackageImpl theServiceprocesstaskPackage = (ServiceprocesstaskPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/spt") instanceof ServiceprocesstaskPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/spt") : ServiceprocesstaskPackage.eINSTANCE);
        SwclassPackageImpl theSwclassPackage = (SwclassPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sclass") instanceof SwclassPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sclass") : SwclassPackage.eINSTANCE);
        autosar40.commonstructure.timing.impl.TimingPackageImpl theTimingPackage = (autosar40.commonstructure.timing.impl.TimingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t") instanceof autosar40.commonstructure.timing.impl.TimingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t") : TimingPackage.eINSTANCE);
        TimingconstraintPackageImpl theTimingconstraintPackage = (TimingconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc") instanceof TimingconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc") : TimingconstraintPackage.eINSTANCE);
        AgeconstraintPackageImpl theAgeconstraintPackage = (AgeconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ac") instanceof AgeconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ac") : AgeconstraintPackage.eINSTANCE);
        ExecutiontimeconstraintPackageImpl theExecutiontimeconstraintPackage = (ExecutiontimeconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etimeconstraint") instanceof ExecutiontimeconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etimeconstraint") : ExecutiontimeconstraintPackage.eINSTANCE);
        EventtriggeringconstraintPackageImpl theEventtriggeringconstraintPackage = (EventtriggeringconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etriggeringconstraint") instanceof EventtriggeringconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etriggeringconstraint") : EventtriggeringconstraintPackage.eINSTANCE);
        LatencytimingconstraintPackageImpl theLatencytimingconstraintPackage = (LatencytimingconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ltc") instanceof LatencytimingconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ltc") : LatencytimingconstraintPackage.eINSTANCE);
        OffsetconstraintPackageImpl theOffsetconstraintPackage = (OffsetconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/oc") instanceof OffsetconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/oc") : OffsetconstraintPackage.eINSTANCE);
        SynchronizationtimingconstraintPackageImpl theSynchronizationtimingconstraintPackage = (SynchronizationtimingconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/stc") instanceof SynchronizationtimingconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/stc") : SynchronizationtimingconstraintPackage.eINSTANCE);
        ExecutionorderconstraintPackageImpl theExecutionorderconstraintPackage = (ExecutionorderconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/eoc") instanceof ExecutionorderconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/eoc") : ExecutionorderconstraintPackage.eINSTANCE);
        TimingdescriptionPackageImpl theTimingdescriptionPackage = (TimingdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td") instanceof TimingdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td") : TimingdescriptionPackage.eINSTANCE);
        TdeventoccurrenceexpressionPackageImpl theTdeventoccurrenceexpressionPackage = (TdeventoccurrenceexpressionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe") instanceof TdeventoccurrenceexpressionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe") : TdeventoccurrenceexpressionPackage.eINSTANCE);
        autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl.InstancerefsusagePackageImpl theInstancerefsusagePackage = (autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl.InstancerefsusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/iru") instanceof autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl.InstancerefsusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/iru") : autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.InstancerefsusagePackage.eINSTANCE);
        InstancerefsPackageImpl theInstancerefsPackage = (InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/ir") instanceof InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/ir") : InstancerefsPackage.eINSTANCE);
        TdeventswcinternalbehaviorPackageImpl theTdeventswcinternalbehaviorPackage = (TdeventswcinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdesib") instanceof TdeventswcinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdesib") : TdeventswcinternalbehaviorPackage.eINSTANCE);
        TdeventcomPackageImpl theTdeventcomPackage = (TdeventcomPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecom") instanceof TdeventcomPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecom") : TdeventcomPackage.eINSTANCE);
        TdeventbswPackageImpl theTdeventbswPackage = (TdeventbswPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeb") instanceof TdeventbswPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeb") : TdeventbswPackage.eINSTANCE);
        TdeventbswinternalbehaviorPackageImpl theTdeventbswinternalbehaviorPackage = (TdeventbswinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdebib") instanceof TdeventbswinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdebib") : TdeventbswinternalbehaviorPackage.eINSTANCE);
        TdeventcomplexPackageImpl theTdeventcomplexPackage = (TdeventcomplexPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecomplex") instanceof TdeventcomplexPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecomplex") : TdeventcomplexPackage.eINSTANCE);
        TdeventvfbPackageImpl theTdeventvfbPackage = (TdeventvfbPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdev") instanceof TdeventvfbPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdev") : TdeventvfbPackage.eINSTANCE);
        SystemconstantPackageImpl theSystemconstantPackage = (SystemconstantPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sconstant") instanceof SystemconstantPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sconstant") : SystemconstantPackage.eINSTANCE);
        EndtoendprotectionPackageImpl theEndtoendprotectionPackage = (EndtoendprotectionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/etep") instanceof EndtoendprotectionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/etep") : EndtoendprotectionPackage.eINSTANCE);
        InterpolationroutinemappingsetPackageImpl theInterpolationroutinemappingsetPackage = (InterpolationroutinemappingsetPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/mac/irms") instanceof InterpolationroutinemappingsetPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/mac/irms") : InterpolationroutinemappingsetPackage.eINSTANCE);
        CalibrationparametervaluesPackageImpl theCalibrationparametervaluesPackage = (CalibrationparametervaluesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/mac/cpv") instanceof CalibrationparametervaluesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/mac/cpv") : CalibrationparametervaluesPackage.eINSTANCE);
        DatatypesPackageImpl theDatatypesPackage = (DatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/d") instanceof DatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/d") : DatatypesPackage.eINSTANCE);
        RecordlayoutPackageImpl theRecordlayoutPackage = (RecordlayoutPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/rl") instanceof RecordlayoutPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/rl") : RecordlayoutPackage.eINSTANCE);
        UnitsPackageImpl theUnitsPackage = (UnitsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/u") instanceof UnitsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/u") : UnitsPackage.eINSTANCE);
        LocalconstraintsPackageImpl theLocalconstraintsPackage = (LocalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/lc") instanceof LocalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/lc") : LocalconstraintsPackage.eINSTANCE);
        ComputationmethodPackageImpl theComputationmethodPackage = (ComputationmethodPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/cm") instanceof ComputationmethodPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/cm") : ComputationmethodPackage.eINSTANCE);
        DataprototypesPackageImpl theDataprototypesPackage = (DataprototypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/dp") instanceof DataprototypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/dp") : DataprototypesPackage.eINSTANCE);
        SwcinternalbehaviorPackageImpl theSwcinternalbehaviorPackage = (SwcinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib") instanceof SwcinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib") : SwcinternalbehaviorPackage.eINSTANCE);
        ServicemappingPackageImpl theServicemappingPackage = (ServicemappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/smapping") instanceof ServicemappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/smapping") : ServicemappingPackage.eINSTANCE);
        DataelementsPackageImpl theDataelementsPackage = (DataelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/de") instanceof DataelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/de") : DataelementsPackage.eINSTANCE);
        InstancerefsusagePackageImpl theInstancerefsusagePackage_1 = (InstancerefsusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/de/iru") instanceof InstancerefsusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/de/iru") : InstancerefsusagePackage.eINSTANCE);
        PerinstancememoryPackageImpl thePerinstancememoryPackage = (PerinstancememoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/pim") instanceof PerinstancememoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/pim") : PerinstancememoryPackage.eINSTANCE);
        InstantiationdatadefpropsPackageImpl theInstantiationdatadefpropsPackage = (InstantiationdatadefpropsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/iddp") instanceof InstantiationdatadefpropsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/iddp") : InstantiationdatadefpropsPackage.eINSTANCE);
        PortapioptionsPackageImpl thePortapioptionsPackage = (PortapioptionsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/papio") instanceof PortapioptionsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/papio") : PortapioptionsPackage.eINSTANCE);
        RteeventsPackageImpl theRteeventsPackage = (RteeventsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/rtee") instanceof RteeventsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/rtee") : RteeventsPackage.eINSTANCE);
        TriggerPackageImpl theTriggerPackage = (TriggerPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/t") instanceof TriggerPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/t") : TriggerPackage.eINSTANCE);
        ModedeclarationgroupPackageImpl theModedeclarationgroupPackage = (ModedeclarationgroupPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/mdg") instanceof ModedeclarationgroupPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/mdg") : ModedeclarationgroupPackage.eINSTANCE);
        ServercallPackageImpl theServercallPackage = (ServercallPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/sc") instanceof ServercallPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/sc") : ServercallPackage.eINSTANCE);
        autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VarianthandlingPackageImpl theVarianthandlingPackage_1 = (autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VarianthandlingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/vh") instanceof autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VarianthandlingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/vh") : VarianthandlingPackage.eINSTANCE);
        IncludeddatatypesPackageImpl theIncludeddatatypesPackage = (IncludeddatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/idt") instanceof IncludeddatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/idt") : IncludeddatatypesPackage.eINSTANCE);
        RunnableentityPackageImpl theRunnableentityPackage = (RunnableentityPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/re") instanceof RunnableentityPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/re") : RunnableentityPackage.eINSTANCE);
        ComponentsPackageImpl theComponentsPackage = (ComponentsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/components") instanceof ComponentsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/components") : ComponentsPackage.eINSTANCE);
        autosar40.swcomponent.components.instancerefs.impl.InstancerefsPackageImpl theInstancerefsPackage_1 = (autosar40.swcomponent.components.instancerefs.impl.InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/components/ir") instanceof autosar40.swcomponent.components.instancerefs.impl.InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/components/ir") : autosar40.swcomponent.components.instancerefs.InstancerefsPackage.eINSTANCE);
        CommunicationPackageImpl theCommunicationPackage = (CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/communication") instanceof CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/communication") : CommunicationPackage.eINSTANCE);
        CompositionPackageImpl theCompositionPackage = (CompositionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/composition") instanceof CompositionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/composition") : CompositionPackage.eINSTANCE);
        autosar40.swcomponent.composition.instancerefs.impl.InstancerefsPackageImpl theInstancerefsPackage_2 = (autosar40.swcomponent.composition.instancerefs.impl.InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/composition/ir") instanceof autosar40.swcomponent.composition.instancerefs.impl.InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/composition/ir") : autosar40.swcomponent.composition.instancerefs.InstancerefsPackage.eINSTANCE);
        SoftwarecomponentdocumentationPackageImpl theSoftwarecomponentdocumentationPackage = (SoftwarecomponentdocumentationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/scd") instanceof SoftwarecomponentdocumentationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/scd") : SoftwarecomponentdocumentationPackage.eINSTANCE);
        NvblockcomponentPackageImpl theNvblockcomponentPackage = (NvblockcomponentPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/nbc") instanceof NvblockcomponentPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/nbc") : NvblockcomponentPackage.eINSTANCE);
        ApplicationattributesPackageImpl theApplicationattributesPackage = (ApplicationattributesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/aa") instanceof ApplicationattributesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/aa") : ApplicationattributesPackage.eINSTANCE);
        SwcimplementationPackageImpl theSwcimplementationPackage = (SwcimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/si") instanceof SwcimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/si") : SwcimplementationPackage.eINSTANCE);
        PortinterfacePackageImpl thePortinterfacePackage = (PortinterfacePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/pi") instanceof PortinterfacePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/pi") : PortinterfacePackage.eINSTANCE);
        autosar40.swcomponent.portinterface.instancerefs.impl.InstancerefsPackageImpl theInstancerefsPackage_3 = (autosar40.swcomponent.portinterface.instancerefs.impl.InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/pi/ir") instanceof autosar40.swcomponent.portinterface.instancerefs.impl.InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/pi/ir") : autosar40.swcomponent.portinterface.instancerefs.InstancerefsPackage.eINSTANCE);
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/ecucd") : EcucdescriptionPackage.eINSTANCE);
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/ecucpd") : EcucparameterdefPackage.eINSTANCE);
        BswoverviewPackageImpl theBswoverviewPackage = (BswoverviewPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bo") instanceof BswoverviewPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bo") : BswoverviewPackage.eINSTANCE);
        autosar40.bswmodule.bswoverview.instancerefs.impl.InstancerefsPackageImpl theInstancerefsPackage_4 = (autosar40.bswmodule.bswoverview.instancerefs.impl.InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bo/ir") instanceof autosar40.bswmodule.bswoverview.instancerefs.impl.InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bo/ir") : autosar40.bswmodule.bswoverview.instancerefs.InstancerefsPackage.eINSTANCE);
        BswimplementationPackageImpl theBswimplementationPackage = (BswimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bimplementation") instanceof BswimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bimplementation") : BswimplementationPackage.eINSTANCE);
        BswinterfacesPackageImpl theBswinterfacesPackage = (BswinterfacesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/binterfaces") instanceof BswinterfacesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/binterfaces") : BswinterfacesPackage.eINSTANCE);
        SystemPackageImpl theSystemPackage = (SystemPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system") instanceof SystemPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system") : SystemPackage.eINSTANCE);
        SwmappingPackageImpl theSwmappingPackage = (SwmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/sw") instanceof SwmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/sw") : SwmappingPackage.eINSTANCE);
        autosar40.system.instancerefs.impl.InstancerefsPackageImpl theInstancerefsPackage_5 = (autosar40.system.instancerefs.impl.InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/ir") instanceof autosar40.system.instancerefs.impl.InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/ir") : autosar40.system.instancerefs.InstancerefsPackage.eINSTANCE);
        CancommunicationPackageImpl theCancommunicationPackage = (CancommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcan/cc") instanceof CancommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcan/cc") : CancommunicationPackage.eINSTANCE);
        CantopologyPackageImpl theCantopologyPackage = (CantopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcan/ct") instanceof CantopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcan/ct") : CantopologyPackage.eINSTANCE);
        TtcantopologyPackageImpl theTtcantopologyPackage = (TtcantopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ft/tt") instanceof TtcantopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ft/tt") : TtcantopologyPackage.eINSTANCE);
        TtcancommunicationPackageImpl theTtcancommunicationPackage = (TtcancommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ft/tc") instanceof TtcancommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ft/tc") : TtcancommunicationPackage.eINSTANCE);
        EthernetcommunicationPackageImpl theEthernetcommunicationPackage = (EthernetcommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fe/ec") instanceof EthernetcommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fe/ec") : EthernetcommunicationPackage.eINSTANCE);
        EthernettopologyPackageImpl theEthernettopologyPackage = (EthernettopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fe/et") instanceof EthernettopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fe/et") : EthernettopologyPackage.eINSTANCE);
        FlexraycommunicationPackageImpl theFlexraycommunicationPackage = (FlexraycommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ff/fc") instanceof FlexraycommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ff/fc") : FlexraycommunicationPackage.eINSTANCE);
        FlexraytopologyPackageImpl theFlexraytopologyPackage = (FlexraytopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ff/ft") instanceof FlexraytopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ff/ft") : FlexraytopologyPackage.eINSTANCE);
        LincommunicationPackageImpl theLincommunicationPackage = (LincommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fl/lc") instanceof LincommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fl/lc") : LincommunicationPackage.eINSTANCE);
        LintopologyPackageImpl theLintopologyPackage = (LintopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fl/lt") instanceof LintopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fl/lt") : LintopologyPackage.eINSTANCE);
        Fibex4multiplatformPackageImpl theFibex4multiplatformPackage = (Fibex4multiplatformPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fm") instanceof Fibex4multiplatformPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fm") : Fibex4multiplatformPackage.eINSTANCE);
        FibexcorePackageImpl theFibexcorePackage = (FibexcorePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore") instanceof FibexcorePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore") : FibexcorePackage.eINSTANCE);
        CorecommunicationPackageImpl theCorecommunicationPackage = (CorecommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/cc") instanceof CorecommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/cc") : CorecommunicationPackage.eINSTANCE);
        TimingPackageImpl theTimingPackage_1 = (TimingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/cc/t") instanceof TimingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/cc/t") : autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage.eINSTANCE);
        CoretopologyPackageImpl theCoretopologyPackage = (CoretopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/ct") instanceof CoretopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/ct") : CoretopologyPackage.eINSTANCE);
        DatamappingPackageImpl theDatamappingPackage = (DatamappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/dm") instanceof DatamappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/dm") : DatamappingPackage.eINSTANCE);
        TransportprotocolsPackageImpl theTransportprotocolsPackage = (TransportprotocolsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/tp") instanceof TransportprotocolsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/tp") : TransportprotocolsPackage.eINSTANCE);
        SignalpathsPackageImpl theSignalpathsPackage = (SignalpathsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/sp") instanceof SignalpathsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/sp") : SignalpathsPackage.eINSTANCE);
        EcuresourcemappingPackageImpl theEcuresourcemappingPackage = (EcuresourcemappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/ecurm") instanceof EcuresourcemappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/ecurm") : EcuresourcemappingPackage.eINSTANCE);
        PncmappingPackageImpl thePncmappingPackage = (PncmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/pm") instanceof PncmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/pm") : PncmappingPackage.eINSTANCE);
        NetworkmanagementPackageImpl theNetworkmanagementPackage = (NetworkmanagementPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/nm") instanceof NetworkmanagementPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/nm") : NetworkmanagementPackage.eINSTANCE);
        autosar40.system.endtoendprotection.impl.EndtoendprotectionPackageImpl theEndtoendprotectionPackage_1 = (autosar40.system.endtoendprotection.impl.EndtoendprotectionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/etep") instanceof autosar40.system.endtoendprotection.impl.EndtoendprotectionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/etep") : autosar40.system.endtoendprotection.EndtoendprotectionPackage.eINSTANCE);
        GenericblueprintPackageImpl theGenericblueprintPackage = (GenericblueprintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/gb") instanceof GenericblueprintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/gb") : GenericblueprintPackage.eINSTANCE);
        PortinterfaceblueprintPackageImpl thePortinterfaceblueprintPackage = (PortinterfaceblueprintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/pib") instanceof PortinterfaceblueprintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/pib") : PortinterfaceblueprintPackage.eINSTANCE);
        PortprotoypeblueprintPackageImpl thePortprotoypeblueprintPackage = (PortprotoypeblueprintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/ppb") instanceof PortprotoypeblueprintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/ppb") : PortprotoypeblueprintPackage.eINSTANCE);
        BlueprintmappingPackageImpl theBlueprintmappingPackage = (BlueprintmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bm") instanceof BlueprintmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bm") : BlueprintmappingPackage.eINSTANCE);
        KeywordPackageImpl theKeywordPackage = (KeywordPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/k") instanceof KeywordPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/k") : KeywordPackage.eINSTANCE);
        AbstractblueprintstructurePackageImpl theAbstractblueprintstructurePackage = (AbstractblueprintstructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/abs") instanceof AbstractblueprintstructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/abs") : AbstractblueprintstructurePackage.eINSTANCE);
        AutosartoplevelstructurePackageImpl theAutosartoplevelstructurePackage = (AutosartoplevelstructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/atls") instanceof AutosartoplevelstructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/atls") : AutosartoplevelstructurePackage.eINSTANCE);
        theBswbehaviorPackage.createPackageContents();
        theEcuresourcePackage.createPackageContents();
        theHwelementcategoryPackage.createPackageContents();
        theFormulalanguagePackage.createPackageContents();
        theAbstractstructurePackage.createPackageContents();
        theVarianthandlingPackage.createPackageContents();
        theDocumentationonm1Package.createPackageContents();
        theIdentifiablePackage.createPackageContents();
        theChaptersPackage.createPackageContents();
        theMsrqueryPackage.createPackageContents();
        theAnnotationPackage.createPackageContents();
        theInlineattributeenumsPackage.createPackageContents();
        theInlinetextelementsPackage.createPackageContents();
        theSinglelanguagedataPackage.createPackageContents();
        theInlinetextmodelPackage.createPackageContents();
        theLanguagedatamodelPackage.createPackageContents();
        theMultilanguagedataPackage.createPackageContents();
        theBlockelementsPackage.createPackageContents();
        thePaginationandviewPackage.createPackageContents();
        theOasisexchangetablePackage.createPackageContents();
        theFormulaPackage.createPackageContents();
        theFigurePackage.createPackageContents();
        theRequirementstracingPackage.createPackageContents();
        theSynopsisPackage.createPackageContents();
        theGerneralparametersPackage.createPackageContents();
        theListelementsPackage.createPackageContents();
        theNotePackage.createPackageContents();
        thePrimitivetypesPackage.createPackageContents();
        theAnyinstancerefPackage.createPackageContents();
        theArpackagePackage.createPackageContents();
        theElementcollectionPackage.createPackageContents();
        theGeneralannotationPackage.createPackageContents();
        theAdmindataPackage.createPackageContents();
        theSpecialdataPackage.createPackageContents();
        theMultidimensionaltimePackage.createPackageContents();
        theEngineeringobjectPackage.createPackageContents();
        theArobjectPackage.createPackageContents();
        theFilterPackage.createPackageContents();
        theFlatmapPackage.createPackageContents();
        theDatadefpropertiesPackage.createPackageContents();
        theDatadictionaryproxiesPackage.createPackageContents();
        theMeasurementcalibrationsupportPackage.createPackageContents();
        theImplementationdatatypesPackage.createPackageContents();
        theInternalbehaviorPackage.createPackageContents();
        theModedeclarationPackage.createPackageContents();
        theAxisPackage.createPackageContents();
        theCalibrationvaluePackage.createPackageContents();
        theCalibrationparameterPackage.createPackageContents();
        theBasetypesPackage.createPackageContents();
        theGlobalconstraintsPackage.createPackageContents();
        theAuxillaryobjectsPackage.createPackageContents();
        theConstantsPackage.createPackageContents();
        theTriggerdeclarationPackage.createPackageContents();
        theImplementationPackage.createPackageContents();
        theSwcbswmappingPackage.createPackageContents();
        theServiceneedsPackage.createPackageContents();
        theResourceconsumptionPackage.createPackageContents();
        theMemorysectionusagePackage.createPackageContents();
        theStackusagePackage.createPackageContents();
        theHeapusagePackage.createPackageContents();
        theExecutiontimePackage.createPackageContents();
        theServiceprocesstaskPackage.createPackageContents();
        theSwclassPackage.createPackageContents();
        theTimingPackage.createPackageContents();
        theTimingconstraintPackage.createPackageContents();
        theAgeconstraintPackage.createPackageContents();
        theExecutiontimeconstraintPackage.createPackageContents();
        theEventtriggeringconstraintPackage.createPackageContents();
        theLatencytimingconstraintPackage.createPackageContents();
        theOffsetconstraintPackage.createPackageContents();
        theSynchronizationtimingconstraintPackage.createPackageContents();
        theExecutionorderconstraintPackage.createPackageContents();
        theTimingdescriptionPackage.createPackageContents();
        theTdeventoccurrenceexpressionPackage.createPackageContents();
        theInstancerefsusagePackage.createPackageContents();
        theInstancerefsPackage.createPackageContents();
        theTdeventswcinternalbehaviorPackage.createPackageContents();
        theTdeventcomPackage.createPackageContents();
        theTdeventbswPackage.createPackageContents();
        theTdeventbswinternalbehaviorPackage.createPackageContents();
        theTdeventcomplexPackage.createPackageContents();
        theTdeventvfbPackage.createPackageContents();
        theSystemconstantPackage.createPackageContents();
        theEndtoendprotectionPackage.createPackageContents();
        theInterpolationroutinemappingsetPackage.createPackageContents();
        theCalibrationparametervaluesPackage.createPackageContents();
        theDatatypesPackage.createPackageContents();
        theRecordlayoutPackage.createPackageContents();
        theUnitsPackage.createPackageContents();
        theLocalconstraintsPackage.createPackageContents();
        theComputationmethodPackage.createPackageContents();
        theDataprototypesPackage.createPackageContents();
        theSwcinternalbehaviorPackage.createPackageContents();
        theServicemappingPackage.createPackageContents();
        theDataelementsPackage.createPackageContents();
        theInstancerefsusagePackage_1.createPackageContents();
        thePerinstancememoryPackage.createPackageContents();
        theInstantiationdatadefpropsPackage.createPackageContents();
        thePortapioptionsPackage.createPackageContents();
        theRteeventsPackage.createPackageContents();
        theTriggerPackage.createPackageContents();
        theModedeclarationgroupPackage.createPackageContents();
        theServercallPackage.createPackageContents();
        theVarianthandlingPackage_1.createPackageContents();
        theIncludeddatatypesPackage.createPackageContents();
        theRunnableentityPackage.createPackageContents();
        theComponentsPackage.createPackageContents();
        theInstancerefsPackage_1.createPackageContents();
        theCommunicationPackage.createPackageContents();
        theCompositionPackage.createPackageContents();
        theInstancerefsPackage_2.createPackageContents();
        theSoftwarecomponentdocumentationPackage.createPackageContents();
        theNvblockcomponentPackage.createPackageContents();
        theApplicationattributesPackage.createPackageContents();
        theSwcimplementationPackage.createPackageContents();
        thePortinterfacePackage.createPackageContents();
        theInstancerefsPackage_3.createPackageContents();
        theEcucdescriptionPackage.createPackageContents();
        theEcucparameterdefPackage.createPackageContents();
        theBswoverviewPackage.createPackageContents();
        theInstancerefsPackage_4.createPackageContents();
        theBswimplementationPackage.createPackageContents();
        theBswinterfacesPackage.createPackageContents();
        theSystemPackage.createPackageContents();
        theSwmappingPackage.createPackageContents();
        theInstancerefsPackage_5.createPackageContents();
        theCancommunicationPackage.createPackageContents();
        theCantopologyPackage.createPackageContents();
        theTtcantopologyPackage.createPackageContents();
        theTtcancommunicationPackage.createPackageContents();
        theEthernetcommunicationPackage.createPackageContents();
        theEthernettopologyPackage.createPackageContents();
        theFlexraycommunicationPackage.createPackageContents();
        theFlexraytopologyPackage.createPackageContents();
        theLincommunicationPackage.createPackageContents();
        theLintopologyPackage.createPackageContents();
        theFibex4multiplatformPackage.createPackageContents();
        theFibexcorePackage.createPackageContents();
        theCorecommunicationPackage.createPackageContents();
        theTimingPackage_1.createPackageContents();
        theCoretopologyPackage.createPackageContents();
        theDatamappingPackage.createPackageContents();
        theTransportprotocolsPackage.createPackageContents();
        theSignalpathsPackage.createPackageContents();
        theEcuresourcemappingPackage.createPackageContents();
        thePncmappingPackage.createPackageContents();
        theNetworkmanagementPackage.createPackageContents();
        theEndtoendprotectionPackage_1.createPackageContents();
        theGenericblueprintPackage.createPackageContents();
        thePortinterfaceblueprintPackage.createPackageContents();
        thePortprotoypeblueprintPackage.createPackageContents();
        theBlueprintmappingPackage.createPackageContents();
        theKeywordPackage.createPackageContents();
        theAbstractblueprintstructurePackage.createPackageContents();
        theAutosartoplevelstructurePackage.createPackageContents();
        theBswbehaviorPackage.initializePackageContents();
        theEcuresourcePackage.initializePackageContents();
        theHwelementcategoryPackage.initializePackageContents();
        theFormulalanguagePackage.initializePackageContents();
        theAbstractstructurePackage.initializePackageContents();
        theVarianthandlingPackage.initializePackageContents();
        theDocumentationonm1Package.initializePackageContents();
        theIdentifiablePackage.initializePackageContents();
        theChaptersPackage.initializePackageContents();
        theMsrqueryPackage.initializePackageContents();
        theAnnotationPackage.initializePackageContents();
        theInlineattributeenumsPackage.initializePackageContents();
        theInlinetextelementsPackage.initializePackageContents();
        theSinglelanguagedataPackage.initializePackageContents();
        theInlinetextmodelPackage.initializePackageContents();
        theLanguagedatamodelPackage.initializePackageContents();
        theMultilanguagedataPackage.initializePackageContents();
        theBlockelementsPackage.initializePackageContents();
        thePaginationandviewPackage.initializePackageContents();
        theOasisexchangetablePackage.initializePackageContents();
        theFormulaPackage.initializePackageContents();
        theFigurePackage.initializePackageContents();
        theRequirementstracingPackage.initializePackageContents();
        theSynopsisPackage.initializePackageContents();
        theGerneralparametersPackage.initializePackageContents();
        theListelementsPackage.initializePackageContents();
        theNotePackage.initializePackageContents();
        thePrimitivetypesPackage.initializePackageContents();
        theAnyinstancerefPackage.initializePackageContents();
        theArpackagePackage.initializePackageContents();
        theElementcollectionPackage.initializePackageContents();
        theGeneralannotationPackage.initializePackageContents();
        theAdmindataPackage.initializePackageContents();
        theSpecialdataPackage.initializePackageContents();
        theMultidimensionaltimePackage.initializePackageContents();
        theEngineeringobjectPackage.initializePackageContents();
        theArobjectPackage.initializePackageContents();
        theFilterPackage.initializePackageContents();
        theFlatmapPackage.initializePackageContents();
        theDatadefpropertiesPackage.initializePackageContents();
        theDatadictionaryproxiesPackage.initializePackageContents();
        theMeasurementcalibrationsupportPackage.initializePackageContents();
        theImplementationdatatypesPackage.initializePackageContents();
        theInternalbehaviorPackage.initializePackageContents();
        theModedeclarationPackage.initializePackageContents();
        theAxisPackage.initializePackageContents();
        theCalibrationvaluePackage.initializePackageContents();
        theCalibrationparameterPackage.initializePackageContents();
        theBasetypesPackage.initializePackageContents();
        theGlobalconstraintsPackage.initializePackageContents();
        theAuxillaryobjectsPackage.initializePackageContents();
        theConstantsPackage.initializePackageContents();
        theTriggerdeclarationPackage.initializePackageContents();
        theImplementationPackage.initializePackageContents();
        theSwcbswmappingPackage.initializePackageContents();
        theServiceneedsPackage.initializePackageContents();
        theResourceconsumptionPackage.initializePackageContents();
        theMemorysectionusagePackage.initializePackageContents();
        theStackusagePackage.initializePackageContents();
        theHeapusagePackage.initializePackageContents();
        theExecutiontimePackage.initializePackageContents();
        theServiceprocesstaskPackage.initializePackageContents();
        theSwclassPackage.initializePackageContents();
        theTimingPackage.initializePackageContents();
        theTimingconstraintPackage.initializePackageContents();
        theAgeconstraintPackage.initializePackageContents();
        theExecutiontimeconstraintPackage.initializePackageContents();
        theEventtriggeringconstraintPackage.initializePackageContents();
        theLatencytimingconstraintPackage.initializePackageContents();
        theOffsetconstraintPackage.initializePackageContents();
        theSynchronizationtimingconstraintPackage.initializePackageContents();
        theExecutionorderconstraintPackage.initializePackageContents();
        theTimingdescriptionPackage.initializePackageContents();
        theTdeventoccurrenceexpressionPackage.initializePackageContents();
        theInstancerefsusagePackage.initializePackageContents();
        theInstancerefsPackage.initializePackageContents();
        theTdeventswcinternalbehaviorPackage.initializePackageContents();
        theTdeventcomPackage.initializePackageContents();
        theTdeventbswPackage.initializePackageContents();
        theTdeventbswinternalbehaviorPackage.initializePackageContents();
        theTdeventcomplexPackage.initializePackageContents();
        theTdeventvfbPackage.initializePackageContents();
        theSystemconstantPackage.initializePackageContents();
        theEndtoendprotectionPackage.initializePackageContents();
        theInterpolationroutinemappingsetPackage.initializePackageContents();
        theCalibrationparametervaluesPackage.initializePackageContents();
        theDatatypesPackage.initializePackageContents();
        theRecordlayoutPackage.initializePackageContents();
        theUnitsPackage.initializePackageContents();
        theLocalconstraintsPackage.initializePackageContents();
        theComputationmethodPackage.initializePackageContents();
        theDataprototypesPackage.initializePackageContents();
        theSwcinternalbehaviorPackage.initializePackageContents();
        theServicemappingPackage.initializePackageContents();
        theDataelementsPackage.initializePackageContents();
        theInstancerefsusagePackage_1.initializePackageContents();
        thePerinstancememoryPackage.initializePackageContents();
        theInstantiationdatadefpropsPackage.initializePackageContents();
        thePortapioptionsPackage.initializePackageContents();
        theRteeventsPackage.initializePackageContents();
        theTriggerPackage.initializePackageContents();
        theModedeclarationgroupPackage.initializePackageContents();
        theServercallPackage.initializePackageContents();
        theVarianthandlingPackage_1.initializePackageContents();
        theIncludeddatatypesPackage.initializePackageContents();
        theRunnableentityPackage.initializePackageContents();
        theComponentsPackage.initializePackageContents();
        theInstancerefsPackage_1.initializePackageContents();
        theCommunicationPackage.initializePackageContents();
        theCompositionPackage.initializePackageContents();
        theInstancerefsPackage_2.initializePackageContents();
        theSoftwarecomponentdocumentationPackage.initializePackageContents();
        theNvblockcomponentPackage.initializePackageContents();
        theApplicationattributesPackage.initializePackageContents();
        theSwcimplementationPackage.initializePackageContents();
        thePortinterfacePackage.initializePackageContents();
        theInstancerefsPackage_3.initializePackageContents();
        theEcucdescriptionPackage.initializePackageContents();
        theEcucparameterdefPackage.initializePackageContents();
        theBswoverviewPackage.initializePackageContents();
        theInstancerefsPackage_4.initializePackageContents();
        theBswimplementationPackage.initializePackageContents();
        theBswinterfacesPackage.initializePackageContents();
        theSystemPackage.initializePackageContents();
        theSwmappingPackage.initializePackageContents();
        theInstancerefsPackage_5.initializePackageContents();
        theCancommunicationPackage.initializePackageContents();
        theCantopologyPackage.initializePackageContents();
        theTtcantopologyPackage.initializePackageContents();
        theTtcancommunicationPackage.initializePackageContents();
        theEthernetcommunicationPackage.initializePackageContents();
        theEthernettopologyPackage.initializePackageContents();
        theFlexraycommunicationPackage.initializePackageContents();
        theFlexraytopologyPackage.initializePackageContents();
        theLincommunicationPackage.initializePackageContents();
        theLintopologyPackage.initializePackageContents();
        theFibex4multiplatformPackage.initializePackageContents();
        theFibexcorePackage.initializePackageContents();
        theCorecommunicationPackage.initializePackageContents();
        theTimingPackage_1.initializePackageContents();
        theCoretopologyPackage.initializePackageContents();
        theDatamappingPackage.initializePackageContents();
        theTransportprotocolsPackage.initializePackageContents();
        theSignalpathsPackage.initializePackageContents();
        theEcuresourcemappingPackage.initializePackageContents();
        thePncmappingPackage.initializePackageContents();
        theNetworkmanagementPackage.initializePackageContents();
        theEndtoendprotectionPackage_1.initializePackageContents();
        theGenericblueprintPackage.initializePackageContents();
        thePortinterfaceblueprintPackage.initializePackageContents();
        thePortprotoypeblueprintPackage.initializePackageContents();
        theBlueprintmappingPackage.initializePackageContents();
        theKeywordPackage.initializePackageContents();
        theAbstractblueprintstructurePackage.initializePackageContents();
        theAutosartoplevelstructurePackage.initializePackageContents();
        theBswbehaviorPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/schema/r4.0/autosar40/bm/bb", (Object)theBswbehaviorPackage);
        return theBswbehaviorPackage;
    }

    public EClass getBswBackgroundEvent() {
        return this.bswBackgroundEventEClass;
    }

    public EClass getBswEvent() {
        return this.bswEventEClass;
    }

    public EReference getBswEvent_BswInternalBehavior() {
        return (EReference)this.bswEventEClass.getEStructuralFeatures().get(0);
    }

    public EReference getBswEvent_DisabledInModes() {
        return (EReference)this.bswEventEClass.getEStructuralFeatures().get(1);
    }

    public EReference getBswEvent_StartsOnEvent() {
        return (EReference)this.bswEventEClass.getEStructuralFeatures().get(2);
    }

    public EReference getBswEvent_VariationPoint() {
        return (EReference)this.bswEventEClass.getEStructuralFeatures().get(3);
    }

    public EClass getBswSchedulableEntity() {
        return this.bswSchedulableEntityEClass;
    }

    public EClass getBswModuleEntity() {
        return this.bswModuleEntityEClass;
    }

    public EReference getBswModuleEntity_BswInternalBehavior() {
        return (EReference)this.bswModuleEntityEClass.getEStructuralFeatures().get(0);
    }

    public EReference getBswModuleEntity_AccessedModeGroups() {
        return (EReference)this.bswModuleEntityEClass.getEStructuralFeatures().get(1);
    }

    public EReference getBswModuleEntity_ActivationPoints() {
        return (EReference)this.bswModuleEntityEClass.getEStructuralFeatures().get(2);
    }

    public EReference getBswModuleEntity_CalledEntries() {
        return (EReference)this.bswModuleEntityEClass.getEStructuralFeatures().get(3);
    }

    public EReference getBswModuleEntity_ImplementedEntry() {
        return (EReference)this.bswModuleEntityEClass.getEStructuralFeatures().get(4);
    }

    public EReference getBswModuleEntity_IssuedTriggers() {
        return (EReference)this.bswModuleEntityEClass.getEStructuralFeatures().get(5);
    }

    public EReference getBswModuleEntity_ManagedModeGroups() {
        return (EReference)this.bswModuleEntityEClass.getEStructuralFeatures().get(6);
    }

    public EReference getBswModuleEntity_SchedulerNamePrefix() {
        return (EReference)this.bswModuleEntityEClass.getEStructuralFeatures().get(7);
    }

    public EReference getBswModuleEntity_VariationPoint() {
        return (EReference)this.bswModuleEntityEClass.getEStructuralFeatures().get(8);
    }

    public EClass getBswInternalTriggeringPointRefConditional() {
        return this.bswInternalTriggeringPointRefConditionalEClass;
    }

    public EReference getBswInternalTriggeringPointRefConditional_BswModuleEntity() {
        return (EReference)this.bswInternalTriggeringPointRefConditionalEClass.getEStructuralFeatures().get(0);
    }

    public EReference getBswInternalTriggeringPointRefConditional_BswInternalTriggeringPoint() {
        return (EReference)this.bswInternalTriggeringPointRefConditionalEClass.getEStructuralFeatures().get(1);
    }

    public EReference getBswInternalTriggeringPointRefConditional_VariationPoint() {
        return (EReference)this.bswInternalTriggeringPointRefConditionalEClass.getEStructuralFeatures().get(2);
    }

    public EClass getBswInternalTriggeringPoint() {
        return this.bswInternalTriggeringPointEClass;
    }

    public EReference getBswInternalTriggeringPoint_BswInternalBehavior() {
        return (EReference)this.bswInternalTriggeringPointEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getBswInternalTriggeringPoint_SwImplPolicy() {
        return (EAttribute)this.bswInternalTriggeringPointEClass.getEStructuralFeatures().get(1);
    }

    public EReference getBswInternalTriggeringPoint_VariationPoint() {
        return (EReference)this.bswInternalTriggeringPointEClass.getEStructuralFeatures().get(2);
    }

    public EClass getBswSchedulerNamePrefix() {
        return this.bswSchedulerNamePrefixEClass;
    }

    public EReference getBswSchedulerNamePrefix_BswInternalBehavior() {
        return (EReference)this.bswSchedulerNamePrefixEClass.getEStructuralFeatures().get(0);
    }

    public EReference getBswSchedulerNamePrefix_VariationPoint() {
        return (EReference)this.bswSchedulerNamePrefixEClass.getEStructuralFeatures().get(1);
    }

    public EClass getBswInternalBehavior() {
        return this.bswInternalBehaviorEClass;
    }

    public EReference getBswInternalBehavior_BswModuleDescription() {
        return (EReference)this.bswInternalBehaviorEClass.getEStructuralFeatures().get(0);
    }

    public EReference getBswInternalBehavior_InternalTriggeringPoints() {
        return (EReference)this.bswInternalBehaviorEClass.getEStructuralFeatures().get(1);
    }

    public EReference getBswInternalBehavior_Entities() {
        return (EReference)this.bswInternalBehaviorEClass.getEStructuralFeatures().get(2);
    }

    public EReference getBswInternalBehavior_Events() {
        return (EReference)this.bswInternalBehaviorEClass.getEStructuralFeatures().get(3);
    }

    public EReference getBswInternalBehavior_TriggerDirectImplementations() {
        return (EReference)this.bswInternalBehaviorEClass.getEStructuralFeatures().get(4);
    }

    public EReference getBswInternalBehavior_ModeSenderPolicies() {
        return (EReference)this.bswInternalBehaviorEClass.getEStructuralFeatures().get(5);
    }

    public EReference getBswInternalBehavior_ModeReceiverPolicies() {
        return (EReference)this.bswInternalBehaviorEClass.getEStructuralFeatures().get(6);
    }

    public EReference getBswInternalBehavior_ServiceDependencies() {
        return (EReference)this.bswInternalBehaviorEClass.getEStructuralFeatures().get(7);
    }

    public EReference getBswInternalBehavior_PerInstanceParameters() {
        return (EReference)this.bswInternalBehaviorEClass.getEStructuralFeatures().get(8);
    }

    public EReference getBswInternalBehavior_SchedulerNamePrefixs() {
        return (EReference)this.bswInternalBehaviorEClass.getEStructuralFeatures().get(9);
    }

    public EClass getBswModeReceiverPolicy() {
        return this.bswModeReceiverPolicyEClass;
    }

    public EReference getBswModeReceiverPolicy_BswInternalBehavior() {
        return (EReference)this.bswModeReceiverPolicyEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getBswModeReceiverPolicy_EnhancedModeApi() {
        return (EAttribute)this.bswModeReceiverPolicyEClass.getEStructuralFeatures().get(1);
    }

    public EReference getBswModeReceiverPolicy_RequiredModeGroup() {
        return (EReference)this.bswModeReceiverPolicyEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getBswModeReceiverPolicy_SupportsAsynchronousModeSwitch() {
        return (EAttribute)this.bswModeReceiverPolicyEClass.getEStructuralFeatures().get(3);
    }

    public EReference getBswModeReceiverPolicy_VariationPoint() {
        return (EReference)this.bswModeReceiverPolicyEClass.getEStructuralFeatures().get(4);
    }

    public EClass getBswTriggerDirectImplementation() {
        return this.bswTriggerDirectImplementationEClass;
    }

    public EReference getBswTriggerDirectImplementation_BswInternalBehavior() {
        return (EReference)this.bswTriggerDirectImplementationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getBswTriggerDirectImplementation_MasteredTrigger() {
        return (EReference)this.bswTriggerDirectImplementationEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getBswTriggerDirectImplementation_Task() {
        return (EAttribute)this.bswTriggerDirectImplementationEClass.getEStructuralFeatures().get(2);
    }

    public EReference getBswTriggerDirectImplementation_VariationPoint() {
        return (EReference)this.bswTriggerDirectImplementationEClass.getEStructuralFeatures().get(3);
    }

    public EClass getBswServiceDependency() {
        return this.bswServiceDependencyEClass;
    }

    public EReference getBswServiceDependency_BswInternalBehavior() {
        return (EReference)this.bswServiceDependencyEClass.getEStructuralFeatures().get(0);
    }

    public EReference getBswServiceDependency_AssignedDatas() {
        return (EReference)this.bswServiceDependencyEClass.getEStructuralFeatures().get(1);
    }

    public EReference getBswServiceDependency_AssignedEntryRoles() {
        return (EReference)this.bswServiceDependencyEClass.getEStructuralFeatures().get(2);
    }

    public EReference getBswServiceDependency_ServiceNeeds() {
        return (EReference)this.bswServiceDependencyEClass.getEStructuralFeatures().get(3);
    }

    public EReference getBswServiceDependency_VariationPoint() {
        return (EReference)this.bswServiceDependencyEClass.getEStructuralFeatures().get(4);
    }

    public EClass getRoleBasedBswModuleEntryAssignment() {
        return this.roleBasedBswModuleEntryAssignmentEClass;
    }

    public EReference getRoleBasedBswModuleEntryAssignment_BswServiceDependency() {
        return (EReference)this.roleBasedBswModuleEntryAssignmentEClass.getEStructuralFeatures().get(0);
    }

    public EReference getRoleBasedBswModuleEntryAssignment_AssignedEntry() {
        return (EReference)this.roleBasedBswModuleEntryAssignmentEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getRoleBasedBswModuleEntryAssignment_Role() {
        return (EAttribute)this.roleBasedBswModuleEntryAssignmentEClass.getEStructuralFeatures().get(2);
    }

    public EClass getBswModeSenderPolicy() {
        return this.bswModeSenderPolicyEClass;
    }

    public EReference getBswModeSenderPolicy_BswInternalBehavior() {
        return (EReference)this.bswModeSenderPolicyEClass.getEStructuralFeatures().get(0);
    }

    public EReference getBswModeSenderPolicy_AckRequest() {
        return (EReference)this.bswModeSenderPolicyEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getBswModeSenderPolicy_EnhancedModeApi() {
        return (EAttribute)this.bswModeSenderPolicyEClass.getEStructuralFeatures().get(2);
    }

    public EReference getBswModeSenderPolicy_ProvidedModeGroup() {
        return (EReference)this.bswModeSenderPolicyEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getBswModeSenderPolicy_QueueLength() {
        return (EAttribute)this.bswModeSenderPolicyEClass.getEStructuralFeatures().get(4);
    }

    public EReference getBswModeSenderPolicy_VariationPoint() {
        return (EReference)this.bswModeSenderPolicyEClass.getEStructuralFeatures().get(5);
    }

    public EClass getBswModeSwitchAckRequest() {
        return this.bswModeSwitchAckRequestEClass;
    }

    public EReference getBswModeSwitchAckRequest_BswModeSenderPolicy() {
        return (EReference)this.bswModeSwitchAckRequestEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getBswModeSwitchAckRequest_Timeout() {
        return (EAttribute)this.bswModeSwitchAckRequestEClass.getEStructuralFeatures().get(1);
    }

    public EClass getBswCalledEntity() {
        return this.bswCalledEntityEClass;
    }

    public EClass getBswExternalTriggerOccurredEvent() {
        return this.bswExternalTriggerOccurredEventEClass;
    }

    public EReference getBswExternalTriggerOccurredEvent_Trigger() {
        return (EReference)this.bswExternalTriggerOccurredEventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getBswInternalTriggerOccurredEvent() {
        return this.bswInternalTriggerOccurredEventEClass;
    }

    public EReference getBswInternalTriggerOccurredEvent_EventSource() {
        return (EReference)this.bswInternalTriggerOccurredEventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getBswInterruptEntity() {
        return this.bswInterruptEntityEClass;
    }

    public EAttribute getBswInterruptEntity_InterruptCategory() {
        return (EAttribute)this.bswInterruptEntityEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getBswInterruptEntity_InterruptSource() {
        return (EAttribute)this.bswInterruptEntityEClass.getEStructuralFeatures().get(1);
    }

    public EClass getBswModeSwitchedAckEvent() {
        return this.bswModeSwitchedAckEventEClass;
    }

    public EReference getBswModeSwitchedAckEvent_ModeGroup() {
        return (EReference)this.bswModeSwitchedAckEventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getBswModeSwitchEvent() {
        return this.bswModeSwitchEventEClass;
    }

    public EAttribute getBswModeSwitchEvent_Activation() {
        return (EAttribute)this.bswModeSwitchEventEClass.getEStructuralFeatures().get(0);
    }

    public EReference getBswModeSwitchEvent_Modes() {
        return (EReference)this.bswModeSwitchEventEClass.getEStructuralFeatures().get(1);
    }

    public EClass getBswTimingEvent() {
        return this.bswTimingEventEClass;
    }

    public EAttribute getBswTimingEvent_Period() {
        return (EAttribute)this.bswTimingEventEClass.getEStructuralFeatures().get(0);
    }

    public EEnum getBswInterruptCategory() {
        return this.bswInterruptCategoryEEnum;
    }

    public BswbehaviorFactory getBswbehaviorFactory() {
        return (BswbehaviorFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.bswBackgroundEventEClass = this.createEClass(0);
        this.bswEventEClass = this.createEClass(1);
        this.createEReference(this.bswEventEClass, 18);
        this.createEReference(this.bswEventEClass, 19);
        this.createEReference(this.bswEventEClass, 20);
        this.createEReference(this.bswEventEClass, 21);
        this.bswSchedulableEntityEClass = this.createEClass(2);
        this.bswModuleEntityEClass = this.createEClass(3);
        this.createEReference(this.bswModuleEntityEClass, 24);
        this.createEReference(this.bswModuleEntityEClass, 25);
        this.createEReference(this.bswModuleEntityEClass, 26);
        this.createEReference(this.bswModuleEntityEClass, 27);
        this.createEReference(this.bswModuleEntityEClass, 28);
        this.createEReference(this.bswModuleEntityEClass, 29);
        this.createEReference(this.bswModuleEntityEClass, 30);
        this.createEReference(this.bswModuleEntityEClass, 31);
        this.createEReference(this.bswModuleEntityEClass, 32);
        this.bswInternalTriggeringPointRefConditionalEClass = this.createEClass(4);
        this.createEReference(this.bswInternalTriggeringPointRefConditionalEClass, 4);
        this.createEReference(this.bswInternalTriggeringPointRefConditionalEClass, 5);
        this.createEReference(this.bswInternalTriggeringPointRefConditionalEClass, 6);
        this.bswInternalTriggeringPointEClass = this.createEClass(5);
        this.createEReference(this.bswInternalTriggeringPointEClass, 18);
        this.createEAttribute(this.bswInternalTriggeringPointEClass, 19);
        this.createEReference(this.bswInternalTriggeringPointEClass, 20);
        this.bswSchedulerNamePrefixEClass = this.createEClass(6);
        this.createEReference(this.bswSchedulerNamePrefixEClass, 7);
        this.createEReference(this.bswSchedulerNamePrefixEClass, 8);
        this.bswInternalBehaviorEClass = this.createEClass(7);
        this.createEReference(this.bswInternalBehaviorEClass, 25);
        this.createEReference(this.bswInternalBehaviorEClass, 26);
        this.createEReference(this.bswInternalBehaviorEClass, 27);
        this.createEReference(this.bswInternalBehaviorEClass, 28);
        this.createEReference(this.bswInternalBehaviorEClass, 29);
        this.createEReference(this.bswInternalBehaviorEClass, 30);
        this.createEReference(this.bswInternalBehaviorEClass, 31);
        this.createEReference(this.bswInternalBehaviorEClass, 32);
        this.createEReference(this.bswInternalBehaviorEClass, 33);
        this.createEReference(this.bswInternalBehaviorEClass, 34);
        this.bswModeReceiverPolicyEClass = this.createEClass(8);
        this.createEReference(this.bswModeReceiverPolicyEClass, 4);
        this.createEAttribute(this.bswModeReceiverPolicyEClass, 5);
        this.createEReference(this.bswModeReceiverPolicyEClass, 6);
        this.createEAttribute(this.bswModeReceiverPolicyEClass, 7);
        this.createEReference(this.bswModeReceiverPolicyEClass, 8);
        this.bswTriggerDirectImplementationEClass = this.createEClass(9);
        this.createEReference(this.bswTriggerDirectImplementationEClass, 4);
        this.createEReference(this.bswTriggerDirectImplementationEClass, 5);
        this.createEAttribute(this.bswTriggerDirectImplementationEClass, 6);
        this.createEReference(this.bswTriggerDirectImplementationEClass, 7);
        this.bswServiceDependencyEClass = this.createEClass(10);
        this.createEReference(this.bswServiceDependencyEClass, 4);
        this.createEReference(this.bswServiceDependencyEClass, 5);
        this.createEReference(this.bswServiceDependencyEClass, 6);
        this.createEReference(this.bswServiceDependencyEClass, 7);
        this.createEReference(this.bswServiceDependencyEClass, 8);
        this.roleBasedBswModuleEntryAssignmentEClass = this.createEClass(11);
        this.createEReference(this.roleBasedBswModuleEntryAssignmentEClass, 4);
        this.createEReference(this.roleBasedBswModuleEntryAssignmentEClass, 5);
        this.createEAttribute(this.roleBasedBswModuleEntryAssignmentEClass, 6);
        this.bswModeSenderPolicyEClass = this.createEClass(12);
        this.createEReference(this.bswModeSenderPolicyEClass, 4);
        this.createEReference(this.bswModeSenderPolicyEClass, 5);
        this.createEAttribute(this.bswModeSenderPolicyEClass, 6);
        this.createEReference(this.bswModeSenderPolicyEClass, 7);
        this.createEAttribute(this.bswModeSenderPolicyEClass, 8);
        this.createEReference(this.bswModeSenderPolicyEClass, 9);
        this.bswModeSwitchAckRequestEClass = this.createEClass(13);
        this.createEReference(this.bswModeSwitchAckRequestEClass, 4);
        this.createEAttribute(this.bswModeSwitchAckRequestEClass, 5);
        this.bswCalledEntityEClass = this.createEClass(14);
        this.bswExternalTriggerOccurredEventEClass = this.createEClass(15);
        this.createEReference(this.bswExternalTriggerOccurredEventEClass, 22);
        this.bswInternalTriggerOccurredEventEClass = this.createEClass(16);
        this.createEReference(this.bswInternalTriggerOccurredEventEClass, 22);
        this.bswInterruptEntityEClass = this.createEClass(17);
        this.createEAttribute(this.bswInterruptEntityEClass, 33);
        this.createEAttribute(this.bswInterruptEntityEClass, 34);
        this.bswModeSwitchedAckEventEClass = this.createEClass(18);
        this.createEReference(this.bswModeSwitchedAckEventEClass, 22);
        this.bswModeSwitchEventEClass = this.createEClass(19);
        this.createEAttribute(this.bswModeSwitchEventEClass, 22);
        this.createEReference(this.bswModeSwitchEventEClass, 23);
        this.bswTimingEventEClass = this.createEClass(20);
        this.createEAttribute(this.bswTimingEventEClass, 22);
        this.bswInterruptCategoryEEnum = this.createEEnum(21);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("bswbehavior");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/schema/r4.0/autosar40/bm/bb");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/i");
        autosar40.bswmodule.bswoverview.instancerefs.InstancerefsPackage theInstancerefsPackage_4 = (autosar40.bswmodule.bswoverview.instancerefs.InstancerefsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bo/ir");
        autosar40.genericstructure.varianthandling.VarianthandlingPackage theVarianthandlingPackage = (autosar40.genericstructure.varianthandling.VarianthandlingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/vh");
        InternalbehaviorPackage theInternalbehaviorPackage = (InternalbehaviorPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ib");
        ModedeclarationPackage theModedeclarationPackage = (ModedeclarationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/md");
        BswinterfacesPackage theBswinterfacesPackage = (BswinterfacesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/binterfaces");
        TriggerdeclarationPackage theTriggerdeclarationPackage = (TriggerdeclarationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/td");
        ArobjectPackage theArobjectPackage = (ArobjectPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ao");
        DatadefpropertiesPackage theDatadefpropertiesPackage = (DatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ddp");
        ImplementationPackage theImplementationPackage = (ImplementationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/implementation");
        BswoverviewPackage theBswoverviewPackage = (BswoverviewPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bo");
        DataprototypesPackage theDataprototypesPackage = (DataprototypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/dp");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt");
        ServiceneedsPackage theServiceneedsPackage = (ServiceneedsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sn");
        this.bswBackgroundEventEClass.getESuperTypes().add((Object)this.getBswEvent());
        this.bswEventEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.bswSchedulableEntityEClass.getESuperTypes().add((Object)this.getBswModuleEntity());
        this.bswModuleEntityEClass.getESuperTypes().add((Object)theInternalbehaviorPackage.getExecutableEntity());
        this.bswInternalTriggeringPointRefConditionalEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.bswInternalTriggeringPointEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.bswSchedulerNamePrefixEClass.getESuperTypes().add((Object)theImplementationPackage.getImplementationProps());
        this.bswInternalBehaviorEClass.getESuperTypes().add((Object)theInternalbehaviorPackage.getInternalBehavior());
        this.bswModeReceiverPolicyEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.bswTriggerDirectImplementationEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.bswServiceDependencyEClass.getESuperTypes().add((Object)theServiceneedsPackage.getServiceDependency());
        this.roleBasedBswModuleEntryAssignmentEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.bswModeSenderPolicyEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.bswModeSwitchAckRequestEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.bswCalledEntityEClass.getESuperTypes().add((Object)this.getBswModuleEntity());
        this.bswExternalTriggerOccurredEventEClass.getESuperTypes().add((Object)this.getBswEvent());
        this.bswInternalTriggerOccurredEventEClass.getESuperTypes().add((Object)this.getBswEvent());
        this.bswInterruptEntityEClass.getESuperTypes().add((Object)this.getBswModuleEntity());
        this.bswModeSwitchedAckEventEClass.getESuperTypes().add((Object)this.getBswEvent());
        this.bswModeSwitchEventEClass.getESuperTypes().add((Object)this.getBswEvent());
        this.bswTimingEventEClass.getESuperTypes().add((Object)this.getBswEvent());
        this.initEClass(this.bswBackgroundEventEClass, BswBackgroundEvent.class, "BswBackgroundEvent", false, false, true);
        this.initEClass(this.bswEventEClass, BswEvent.class, "BswEvent", true, false, true);
        this.initEReference(this.getBswEvent_BswInternalBehavior(), (EClassifier)this.getBswInternalBehavior(), this.getBswInternalBehavior_Events(), "bswInternalBehavior", null, 0, 1, BswEvent.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getBswEvent_DisabledInModes(), (EClassifier)theInstancerefsPackage_4.getModeInBswModuleDescriptionInstanceRef(), null, "disabledInModes", null, 0, -1, BswEvent.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswEvent_StartsOnEvent(), (EClassifier)this.getBswSchedulableEntity(), null, "startsOnEvent", null, 0, 1, BswEvent.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getBswEvent_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, BswEvent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.bswSchedulableEntityEClass, BswSchedulableEntity.class, "BswSchedulableEntity", false, false, true);
        this.initEClass(this.bswModuleEntityEClass, BswModuleEntity.class, "BswModuleEntity", true, false, true);
        this.initEReference(this.getBswModuleEntity_BswInternalBehavior(), (EClassifier)this.getBswInternalBehavior(), this.getBswInternalBehavior_Entities(), "bswInternalBehavior", null, 0, 1, BswModuleEntity.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getBswModuleEntity_AccessedModeGroups(), (EClassifier)theModedeclarationPackage.getModeDeclarationGroupPrototypeRefConditional(), null, "accessedModeGroups", null, 0, -1, BswModuleEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswModuleEntity_ActivationPoints(), (EClassifier)this.getBswInternalTriggeringPointRefConditional(), this.getBswInternalTriggeringPointRefConditional_BswModuleEntity(), "activationPoints", null, 0, -1, BswModuleEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswModuleEntity_CalledEntries(), (EClassifier)theBswinterfacesPackage.getBswModuleEntryRefConditional(), null, "calledEntries", null, 0, -1, BswModuleEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswModuleEntity_ImplementedEntry(), (EClassifier)theBswinterfacesPackage.getBswModuleEntry(), null, "implementedEntry", null, 0, 1, BswModuleEntity.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getBswModuleEntity_IssuedTriggers(), (EClassifier)theTriggerdeclarationPackage.getTriggerRefConditional(), theTriggerdeclarationPackage.getTriggerRefConditional_BswModuleEntity(), "issuedTriggers", null, 0, -1, BswModuleEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswModuleEntity_ManagedModeGroups(), (EClassifier)theModedeclarationPackage.getModeDeclarationGroupPrototypeRefConditional(), null, "managedModeGroups", null, 0, -1, BswModuleEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswModuleEntity_SchedulerNamePrefix(), (EClassifier)this.getBswSchedulerNamePrefix(), null, "schedulerNamePrefix", null, 0, 1, BswModuleEntity.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getBswModuleEntity_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, BswModuleEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.bswInternalTriggeringPointRefConditionalEClass, BswInternalTriggeringPointRefConditional.class, "BswInternalTriggeringPointRefConditional", false, false, true);
        this.initEReference(this.getBswInternalTriggeringPointRefConditional_BswModuleEntity(), (EClassifier)this.getBswModuleEntity(), this.getBswModuleEntity_ActivationPoints(), "bswModuleEntity", null, 0, 1, BswInternalTriggeringPointRefConditional.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getBswInternalTriggeringPointRefConditional_BswInternalTriggeringPoint(), (EClassifier)this.getBswInternalTriggeringPoint(), null, "bswInternalTriggeringPoint", null, 0, 1, BswInternalTriggeringPointRefConditional.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getBswInternalTriggeringPointRefConditional_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, BswInternalTriggeringPointRefConditional.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.bswInternalTriggeringPointEClass, BswInternalTriggeringPoint.class, "BswInternalTriggeringPoint", false, false, true);
        this.initEReference(this.getBswInternalTriggeringPoint_BswInternalBehavior(), (EClassifier)this.getBswInternalBehavior(), this.getBswInternalBehavior_InternalTriggeringPoints(), "bswInternalBehavior", null, 0, 1, BswInternalTriggeringPoint.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getBswInternalTriggeringPoint_SwImplPolicy(), (EClassifier)theDatadefpropertiesPackage.getSwImplPolicyEnum(), "swImplPolicy", "CONST", 0, 1, BswInternalTriggeringPoint.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getBswInternalTriggeringPoint_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, BswInternalTriggeringPoint.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.bswSchedulerNamePrefixEClass, BswSchedulerNamePrefix.class, "BswSchedulerNamePrefix", false, false, true);
        this.initEReference(this.getBswSchedulerNamePrefix_BswInternalBehavior(), (EClassifier)this.getBswInternalBehavior(), this.getBswInternalBehavior_SchedulerNamePrefixs(), "bswInternalBehavior", null, 0, 1, BswSchedulerNamePrefix.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getBswSchedulerNamePrefix_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, BswSchedulerNamePrefix.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.bswInternalBehaviorEClass, BswInternalBehavior.class, "BswInternalBehavior", false, false, true);
        this.initEReference(this.getBswInternalBehavior_BswModuleDescription(), (EClassifier)theBswoverviewPackage.getBswModuleDescription(), theBswoverviewPackage.getBswModuleDescription_InternalBehaviors(), "bswModuleDescription", null, 0, 1, BswInternalBehavior.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getBswInternalBehavior_InternalTriggeringPoints(), (EClassifier)this.getBswInternalTriggeringPoint(), this.getBswInternalTriggeringPoint_BswInternalBehavior(), "internalTriggeringPoints", null, 0, -1, BswInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswInternalBehavior_Entities(), (EClassifier)this.getBswModuleEntity(), this.getBswModuleEntity_BswInternalBehavior(), "entities", null, 0, -1, BswInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswInternalBehavior_Events(), (EClassifier)this.getBswEvent(), this.getBswEvent_BswInternalBehavior(), "events", null, 0, -1, BswInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswInternalBehavior_TriggerDirectImplementations(), (EClassifier)this.getBswTriggerDirectImplementation(), this.getBswTriggerDirectImplementation_BswInternalBehavior(), "triggerDirectImplementations", null, 0, -1, BswInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswInternalBehavior_ModeSenderPolicies(), (EClassifier)this.getBswModeSenderPolicy(), this.getBswModeSenderPolicy_BswInternalBehavior(), "modeSenderPolicies", null, 0, -1, BswInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswInternalBehavior_ModeReceiverPolicies(), (EClassifier)this.getBswModeReceiverPolicy(), this.getBswModeReceiverPolicy_BswInternalBehavior(), "modeReceiverPolicies", null, 0, -1, BswInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswInternalBehavior_ServiceDependencies(), (EClassifier)this.getBswServiceDependency(), this.getBswServiceDependency_BswInternalBehavior(), "serviceDependencies", null, 0, -1, BswInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswInternalBehavior_PerInstanceParameters(), (EClassifier)theDataprototypesPackage.getParameterDataPrototype(), null, "perInstanceParameters", null, 0, -1, BswInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswInternalBehavior_SchedulerNamePrefixs(), (EClassifier)this.getBswSchedulerNamePrefix(), this.getBswSchedulerNamePrefix_BswInternalBehavior(), "schedulerNamePrefixs", null, 0, -1, BswInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.bswModeReceiverPolicyEClass, BswModeReceiverPolicy.class, "BswModeReceiverPolicy", false, false, true);
        this.initEReference(this.getBswModeReceiverPolicy_BswInternalBehavior(), (EClassifier)this.getBswInternalBehavior(), this.getBswInternalBehavior_ModeReceiverPolicies(), "bswInternalBehavior", null, 0, 1, BswModeReceiverPolicy.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getBswModeReceiverPolicy_EnhancedModeApi(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "enhancedModeApi", "false", 0, 1, BswModeReceiverPolicy.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getBswModeReceiverPolicy_RequiredModeGroup(), (EClassifier)theModedeclarationPackage.getModeDeclarationGroupPrototype(), null, "requiredModeGroup", null, 0, 1, BswModeReceiverPolicy.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getBswModeReceiverPolicy_SupportsAsynchronousModeSwitch(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "supportsAsynchronousModeSwitch", "false", 0, 1, BswModeReceiverPolicy.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getBswModeReceiverPolicy_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, BswModeReceiverPolicy.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.bswTriggerDirectImplementationEClass, BswTriggerDirectImplementation.class, "BswTriggerDirectImplementation", false, false, true);
        this.initEReference(this.getBswTriggerDirectImplementation_BswInternalBehavior(), (EClassifier)this.getBswInternalBehavior(), this.getBswInternalBehavior_TriggerDirectImplementations(), "bswInternalBehavior", null, 0, 1, BswTriggerDirectImplementation.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getBswTriggerDirectImplementation_MasteredTrigger(), (EClassifier)theTriggerdeclarationPackage.getTrigger(), null, "masteredTrigger", null, 0, 1, BswTriggerDirectImplementation.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getBswTriggerDirectImplementation_Task(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "task", "", 0, 1, BswTriggerDirectImplementation.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getBswTriggerDirectImplementation_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, BswTriggerDirectImplementation.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.bswServiceDependencyEClass, BswServiceDependency.class, "BswServiceDependency", false, false, true);
        this.initEReference(this.getBswServiceDependency_BswInternalBehavior(), (EClassifier)this.getBswInternalBehavior(), this.getBswInternalBehavior_ServiceDependencies(), "bswInternalBehavior", null, 0, 1, BswServiceDependency.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getBswServiceDependency_AssignedDatas(), (EClassifier)theServiceneedsPackage.getRoleBasedDataAssignment(), null, "assignedDatas", null, 0, -1, BswServiceDependency.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswServiceDependency_AssignedEntryRoles(), (EClassifier)this.getRoleBasedBswModuleEntryAssignment(), this.getRoleBasedBswModuleEntryAssignment_BswServiceDependency(), "assignedEntryRoles", null, 0, -1, BswServiceDependency.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswServiceDependency_ServiceNeeds(), (EClassifier)theServiceneedsPackage.getServiceNeeds(), null, "serviceNeeds", null, 0, 1, BswServiceDependency.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBswServiceDependency_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, BswServiceDependency.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.roleBasedBswModuleEntryAssignmentEClass, RoleBasedBswModuleEntryAssignment.class, "RoleBasedBswModuleEntryAssignment", false, false, true);
        this.initEReference(this.getRoleBasedBswModuleEntryAssignment_BswServiceDependency(), (EClassifier)this.getBswServiceDependency(), this.getBswServiceDependency_AssignedEntryRoles(), "bswServiceDependency", null, 0, 1, RoleBasedBswModuleEntryAssignment.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getRoleBasedBswModuleEntryAssignment_AssignedEntry(), (EClassifier)theBswinterfacesPackage.getBswModuleEntry(), null, "assignedEntry", null, 0, 1, RoleBasedBswModuleEntryAssignment.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getRoleBasedBswModuleEntryAssignment_Role(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "role", "", 0, 1, RoleBasedBswModuleEntryAssignment.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.bswModeSenderPolicyEClass, BswModeSenderPolicy.class, "BswModeSenderPolicy", false, false, true);
        this.initEReference(this.getBswModeSenderPolicy_BswInternalBehavior(), (EClassifier)this.getBswInternalBehavior(), this.getBswInternalBehavior_ModeSenderPolicies(), "bswInternalBehavior", null, 0, 1, BswModeSenderPolicy.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getBswModeSenderPolicy_AckRequest(), (EClassifier)this.getBswModeSwitchAckRequest(), this.getBswModeSwitchAckRequest_BswModeSenderPolicy(), "ackRequest", null, 0, 1, BswModeSenderPolicy.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getBswModeSenderPolicy_EnhancedModeApi(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "enhancedModeApi", "false", 0, 1, BswModeSenderPolicy.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getBswModeSenderPolicy_ProvidedModeGroup(), (EClassifier)theModedeclarationPackage.getModeDeclarationGroupPrototype(), null, "providedModeGroup", null, 0, 1, BswModeSenderPolicy.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getBswModeSenderPolicy_QueueLength(), (EClassifier)thePrimitivetypesPackage.getPositiveInteger(), "queueLength", "0", 0, 1, BswModeSenderPolicy.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getBswModeSenderPolicy_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, BswModeSenderPolicy.class, false, false, true, true, false, false, true, false, true);
        this.addEOperation(this.bswModeSenderPolicyEClass, (EClassifier)thePrimitivetypesPackage.getPositiveIntegerDatatype(), "getQueueLengthData", 0, 1, true, true);
        EOperation op = this.addEOperation(this.bswModeSenderPolicyEClass, null, "setQueueLengthData", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)thePrimitivetypesPackage.getPositiveIntegerDatatype(), "newQueueLength", 0, 1, true, true);
        this.initEClass(this.bswModeSwitchAckRequestEClass, BswModeSwitchAckRequest.class, "BswModeSwitchAckRequest", false, false, true);
        this.initEReference(this.getBswModeSwitchAckRequest_BswModeSenderPolicy(), (EClassifier)this.getBswModeSenderPolicy(), this.getBswModeSenderPolicy_AckRequest(), "bswModeSenderPolicy", null, 0, 1, BswModeSwitchAckRequest.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getBswModeSwitchAckRequest_Timeout(), (EClassifier)thePrimitivetypesPackage.getTimeValue(), "timeout", "0.0", 0, 1, BswModeSwitchAckRequest.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.bswCalledEntityEClass, BswCalledEntity.class, "BswCalledEntity", false, false, true);
        this.initEClass(this.bswExternalTriggerOccurredEventEClass, BswExternalTriggerOccurredEvent.class, "BswExternalTriggerOccurredEvent", false, false, true);
        this.initEReference(this.getBswExternalTriggerOccurredEvent_Trigger(), (EClassifier)theTriggerdeclarationPackage.getTrigger(), null, "trigger", null, 0, 1, BswExternalTriggerOccurredEvent.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.bswInternalTriggerOccurredEventEClass, BswInternalTriggerOccurredEvent.class, "BswInternalTriggerOccurredEvent", false, false, true);
        this.initEReference(this.getBswInternalTriggerOccurredEvent_EventSource(), (EClassifier)this.getBswInternalTriggeringPoint(), null, "eventSource", null, 0, 1, BswInternalTriggerOccurredEvent.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.bswInterruptEntityEClass, BswInterruptEntity.class, "BswInterruptEntity", false, false, true);
        this.initEAttribute(this.getBswInterruptEntity_InterruptCategory(), (EClassifier)this.getBswInterruptCategory(), "interruptCategory", "CAT-1", 0, 1, BswInterruptEntity.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getBswInterruptEntity_InterruptSource(), (EClassifier)thePrimitivetypesPackage.getString(), "interruptSource", "", 0, 1, BswInterruptEntity.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.bswModeSwitchedAckEventEClass, BswModeSwitchedAckEvent.class, "BswModeSwitchedAckEvent", false, false, true);
        this.initEReference(this.getBswModeSwitchedAckEvent_ModeGroup(), (EClassifier)theModedeclarationPackage.getModeDeclarationGroupPrototype(), null, "modeGroup", null, 0, 1, BswModeSwitchedAckEvent.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.bswModeSwitchEventEClass, BswModeSwitchEvent.class, "BswModeSwitchEvent", false, false, true);
        this.initEAttribute(this.getBswModeSwitchEvent_Activation(), (EClassifier)theModedeclarationPackage.getModeActivationKind(), "activation", "ON-ENTRY", 0, 1, BswModeSwitchEvent.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getBswModeSwitchEvent_Modes(), (EClassifier)theInstancerefsPackage_4.getModeInBswModuleDescriptionInstanceRef(), null, "modes", null, 0, 2, BswModeSwitchEvent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.bswTimingEventEClass, BswTimingEvent.class, "BswTimingEvent", false, false, true);
        this.initEAttribute(this.getBswTimingEvent_Period(), (EClassifier)thePrimitivetypesPackage.getTimeValue(), "period", "0.0", 0, 1, BswTimingEvent.class, false, false, true, true, false, true, false, true);
        this.initEEnum(this.bswInterruptCategoryEEnum, BswInterruptCategory.class, "BswInterruptCategory");
        this.addEEnumLiteral(this.bswInterruptCategoryEEnum, BswInterruptCategory.CAT1);
        this.addEEnumLiteral(this.bswInterruptCategoryEEnum, BswInterruptCategory.CAT2);
        this.createResource("http://autosar.org/schema/r4.0/autosar40/bm/bb");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_BswEventAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
        this.createTaggedValuesOfGeneralization_BswModuleEntityAnnotations();
        this.createTaggedValuesOfGeneralization_ExecutableEntityAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_ImplementationPropsAnnotations();
        this.createTaggedValuesOfGeneralization_InternalBehaviorAnnotations();
        this.createTaggedValuesOfGeneralization_ServiceDependencyAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "BswBehavior", "Modified", "Wed May 30 10:32:44 CEST 2007", "Created", "Wed May 30 10:32:44 CEST 2007", "GUID", "3C52BA63-B612-480c-8148-EB3846E82E91", "Id", "-1895338084"});
        this.addAnnotation((ENamedElement)this.bswBackgroundEventEClass, source, new String[]{"Name", "BswBackgroundEvent", "Modified", "Thu Oct 07 09:52:38 CEST 2010", "Created", "Tue Dec 09 16:46:01 CET 2008", "GUID", "580CF7F2-97F7-46d5-A12D-BCE0F8638162", "Id", "-632247137"});
        this.addAnnotation((ENamedElement)this.bswEventEClass, source, new String[]{"Name", "BswEvent", "Modified", "Thu Jul 21 16:39:32 CEST 2011", "Created", "Wed Dec 13 17:08:34 CET 2006", "GUID", "72C1F6A3-A048-4146-BACB-094D2E5C2F53", "Id", "-1907815870"});
        this.addAnnotation((ENamedElement)this.bswSchedulableEntityEClass, source, new String[]{"Name", "BswSchedulableEntity", "Modified", "Mon Jul 11 07:35:34 CEST 2011", "Created", "Wed Dec 13 16:52:03 CET 2006", "GUID", "E474827B-47EC-4609-971B-4EE5890C57A8", "Id", "214570330"});
        this.addAnnotation((ENamedElement)this.bswModuleEntityEClass, source, new String[]{"Name", "BswModuleEntity", "Modified", "Thu Jul 21 16:39:32 CEST 2011", "Created", "Wed Dec 13 16:32:37 CET 2006", "GUID", "48734BB9-5B92-4282-95FC-8287D63268F0", "Id", "831920543"});
        this.addAnnotation((ENamedElement)this.bswInternalTriggeringPointEClass, source, new String[]{"Name", "BswInternalTriggeringPoint", "Modified", "Mon Jul 11 07:38:12 CEST 2011", "Created", "Wed Dec 10 12:02:08 CET 2008", "GUID", "8EDC04B5-5B9D-43be-A442-84EECCD51C4E", "Id", "1228906928"});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPoint_SwImplPolicy(), source, new String[]{"Name", "swImplPolicy", "GUID", "021813AC-9142-4013-BF74-246226FE7613", "Id", "1312193813"});
        this.addAnnotation((ENamedElement)this.bswSchedulerNamePrefixEClass, source, new String[]{"Name", "BswSchedulerNamePrefix", "Modified", "Wed Aug 10 15:56:03 CEST 2011", "Created", "Mon Apr 18 19:18:24 CEST 2011", "GUID", "6148EA2D-F731-4423-B257-38AF466F8944", "Id", "118644021"});
        this.addAnnotation((ENamedElement)this.bswInternalBehaviorEClass, source, new String[]{"Name", "BswInternalBehavior", "Modified", "Thu Aug 18 08:57:48 CEST 2011", "Created", "Thu Nov 30 11:21:33 CET 2006", "GUID", "F1CDF6E0-8C54-4209-BCD8-D1B8C36FCB29", "Id", "-483091245"});
        this.addAnnotation((ENamedElement)this.bswModeReceiverPolicyEClass, source, new String[]{"Name", "BswModeReceiverPolicy", "Modified", "Mon Jul 11 07:32:52 CEST 2011", "Created", "Thu Oct 30 23:37:27 CET 2008", "GUID", "F5F4AAC8-DC8A-40c1-95CE-67F9A8DDE6DA", "Id", "436485704"});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_EnhancedModeApi(), source, new String[]{"Name", "enhancedModeApi", "GUID", "9C5E03EE-1091-43a4-9D1C-CE6AF49B87EC", "Id", "1345641138"});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_SupportsAsynchronousModeSwitch(), source, new String[]{"Name", "supportsAsynchronousModeSwitch", "GUID", "461C328E-D348-41bc-8AB8-2A3A95C18298", "Id", "-1507431602"});
        this.addAnnotation((ENamedElement)this.bswTriggerDirectImplementationEClass, source, new String[]{"Name", "BswTriggerDirectImplementation", "Modified", "Thu Oct 30 23:48:08 CET 2008", "Created", "Thu Oct 30 23:38:17 CET 2008", "GUID", "9309BECD-E921-4b2f-B69D-7CEF5D8FFF3E", "Id", "1022848438"});
        this.addAnnotation((ENamedElement)this.getBswTriggerDirectImplementation_Task(), source, new String[]{"Name", "task", "GUID", "8F799A81-5EF1-4462-A8D6-125CDBA22276", "Id", "-2035748681"});
        this.addAnnotation((ENamedElement)this.bswServiceDependencyEClass, source, new String[]{"Name", "BswServiceDependency", "Modified", "Mon Mar 14 17:11:50 CET 2011", "Created", "Mon Mar 14 16:28:28 CET 2011", "GUID", "C7C8D914-49FF-42a6-8CF3-BF7D67D179C5", "Id", "208369063"});
        this.addAnnotation((ENamedElement)this.roleBasedBswModuleEntryAssignmentEClass, source, new String[]{"Name", "RoleBasedBswModuleEntryAssignment", "Modified", "Fri Mar 18 11:23:05 CET 2011", "Created", "Mon Mar 14 16:33:20 CET 2011", "GUID", "4E2E7C9F-C21E-40b9-8C78-E17C12D15AC7", "Id", "229639720"});
        this.addAnnotation((ENamedElement)this.getRoleBasedBswModuleEntryAssignment_Role(), source, new String[]{"Name", "role", "GUID", "7609C521-66D4-4cb1-8884-70CC82B4C565", "Id", "-1140582714"});
        this.addAnnotation((ENamedElement)this.bswModeSenderPolicyEClass, source, new String[]{"Name", "BswModeSenderPolicy", "Modified", "Fri Aug 26 11:05:46 CEST 2011", "Created", "Fri Aug 26 11:04:08 CEST 2011", "GUID", "3589E543-8000-4f7b-9B4D-E494B7AAB283", "Id", "-1431828388"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_EnhancedModeApi(), source, new String[]{"Name", "enhancedModeApi", "GUID", "5C80AC3E-3CFF-4e6b-B6C0-EECDF04ABED4", "Id", "1800017386"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_QueueLength(), source, new String[]{"Name", "queueLength", "GUID", "91392EB2-D73B-4937-83DE-4D31124207E4", "Id", "-1380419630"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchAckRequestEClass, source, new String[]{"Name", "BswModeSwitchAckRequest", "Modified", "Tue Nov 25 16:10:21 CET 2008", "Created", "Fri Oct 31 00:09:25 CET 2008", "GUID", "1612012A-23EB-442e-A6DC-E262D62AB900", "Id", "1320598060"});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchAckRequest_Timeout(), source, new String[]{"Name", "timeout", "GUID", "B904DB9B-A641-46aa-A0D5-F3A48E8E6A66", "Id", "1745294133"});
        this.addAnnotation((ENamedElement)this.bswCalledEntityEClass, source, new String[]{"Name", "BswCalledEntity", "Modified", "Wed Apr 01 10:30:45 CEST 2009", "Created", "Wed Apr 01 10:28:39 CEST 2009", "GUID", "2991488C-600D-4329-B75E-1949B7C7B12A", "Id", "-318266413"});
        this.addAnnotation((ENamedElement)this.bswExternalTriggerOccurredEventEClass, source, new String[]{"Name", "BswExternalTriggerOccurredEvent", "Modified", "Mon Jun 15 19:11:45 CEST 2009", "Created", "Tue Aug 19 13:38:34 CEST 2008", "GUID", "CA53F305-5CA8-4992-959B-225378632AD8", "Id", "760767560"});
        this.addAnnotation((ENamedElement)this.bswInternalTriggerOccurredEventEClass, source, new String[]{"Name", "BswInternalTriggerOccurredEvent", "Modified", "Mon Jun 15 19:12:00 CEST 2009", "Created", "Wed Dec 13 17:10:20 CET 2006", "GUID", "6AFC3454-C2E3-415a-9B67-E4743564E070", "Id", "522672884"});
        this.addAnnotation((ENamedElement)this.bswInterruptCategoryEEnum, source, new String[]{"Name", "BswInterruptCategory", "Modified", "Fri Jul 24 09:21:23 CEST 2009", "Created", "Thu May 31 01:38:15 CEST 2007", "GUID", "BBBB61A8-5666-4545-84EA-74530576F268", "Id", "-1598829181"});
        this.addAnnotation((ENamedElement)this.bswInterruptCategoryEEnum.getELiterals().get(0), source, new String[]{"Name", "cat1", "GUID", "2E8EA252-6DD5-4e19-8359-84C96C4F5DCB", "Id", "-159507607"});
        this.addAnnotation((ENamedElement)this.bswInterruptCategoryEEnum.getELiterals().get(1), source, new String[]{"Name", "cat2", "GUID", "490656CA-2427-4626-ABBC-F9035CEC226A", "Id", "772482934"});
        this.addAnnotation((ENamedElement)this.bswInterruptEntityEClass, source, new String[]{"Name", "BswInterruptEntity", "Modified", "Tue Jul 24 17:48:25 CEST 2007", "Created", "Wed Dec 13 16:52:03 CET 2006", "GUID", "C7123B35-A0CD-4fa3-BEC6-4B26F22B37D4", "Id", "868787307"});
        this.addAnnotation((ENamedElement)this.getBswInterruptEntity_InterruptCategory(), source, new String[]{"Name", "interruptCategory", "GUID", "B7526EBD-C2B1-4b5d-AA7B-FD331629D6FE", "Id", "961104167"});
        this.addAnnotation((ENamedElement)this.getBswInterruptEntity_InterruptSource(), source, new String[]{"Name", "interruptSource", "GUID", "64DD5B1D-460B-4485-9664-5281589A304F", "Id", "1193088506"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchedAckEventEClass, source, new String[]{"Name", "BswModeSwitchedAckEvent", "Modified", "Fri Oct 31 18:56:16 CET 2008", "Created", "Thu Oct 30 21:35:20 CET 2008", "GUID", "086C60D1-8BA5-4569-B645-0FA3437CD31A", "Id", "-1211630565"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchEventEClass, source, new String[]{"Name", "BswModeSwitchEvent", "Modified", "Mon Jul 11 07:37:04 CEST 2011", "Created", "Tue Jul 01 16:09:55 CEST 2008", "GUID", "44FD5C48-9EB9-446f-BC0C-28A935F41E43", "Id", "1879102271"});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchEvent_Activation(), source, new String[]{"Name", "activation", "GUID", "EB197BF4-1A04-43db-B1C6-85A754291642", "Id", "906547298"});
        this.addAnnotation((ENamedElement)this.bswTimingEventEClass, source, new String[]{"Name", "BswTimingEvent", "Modified", "Tue Sep 30 13:01:51 CEST 2008", "Created", "Wed Dec 13 17:10:03 CET 2006", "GUID", "AABB44E2-6CAF-446c-9031-579633EAF956", "Id", "-1899368105"});
        this.addAnnotation((ENamedElement)this.getBswTimingEvent_Period(), source, new String[]{"Name", "period", "GUID", "999E371C-BA5D-4237-A603-FEB5B9BF4690", "Id", "1796445772"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-BEHAVIOR", "xml.namePlural", "BSW-BEHAVIORS"});
        this.addAnnotation((ENamedElement)this.bswBackgroundEventEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswBackgroundEvent\"", "mmt.qualifiedName", "BswBackgroundEvent", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-BACKGROUND-EVENT", "xml.namePlural", "BSW-BACKGROUND-EVENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.bswEventEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswEvent\"", "mmt.qualifiedName", "BswEvent", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-EVENT", "xml.namePlural", "BSW-EVENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswEvent_DisabledInModes(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswEvent.disabledInMode\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "BswEvent.disabledInMode", "pureMM.maxOccurs", "-1", "xml.name", "DISABLED-IN-MODE-IREF", "xml.namePlural", "DISABLED-IN-MODE-IREFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswEvent_StartsOnEvent(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswEvent.startsOnEvent\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "BswEvent.startsOnEvent", "pureMM.maxOccurs", "1", "xml.name", "STARTS-ON-EVENT-REF", "xml.namePlural", "STARTS-ON-EVENT-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswEvent_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "2", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswSchedulableEntityEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswSchedulableEntity\"", "mmt.qualifiedName", "BswSchedulableEntity", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-SCHEDULABLE-ENTITY", "xml.namePlural", "BSW-SCHEDULABLE-ENTITYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.bswModuleEntityEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModuleEntity\"", "mmt.qualifiedName", "BswModuleEntity", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-MODULE-ENTITY", "xml.namePlural", "BSW-MODULE-ENTITYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_AccessedModeGroups(), source, new String[]{"mmt.qualifiedName", "BswModuleEntity.accessedModeGroup", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswModuleEntity.accessedModeGroup\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "ACCESSED-MODE-GROUP", "xml.namePlural", "ACCESSED-MODE-GROUPS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_ActivationPoints(), source, new String[]{"mmt.qualifiedName", "BswModuleEntity.activationPoint", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswModuleEntity.activationPoint\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "ACTIVATION-POINT", "xml.namePlural", "ACTIVATION-POINTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_CalledEntries(), source, new String[]{"mmt.qualifiedName", "BswModuleEntity.calledEntry", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswModuleEntity.calledEntry\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "CALLED-ENTRY", "xml.namePlural", "CALLED-ENTRYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_ImplementedEntry(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModuleEntity.implementedEntry\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "BswModuleEntity.implementedEntry", "pureMM.maxOccurs", "1", "xml.name", "IMPLEMENTED-ENTRY-REF", "xml.namePlural", "IMPLEMENTED-ENTRY-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_IssuedTriggers(), source, new String[]{"mmt.qualifiedName", "BswModuleEntity.issuedTrigger", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswModuleEntity.issuedTrigger\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "ISSUED-TRIGGER", "xml.namePlural", "ISSUED-TRIGGERS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_ManagedModeGroups(), source, new String[]{"mmt.qualifiedName", "BswModuleEntity.managedModeGroup", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswModuleEntity.managedModeGroup\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "MANAGED-MODE-GROUP", "xml.namePlural", "MANAGED-MODE-GROUPS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_SchedulerNamePrefix(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModuleEntity.schedulerNamePrefix\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "BswModuleEntity.schedulerNamePrefix", "pureMM.maxOccurs", "1", "xml.name", "SCHEDULER-NAME-PREFIX-REF", "xml.namePlural", "SCHEDULER-NAME-PREFIX-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "7", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswInternalTriggeringPointRefConditionalEClass, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-INTERNAL-TRIGGERING-POINT-REF-CONDITIONAL", "xml.namePlural", "BSW-INTERNAL-TRIGGERING-POINT-REF-CONDITIONALS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPointRefConditional_BswInternalTriggeringPoint(), source, new String[]{"xml.tags", "pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "BSW-INTERNAL-TRIGGERING-POINT-REF", "xml.namePlural", "BSW-INTERNAL-TRIGGERING-POINT-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPointRefConditional_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswInternalTriggeringPointEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswInternalTriggeringPoint\"", "mmt.qualifiedName", "BswInternalTriggeringPoint", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-INTERNAL-TRIGGERING-POINT", "xml.namePlural", "BSW-INTERNAL-TRIGGERING-POINTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPoint_SwImplPolicy(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswInternalTriggeringPoint.swImplPolicy\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "BswInternalTriggeringPoint.swImplPolicy", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "SW-IMPL-POLICY", "xml.namePlural", "SW-IMPL-POLICYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPoint_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswSchedulerNamePrefixEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswSchedulerNamePrefix\"", "mmt.qualifiedName", "BswSchedulerNamePrefix", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-SCHEDULER-NAME-PREFIX", "xml.namePlural", "BSW-SCHEDULER-NAME-PREFIXS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswSchedulerNamePrefix_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswInternalBehaviorEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswInternalBehavior\"", "mmt.qualifiedName", "BswInternalBehavior", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-INTERNAL-BEHAVIOR", "xml.namePlural", "BSW-INTERNAL-BEHAVIORS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_InternalTriggeringPoints(), source, new String[]{"mmt.qualifiedName", "BswInternalBehavior.internalTriggeringPoint", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswInternalBehavior.internalTriggeringPoint\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "INTERNAL-TRIGGERING-POINT", "xml.namePlural", "INTERNAL-TRIGGERING-POINTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_Entities(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"5\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswInternalBehavior.entity\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "BswInternalBehavior.entity", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "-1", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "ENTITY", "xml.namePlural", "ENTITYS", "internal-xml-sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_Events(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswInternalBehavior.event\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.sequenceOffset", "2", "mmt.qualifiedName", "BswInternalBehavior.event", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "EVENT", "xml.namePlural", "EVENTS", "internal-xml-sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_TriggerDirectImplementations(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"15\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswInternalBehavior.triggerDirectImplementation\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.sequenceOffset", "3", "mmt.qualifiedName", "BswInternalBehavior.triggerDirectImplementation", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "TRIGGER-DIRECT-IMPLEMENTATION", "xml.namePlural", "TRIGGER-DIRECT-IMPLEMENTATIONS", "internal-xml-sequenceOffset", "15", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ModeSenderPolicies(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswInternalBehavior.modeSenderPolicy\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.sequenceOffset", "4", "mmt.qualifiedName", "BswInternalBehavior.modeSenderPolicy", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "MODE-SENDER-POLICY", "xml.namePlural", "MODE-SENDER-POLICYS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ModeReceiverPolicies(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"25\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswInternalBehavior.modeReceiverPolicy\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.sequenceOffset", "5", "mmt.qualifiedName", "BswInternalBehavior.modeReceiverPolicy", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "MODE-RECEIVER-POLICY", "xml.namePlural", "MODE-RECEIVER-POLICYS", "internal-xml-sequenceOffset", "25", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ServiceDependencies(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"40\";atp.Splitkey=\"shortName, variationPoint.shortLabel\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswInternalBehavior.serviceDependency\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "atp.Splitkey", "shortName, variationPoint.shortLabel", "xml.sequenceOffset", "6", "mmt.qualifiedName", "BswInternalBehavior.serviceDependency", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "SERVICE-DEPENDENCY", "xml.namePlural", "SERVICE-DEPENDENCYS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_PerInstanceParameters(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"45\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswInternalBehavior.perInstanceParameter\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.sequenceOffset", "7", "mmt.qualifiedName", "BswInternalBehavior.perInstanceParameter", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "PER-INSTANCE-PARAMETER", "xml.namePlural", "PER-INSTANCE-PARAMETERS", "internal-xml-sequenceOffset", "45", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_SchedulerNamePrefixs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"50\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"BswInternalBehavior.schedulerNamePrefix\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.sequenceOffset", "8", "mmt.qualifiedName", "BswInternalBehavior.schedulerNamePrefix", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "SCHEDULER-NAME-PREFIX", "xml.namePlural", "SCHEDULER-NAME-PREFIXS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswModeReceiverPolicyEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeReceiverPolicy\"", "mmt.qualifiedName", "BswModeReceiverPolicy", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-MODE-RECEIVER-POLICY", "xml.namePlural", "BSW-MODE-RECEIVER-POLICYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_EnhancedModeApi(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeReceiverPolicy.enhancedModeApi\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "BswModeReceiverPolicy.enhancedModeApi", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "ENHANCED-MODE-API", "xml.namePlural", "ENHANCED-MODE-APIS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_RequiredModeGroup(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeReceiverPolicy.requiredModeGroup\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "BswModeReceiverPolicy.requiredModeGroup", "pureMM.maxOccurs", "1", "xml.name", "REQUIRED-MODE-GROUP-REF", "xml.namePlural", "REQUIRED-MODE-GROUP-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_SupportsAsynchronousModeSwitch(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeReceiverPolicy.supportsAsynchronousModeSwitch\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "BswModeReceiverPolicy.supportsAsynchronousModeSwitch", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "SUPPORTS-ASYNCHRONOUS-MODE-SWITCH", "xml.namePlural", "SUPPORTS-ASYNCHRONOUS-MODE-SWITCHS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "3", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswTriggerDirectImplementationEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswTriggerDirectImplementation\"", "mmt.qualifiedName", "BswTriggerDirectImplementation", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-TRIGGER-DIRECT-IMPLEMENTATION", "xml.namePlural", "BSW-TRIGGER-DIRECT-IMPLEMENTATIONS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswTriggerDirectImplementation_MasteredTrigger(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswTriggerDirectImplementation.masteredTrigger\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "BswTriggerDirectImplementation.masteredTrigger", "pureMM.maxOccurs", "1", "xml.name", "MASTERED-TRIGGER-REF", "xml.namePlural", "MASTERED-TRIGGER-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswTriggerDirectImplementation_Task(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswTriggerDirectImplementation.task\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "BswTriggerDirectImplementation.task", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TASK", "xml.namePlural", "TASKS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswTriggerDirectImplementation_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "2", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswServiceDependencyEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswServiceDependency\"", "mmt.qualifiedName", "BswServiceDependency", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-SERVICE-DEPENDENCY", "xml.namePlural", "BSW-SERVICE-DEPENDENCYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_AssignedDatas(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswServiceDependency.assignedData\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "BswServiceDependency.assignedData", "pureMM.maxOccurs", "-1", "xml.name", "ASSIGNED-DATA", "xml.namePlural", "ASSIGNED-DATAS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_AssignedEntryRoles(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswServiceDependency.assignedEntryRole\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "BswServiceDependency.assignedEntryRole", "pureMM.maxOccurs", "-1", "xml.name", "ASSIGNED-ENTRY-ROLE", "xml.namePlural", "ASSIGNED-ENTRY-ROLES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_ServiceNeeds(), source, new String[]{"mmt.qualifiedName", "BswServiceDependency.serviceNeeds", "xml.tags", "kind=\"\";mmt.qualifiedName=\"BswServiceDependency.serviceNeeds\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "SERVICE-NEEDS", "xml.namePlural", "SERVICE-NEEDSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "3", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.roleBasedBswModuleEntryAssignmentEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"RoleBasedBswModuleEntryAssignment\"", "mmt.qualifiedName", "RoleBasedBswModuleEntryAssignment", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "ROLE-BASED-BSW-MODULE-ENTRY-ASSIGNMENT", "xml.namePlural", "ROLE-BASED-BSW-MODULE-ENTRY-ASSIGNMENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRoleBasedBswModuleEntryAssignment_AssignedEntry(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"RoleBasedBswModuleEntryAssignment.assignedEntry\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "RoleBasedBswModuleEntryAssignment.assignedEntry", "pureMM.maxOccurs", "1", "xml.name", "ASSIGNED-ENTRY-REF", "xml.namePlural", "ASSIGNED-ENTRY-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRoleBasedBswModuleEntryAssignment_Role(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"RoleBasedBswModuleEntryAssignment.role\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "RoleBasedBswModuleEntryAssignment.role", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "ROLE", "xml.namePlural", "ROLES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswModeSenderPolicyEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSenderPolicy\"", "mmt.qualifiedName", "BswModeSenderPolicy", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-MODE-SENDER-POLICY", "xml.namePlural", "BSW-MODE-SENDER-POLICYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_AckRequest(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSenderPolicy.ackRequest\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "BswModeSenderPolicy.ackRequest", "pureMM.maxOccurs", "1", "xml.name", "ACK-REQUEST", "xml.namePlural", "ACK-REQUESTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_EnhancedModeApi(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSenderPolicy.enhancedModeApi\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "BswModeSenderPolicy.enhancedModeApi", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "ENHANCED-MODE-API", "xml.namePlural", "ENHANCED-MODE-APIS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_ProvidedModeGroup(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSenderPolicy.providedModeGroup\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "BswModeSenderPolicy.providedModeGroup", "pureMM.maxOccurs", "1", "xml.name", "PROVIDED-MODE-GROUP-REF", "xml.namePlural", "PROVIDED-MODE-GROUP-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_QueueLength(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSenderPolicy.queueLength\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "BswModeSenderPolicy.queueLength", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "QUEUE-LENGTH", "xml.namePlural", "QUEUE-LENGTHS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "artop.numericalGetter", "getQueueLengthData", "artop.numericalSetter", "setQueueLengthData"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "4", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchAckRequestEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSwitchAckRequest\"", "mmt.qualifiedName", "BswModeSwitchAckRequest", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-MODE-SWITCH-ACK-REQUEST", "xml.namePlural", "BSW-MODE-SWITCH-ACK-REQUESTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchAckRequest_Timeout(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSwitchAckRequest.timeout\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "BswModeSwitchAckRequest.timeout", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TIMEOUT", "xml.namePlural", "TIMEOUTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswCalledEntityEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswCalledEntity\"", "mmt.qualifiedName", "BswCalledEntity", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-CALLED-ENTITY", "xml.namePlural", "BSW-CALLED-ENTITYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.bswExternalTriggerOccurredEventEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswExternalTriggerOccurredEvent\"", "mmt.qualifiedName", "BswExternalTriggerOccurredEvent", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-EXTERNAL-TRIGGER-OCCURRED-EVENT", "xml.namePlural", "BSW-EXTERNAL-TRIGGER-OCCURRED-EVENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswExternalTriggerOccurredEvent_Trigger(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswExternalTriggerOccurredEvent.trigger\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "BswExternalTriggerOccurredEvent.trigger", "pureMM.maxOccurs", "1", "xml.name", "TRIGGER-REF", "xml.namePlural", "TRIGGER-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswInternalTriggerOccurredEventEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswInternalTriggerOccurredEvent\"", "mmt.qualifiedName", "BswInternalTriggerOccurredEvent", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-INTERNAL-TRIGGER-OCCURRED-EVENT", "xml.namePlural", "BSW-INTERNAL-TRIGGER-OCCURRED-EVENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggerOccurredEvent_EventSource(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswInternalTriggerOccurredEvent.eventSource\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "BswInternalTriggerOccurredEvent.eventSource", "pureMM.maxOccurs", "1", "xml.name", "EVENT-SOURCE-REF", "xml.namePlural", "EVENT-SOURCE-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswInterruptCategoryEEnum, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswInterruptCategory\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::GeneralTemplateClasses::ArObject::ARObject", "mmt.qualifiedName", "BswInterruptCategory", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-INTERRUPT-CATEGORY", "xml.namePlural", "BSW-INTERRUPT-CATEGORYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.bswInterruptCategoryEEnum.getELiterals().get(0), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswInterruptCategory.cat1\"", "mmt.qualifiedName", "BswInterruptCategory.cat1", "xml.name", "CAT-1", "xml.namePlural", "CAT-1S"});
        this.addAnnotation((ENamedElement)this.bswInterruptCategoryEEnum.getELiterals().get(1), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswInterruptCategory.cat2\"", "mmt.qualifiedName", "BswInterruptCategory.cat2", "xml.name", "CAT-2", "xml.namePlural", "CAT-2S"});
        this.addAnnotation((ENamedElement)this.bswInterruptEntityEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswInterruptEntity\"", "mmt.qualifiedName", "BswInterruptEntity", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-INTERRUPT-ENTITY", "xml.namePlural", "BSW-INTERRUPT-ENTITYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswInterruptEntity_InterruptCategory(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswInterruptEntity.interruptCategory\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "BswInterruptEntity.interruptCategory", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "INTERRUPT-CATEGORY", "xml.namePlural", "INTERRUPT-CATEGORYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswInterruptEntity_InterruptSource(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswInterruptEntity.interruptSource\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "BswInterruptEntity.interruptSource", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "INTERRUPT-SOURCE", "xml.namePlural", "INTERRUPT-SOURCES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchedAckEventEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSwitchedAckEvent\"", "mmt.qualifiedName", "BswModeSwitchedAckEvent", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-MODE-SWITCHED-ACK-EVENT", "xml.namePlural", "BSW-MODE-SWITCHED-ACK-EVENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchedAckEvent_ModeGroup(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSwitchedAckEvent.modeGroup\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "BswModeSwitchedAckEvent.modeGroup", "pureMM.maxOccurs", "1", "xml.name", "MODE-GROUP-REF", "xml.namePlural", "MODE-GROUP-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchEventEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSwitchEvent\"", "mmt.qualifiedName", "BswModeSwitchEvent", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-MODE-SWITCH-EVENT", "xml.namePlural", "BSW-MODE-SWITCH-EVENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchEvent_Activation(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSwitchEvent.activation\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "BswModeSwitchEvent.activation", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "ACTIVATION", "xml.namePlural", "ACTIVATIONS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchEvent_Modes(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswModeSwitchEvent.mode\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"2\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "BswModeSwitchEvent.mode", "pureMM.maxOccurs", "2", "xml.name", "MODE-IREF", "xml.namePlural", "MODE-IREFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bswTimingEventEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswTimingEvent\"", "mmt.qualifiedName", "BswTimingEvent", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BSW-TIMING-EVENT", "xml.namePlural", "BSW-TIMING-EVENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBswTimingEvent_Period(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BswTimingEvent.period\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "BswTimingEvent.period", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "PERIOD", "xml.namePlural", "PERIODS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.bswBackgroundEventEClass, source, new String[]{"name", "BSW-BACKGROUND-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswEventEClass, source, new String[]{"name", "BSW-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswEvent_DisabledInModes(), source, new String[]{"name", "DISABLED-IN-MODE-IREFS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswEvent_StartsOnEvent(), source, new String[]{"name", "STARTS-ON-EVENT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswEvent_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswSchedulableEntityEClass, source, new String[]{"name", "BSW-SCHEDULABLE-ENTITY", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswModuleEntityEClass, source, new String[]{"name", "BSW-MODULE-ENTITY", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_AccessedModeGroups(), source, new String[]{"name", "ACCESSED-MODE-GROUPS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_ActivationPoints(), source, new String[]{"name", "ACTIVATION-POINTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_CalledEntries(), source, new String[]{"name", "CALLED-ENTRYS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_ImplementedEntry(), source, new String[]{"name", "IMPLEMENTED-ENTRY-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_IssuedTriggers(), source, new String[]{"name", "ISSUED-TRIGGERS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_ManagedModeGroups(), source, new String[]{"name", "MANAGED-MODE-GROUPS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_SchedulerNamePrefix(), source, new String[]{"name", "SCHEDULER-NAME-PREFIX-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswInternalTriggeringPointRefConditionalEClass, source, new String[]{"name", "BSW-INTERNAL-TRIGGERING-POINT-REF-CONDITIONAL", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPointRefConditional_BswInternalTriggeringPoint(), source, new String[]{"name", "BSW-INTERNAL-TRIGGERING-POINT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPointRefConditional_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswInternalTriggeringPointEClass, source, new String[]{"name", "BSW-INTERNAL-TRIGGERING-POINT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPoint_SwImplPolicy(), source, new String[]{"name", "SW-IMPL-POLICY", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPoint_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswSchedulerNamePrefixEClass, source, new String[]{"name", "BSW-SCHEDULER-NAME-PREFIX", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswSchedulerNamePrefix_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswInternalBehaviorEClass, source, new String[]{"name", "BSW-INTERNAL-BEHAVIOR", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_InternalTriggeringPoints(), source, new String[]{"name", "INTERNAL-TRIGGERING-POINTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_Entities(), source, new String[]{"name", "ENTITYS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_Events(), source, new String[]{"name", "EVENTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_TriggerDirectImplementations(), source, new String[]{"name", "TRIGGER-DIRECT-IMPLEMENTATIONS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ModeSenderPolicies(), source, new String[]{"name", "MODE-SENDER-POLICYS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ModeReceiverPolicies(), source, new String[]{"name", "MODE-RECEIVER-POLICYS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ServiceDependencies(), source, new String[]{"name", "SERVICE-DEPENDENCYS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_PerInstanceParameters(), source, new String[]{"name", "PER-INSTANCE-PARAMETERS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_SchedulerNamePrefixs(), source, new String[]{"name", "SCHEDULER-NAME-PREFIXS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswModeReceiverPolicyEClass, source, new String[]{"name", "BSW-MODE-RECEIVER-POLICY", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_EnhancedModeApi(), source, new String[]{"name", "ENHANCED-MODE-API", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_RequiredModeGroup(), source, new String[]{"name", "REQUIRED-MODE-GROUP-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_SupportsAsynchronousModeSwitch(), source, new String[]{"name", "SUPPORTS-ASYNCHRONOUS-MODE-SWITCH", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswTriggerDirectImplementationEClass, source, new String[]{"name", "BSW-TRIGGER-DIRECT-IMPLEMENTATION", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswTriggerDirectImplementation_MasteredTrigger(), source, new String[]{"name", "MASTERED-TRIGGER-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswTriggerDirectImplementation_Task(), source, new String[]{"name", "TASK", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswTriggerDirectImplementation_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswServiceDependencyEClass, source, new String[]{"name", "BSW-SERVICE-DEPENDENCY", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_AssignedDatas(), source, new String[]{"name", "ASSIGNED-DATAS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_AssignedEntryRoles(), source, new String[]{"name", "ASSIGNED-ENTRY-ROLES", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_ServiceNeeds(), source, new String[]{"name", "SERVICE-NEEDS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.roleBasedBswModuleEntryAssignmentEClass, source, new String[]{"name", "ROLE-BASED-BSW-MODULE-ENTRY-ASSIGNMENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRoleBasedBswModuleEntryAssignment_AssignedEntry(), source, new String[]{"name", "ASSIGNED-ENTRY-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRoleBasedBswModuleEntryAssignment_Role(), source, new String[]{"name", "ROLE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswModeSenderPolicyEClass, source, new String[]{"name", "BSW-MODE-SENDER-POLICY", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_AckRequest(), source, new String[]{"name", "ACK-REQUEST", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_EnhancedModeApi(), source, new String[]{"name", "ENHANCED-MODE-API", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_ProvidedModeGroup(), source, new String[]{"name", "PROVIDED-MODE-GROUP-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_QueueLength(), source, new String[]{"name", "QUEUE-LENGTH", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchAckRequestEClass, source, new String[]{"name", "BSW-MODE-SWITCH-ACK-REQUEST", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchAckRequest_Timeout(), source, new String[]{"name", "TIMEOUT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswCalledEntityEClass, source, new String[]{"name", "BSW-CALLED-ENTITY", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswExternalTriggerOccurredEventEClass, source, new String[]{"name", "BSW-EXTERNAL-TRIGGER-OCCURRED-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswExternalTriggerOccurredEvent_Trigger(), source, new String[]{"name", "TRIGGER-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswInternalTriggerOccurredEventEClass, source, new String[]{"name", "BSW-INTERNAL-TRIGGER-OCCURRED-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggerOccurredEvent_EventSource(), source, new String[]{"name", "EVENT-SOURCE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswInterruptEntityEClass, source, new String[]{"name", "BSW-INTERRUPT-ENTITY", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInterruptEntity_InterruptCategory(), source, new String[]{"name", "INTERRUPT-CATEGORY", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswInterruptEntity_InterruptSource(), source, new String[]{"name", "INTERRUPT-SOURCE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchedAckEventEClass, source, new String[]{"name", "BSW-MODE-SWITCHED-ACK-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchedAckEvent_ModeGroup(), source, new String[]{"name", "MODE-GROUP-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchEventEClass, source, new String[]{"name", "BSW-MODE-SWITCH-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchEvent_Activation(), source, new String[]{"name", "ACTIVATION", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchEvent_Modes(), source, new String[]{"name", "MODE-IREFS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.bswTimingEventEClass, source, new String[]{"name", "BSW-TIMING-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getBswTimingEvent_Period(), source, new String[]{"name", "PERIOD", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.bswBackgroundEventEClass, source, new String[]{"documentation", "A recurring BswEvent which is used to perform background activities. It is similar to a BswTimingEvent but has no fixed time period and is activated only with low priority."});
        this.addAnnotation((ENamedElement)this.bswEventEClass, source, new String[]{"documentation", "Defines an event which is used to trigger a schedulable entity of this BSW module or cluster. The event is local to the BSW module or cluster. The short name of the class instance is intended as an input to configure the required API of the BSW Scheduler."});
        this.addAnnotation((ENamedElement)this.getBswEvent_DisabledInModes(), source, new String[]{"documentation", "The modes, in which this event is disabled."});
        this.addAnnotation((ENamedElement)this.getBswEvent_StartsOnEvent(), source, new String[]{"documentation", "This entity which is started by the event."});
        this.addAnnotation((ENamedElement)this.getBswEvent_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.bswSchedulableEntityEClass, source, new String[]{"documentation", "BSW module entity, which is designed for control by the BSW Scheduler. It implements a so-called \"main\" function."});
        this.addAnnotation((ENamedElement)this.bswModuleEntityEClass, source, new String[]{"documentation", "Specifies the smallest code fragment which can be described for a BSW module or cluster within AUTOSAR."});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_AccessedModeGroups(), source, new String[]{"documentation", "A mode group which is accessed via API call by this entity. It must be a ModeDeclarationGroupPrototype required by this module or cluster.\r\nThis property was modified due to atpVariation (DirectedAssociationPattern)."});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_ActivationPoints(), source, new String[]{"documentation", "Activation point used by the module entity to activate one or more internal triggers.\r\nThis property was modified due to atpVariation (DirectedAssociationPattern)."});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_CalledEntries(), source, new String[]{"documentation", "The entry of another (or the same) BSW module which is called by this entry (usually via C function call). This information allows to set up a model of call chains.\r\n\r\nThe variablity of this association is especially targeted at debug scenarios: It is possible to have one variant calling into the AUTOSAR debug module and another one which doesn't.\r\nThis property was modified due to atpVariation (DirectedAssociationPattern)."});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_ImplementedEntry(), source, new String[]{"documentation", "The entry which is implemented by this module entity."});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_IssuedTriggers(), source, new String[]{"documentation", "A trigger issued by this entity via BSW Scheduler API call. It must be a BswTrigger released (i.e. owned) by this module or cluster.\r\nThis property was modified due to atpVariation (DirectedAssociationPattern)."});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_ManagedModeGroups(), source, new String[]{"documentation", "A mode group which is managed by this entity. It must be a ModeDeclarationGroupPrototype provided by this module or cluster.\r\nThis property was modified due to atpVariation (DirectedAssociationPattern)."});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_SchedulerNamePrefix(), source, new String[]{"documentation", "A prefix to be used in generated names for the BswModuleScheduler in the context of this BswModuleEntity, for example entry point prototypes, macros for dealing with exclusive areas, header file names.\r\n\r\nDetails are defined in the SWS RTE.\r\n\r\nThe prefix supersedes default rules for the prefix of those names."});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.bswInternalTriggeringPointRefConditionalEClass, source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPointRefConditional_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.bswInternalTriggeringPointEClass, source, new String[]{"documentation", "Represents the activation point for one or more BswInternalTriggerOccurredEvents."});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPoint_SwImplPolicy(), source, new String[]{"documentation", "This attribute, when set to value queued, specifies a queued processing of the internal trigger event."});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggeringPoint_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.bswSchedulerNamePrefixEClass, source, new String[]{"documentation", "A prefix to be used in names of generated code artifacts which make up the interface of a BSW module to the BswScheduler."});
        this.addAnnotation((ENamedElement)this.getBswSchedulerNamePrefix_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.bswInternalBehaviorEClass, source, new String[]{"documentation", "Specifies the behavior of a BSW module or a BSW cluster w.r.t. the code entities visible by the BSW Scheduler.\r\nIt is possible to have several different BswInternalBehaviors referring to the same BswModuleDescription."});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_InternalTriggeringPoints(), source, new String[]{"documentation", "An internal triggering point.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_Entities(), source, new String[]{"documentation", "A code entity for which the behavior is described\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_Events(), source, new String[]{"documentation", "An event required by this module behavior.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_TriggerDirectImplementations(), source, new String[]{"documentation", "Specifies a trigger to be directly implemented via OS calls.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ModeSenderPolicies(), source, new String[]{"documentation", "Implementation policy for providing a mode group.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ModeReceiverPolicies(), source, new String[]{"documentation", "Implementation policy for the reception of mode switches.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ServiceDependencies(), source, new String[]{"documentation", "Defines the requirements on AUTOSAR Services for a particular item.\r\n\r\nThe aggregation is subject to variability with the purpose to support the conditional existence of ServiceNeeds.\r\n\r\nThe aggregation is splitable in order to support that ServiceNeeds might be provided in later development steps.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_PerInstanceParameters(), source, new String[]{"documentation", "The upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_SchedulerNamePrefixs(), source, new String[]{"documentation", "Optional definition of one or more prefixes to be used for the BswScheduler.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.bswModeReceiverPolicyEClass, source, new String[]{"documentation", "Specifies the details for the reception of a mode switch for the referred mode group."});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_EnhancedModeApi(), source, new String[]{"documentation", "This controls the creation of the enhanced mode API that returns information about the previous mode and the next mode. If set to TRUE the enhanced mode API is supposed to be generated. For more details please refer to the SWS_RTE."});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_RequiredModeGroup(), source, new String[]{"documentation", "The required mode group for which the policy is specified."});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_SupportsAsynchronousModeSwitch(), source, new String[]{"documentation", "Specifies whether the module can handle the reception of an asynchronous mode switch (true) or not (false)."});
        this.addAnnotation((ENamedElement)this.getBswModeReceiverPolicy_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.bswTriggerDirectImplementationEClass, source, new String[]{"documentation", "Specifies a released trigger to be directly implemented via OS calls, for example in a complex driver module."});
        this.addAnnotation((ENamedElement)this.getBswTriggerDirectImplementation_MasteredTrigger(), source, new String[]{"documentation", "The trigger which is directly mastered by this module.\r\n\r\nThere may be several different BswTriggerDirectImplementations mastering the same Trigger. This may be required e.g. due to memory partitioning."});
        this.addAnnotation((ENamedElement)this.getBswTriggerDirectImplementation_Task(), source, new String[]{"documentation", "The name of the OS task, which is controlled by the referred trigger. This means, that the module uses the trigger condition to directly activate an OS task instead of calling an API of the BswScheduler. The task name is required by the RTE generator resp. BswScheduler to raise the appropriate events in components or modules receiving the trigger."});
        this.addAnnotation((ENamedElement)this.getBswTriggerDirectImplementation_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.bswServiceDependencyEClass, source, new String[]{"documentation", "Specialization of ServiceDependency in the context of an BswInternalBehavior. It allows to associate BswModuleEntries and data defined for a BSW module or cluster to a given ServiceNeeds element."});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_AssignedDatas(), source, new String[]{"documentation", "Defines the role of an associated data object (owned by this module or cluster) in the context of the ServiceNeeds element."});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_AssignedEntryRoles(), source, new String[]{"documentation", "Defines the role of an associated BswModuleEntry in the context of the ServiceNeeds element."});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_ServiceNeeds(), source, new String[]{"documentation", "The associated ServiceNeeds."});
        this.addAnnotation((ENamedElement)this.getBswServiceDependency_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.roleBasedBswModuleEntryAssignmentEClass, source, new String[]{"documentation", "This class specifies an assignment of a role to a particular BswModuleEntry (usually a configurable callback). \r\n\r\nWith this assignment, the role of the callback is mapped to a specific ServiceNeeds element, so that a tool is able to create appropriate configuration values for the module that implements the AUTOSAR Service."});
        this.addAnnotation((ENamedElement)this.getRoleBasedBswModuleEntryAssignment_AssignedEntry(), source, new String[]{"documentation", "The assigned entry. It should be a providedEntry or expectedCallback of the module or cluster that requires the ServiceNeeds."});
        this.addAnnotation((ENamedElement)this.getRoleBasedBswModuleEntryAssignment_Role(), source, new String[]{"documentation", "This is the role of the assigned BswModuleEntry in the given context. The attribute is required (for example) because different kind of callbacks may be associated with the same ServiceNeeds (e.g. end-notification vs. error-notification).\r\n\r\nThe value must be the role name of a configurable function call (usually a callback) as standardized in the Software Specification of the related AUTOSAR Service. "});
        this.addAnnotation((ENamedElement)this.bswModeSenderPolicyEClass, source, new String[]{"documentation", "Specifies the details for the sending of a mode switch for the referred mode group."});
        this.addAnnotation((ENamedElement)this.bswModeSenderPolicyEClass.getEOperations().get(0), source, new String[]{"body", "return (<%org.artop.aal.common.datatypes.PositiveIntegerDatatype%>)queueLength.clone();"});
        this.addAnnotation((ENamedElement)this.bswModeSenderPolicyEClass.getEOperations().get(1), source, new String[]{"body", "queueLength.setRadix(newQueueLength.getRadix());\nqueueLength.setNoOfDigits(newQueueLength.getNoOfDigits());\nsetQueueLength(newQueueLength.getValue());\n"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_AckRequest(), source, new String[]{"documentation", "Request for acknowledgement"});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_ProvidedModeGroup(), source, new String[]{"documentation", "The provided mode group for which the policy is specified."});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_QueueLength(), source, new String[]{"documentation", "Length of call queue on the sender side. The queue is implemented by the RTE resp.BswScheduler. The value must be greater or equal to 0. Setting the value of queueLength to 0 implies non-queued communication."});
        this.addAnnotation((ENamedElement)this.getBswModeSenderPolicy_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.bswModeSwitchAckRequestEClass, source, new String[]{"documentation", "Requests acknowledgements that a mode switch has been processed  successfully"});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchAckRequest_Timeout(), source, new String[]{"documentation", "Number of seconds before an error is reported."});
        this.addAnnotation((ENamedElement)this.bswCalledEntityEClass, source, new String[]{"documentation", "BSW module entity, which is designed to be called from another BSW module or cluster."});
        this.addAnnotation((ENamedElement)this.bswExternalTriggerOccurredEventEClass, source, new String[]{"documentation", "A BswEvent resulting from a trigger released by another module or cluster."});
        this.addAnnotation((ENamedElement)this.getBswExternalTriggerOccurredEvent_Trigger(), source, new String[]{"documentation", "The trigger associated with this event. The trigger is external to this module."});
        this.addAnnotation((ENamedElement)this.bswInternalTriggerOccurredEventEClass, source, new String[]{"documentation", "A BswEvent, which can happen sporadically. The event is activated by explicit calls from the module to the BSW Scheduler. The main purpose for such an event is to cause a context switch, e.g. from an ISR context into a task context. Activation and switching are handled within the same module or cluster only."});
        this.addAnnotation((ENamedElement)this.getBswInternalTriggerOccurredEvent_EventSource(), source, new String[]{"documentation", "The activation point is the source of this event."});
        this.addAnnotation((ENamedElement)this.bswInterruptCategoryEEnum, source, new String[]{"documentation", "Category of the interrupt service"});
        this.addAnnotation((ENamedElement)this.bswInterruptCategoryEEnum.getELiterals().get(0), source, new String[]{"documentation", "Cat1 interrupt routines are not controlled by the OS and are only allowed to make a very limited selection of OS calls to enable and disable all interrupts. The BswInterruptEntity  is implemented by the interrupt service routine, which is directly called from the interrupt vector (not via the OS)."});
        this.addAnnotation((ENamedElement)this.bswInterruptCategoryEEnum.getELiterals().get(1), source, new String[]{"documentation", "Cat2 interrupt routines are controlled by the OS and they are allowed to make OS calls. The BswInterruptEntity  is implemented by the interrupt handler, which is called from the OS."});
        this.addAnnotation((ENamedElement)this.bswInterruptEntityEClass, source, new String[]{"documentation", "BSW module entity, which is designed to be triggered by an interrupt."});
        this.addAnnotation((ENamedElement)this.getBswInterruptEntity_InterruptCategory(), source, new String[]{"documentation", "Category of the interrupt"});
        this.addAnnotation((ENamedElement)this.getBswInterruptEntity_InterruptSource(), source, new String[]{"documentation", "Allows a textual documentation of the intended interrupt source."});
        this.addAnnotation((ENamedElement)this.bswModeSwitchedAckEventEClass, source, new String[]{"documentation", "The event is raised after a switch of the referenced mode group has been acknowledged or an error occurs. The referenced mode group must be provided by this module."});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchedAckEvent_ModeGroup(), source, new String[]{"documentation", "A mode group provided by this module. The acknowlede of a switch of this group raises this event."});
        this.addAnnotation((ENamedElement)this.bswModeSwitchEventEClass, source, new String[]{"documentation", "A BswEvent resulting from a mode switch."});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchEvent_Activation(), source, new String[]{"documentation", "Kind of activation w.r.t. to the referred mode."});
        this.addAnnotation((ENamedElement)this.getBswModeSwitchEvent_Modes(), source, new String[]{"documentation", "Reference to one or two Modes that initiate the Mode Switch Event."});
        this.addAnnotation((ENamedElement)this.bswTimingEventEClass, source, new String[]{"documentation", "A recurring BswEvent driven by a time period."});
        this.addAnnotation((ENamedElement)this.getBswTimingEvent_Period(), source, new String[]{"documentation", "Requirement for the time period (in seconds) by which this event is triggered."});
    }

    protected void createTaggedValuesOfGeneralization_BswEventAnnotations() {
        String source = "TaggedValuesOfGeneralization_BswEvent";
        this.addAnnotation((ENamedElement)this.bswBackgroundEventEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswBackgroundEvent->BswEvent", "GUID", "EE5B7977-D112-4095-A4CB-A736EE6AA613", "Id", "1825243109", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswExternalTriggerOccurredEventEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswExternalTriggerOccurredEvent->BswEvent", "GUID", "D85F65B4-83E0-48a9-A529-7F7EE1B56D1A", "Id", "-80671049", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswInternalTriggerOccurredEventEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswInternalTriggerOccurredEvent->BswEvent", "GUID", "947EF857-5279-495b-B84C-D423783C6934", "Id", "-954903080", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchedAckEventEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswModeSwitchedAckEvent->BswEvent", "GUID", "13B95680-5E7B-4148-A237-8C42EADB09DA", "Id", "482706328", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchEventEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswModeSwitchEvent->BswEvent", "GUID", "D352BDC9-BD4A-424b-ACA2-FE5316DC9FA4", "Id", "1021183877", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswTimingEventEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswTimingEvent->BswEvent", "GUID", "64147D2A-E549-4ef9-9C90-287CC96549FF", "Id", "-1264671971", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.bswEventEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswEvent->Identifiable", "GUID", "2A519562-26D0-4290-8B64-96BFFB0BF7D1", "Id", "711594643", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswInternalTriggeringPointEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswInternalTriggeringPoint->Identifiable", "GUID", "EAA2F2B4-DD06-409f-935A-A11ADF0DD96D", "Id", "1210695995", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_BswModuleEntityAnnotations() {
        String source = "TaggedValuesOfGeneralization_BswModuleEntity";
        this.addAnnotation((ENamedElement)this.bswSchedulableEntityEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswSchedulableEntity->BswModuleEntity", "GUID", "0F1443B3-09C7-456b-966C-CC513A82F0BF", "Id", "1185583046", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswCalledEntityEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswCalledEntity->BswModuleEntity", "GUID", "649F8796-BFC5-420c-AA2A-723378FC694B", "Id", "-770368967", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswInterruptEntityEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswInterruptEntity->BswModuleEntity", "GUID", "8ACD8830-87A6-4439-98A4-642D3BB68E53", "Id", "1747283089", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ExecutableEntityAnnotations() {
        String source = "TaggedValuesOfGeneralization_ExecutableEntity";
        this.addAnnotation((ENamedElement)this.bswModuleEntityEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswModuleEntity->ExecutableEntity", "GUID", "396A0A2F-8747-494f-A7BE-EB4033BAFADD", "Id", "1337726515", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_AccessedModeGroups(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_ActivationPoints(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_CalledEntries(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_IssuedTriggers(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswModuleEntity_ManagedModeGroups(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_InternalTriggeringPoints(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_Entities(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_Events(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_TriggerDirectImplementations(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ModeSenderPolicies(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ModeReceiverPolicies(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_ServiceDependencies(), source, new String[]{"Stereotype", "atpSplitable"});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_PerInstanceParameters(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getBswInternalBehavior_SchedulerNamePrefixs(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.bswInterruptCategoryEEnum, source, new String[]{"Stereotype", "enumeration"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.bswInternalTriggeringPointRefConditionalEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswModeReceiverPolicyEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswTriggerDirectImplementationEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.roleBasedBswModuleEntryAssignmentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswModeSenderPolicyEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bswModeSwitchAckRequestEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ImplementationPropsAnnotations() {
        String source = "TaggedValuesOfGeneralization_ImplementationProps";
        this.addAnnotation((ENamedElement)this.bswSchedulerNamePrefixEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswSchedulerNamePrefix->ImplementationProps", "GUID", "34B9C6B1-3BE0-4c9b-9928-CCA08BCE2BFF", "Id", "1849455249", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_InternalBehaviorAnnotations() {
        String source = "TaggedValuesOfGeneralization_InternalBehavior";
        this.addAnnotation((ENamedElement)this.bswInternalBehaviorEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswInternalBehavior->InternalBehavior", "GUID", "A88DD824-83EE-4578-8941-D1BCD8D6237E", "Id", "-252320908", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ServiceDependencyAnnotations() {
        String source = "TaggedValuesOfGeneralization_ServiceDependency";
        this.addAnnotation((ENamedElement)this.bswServiceDependencyEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BswServiceDependency->ServiceDependency", "GUID", "F97A0AA8-DF76-4a07-8BE9-367FBD31186B", "Id", "-952992767", "xml.sequenceOffset", "0"});
    }
}

