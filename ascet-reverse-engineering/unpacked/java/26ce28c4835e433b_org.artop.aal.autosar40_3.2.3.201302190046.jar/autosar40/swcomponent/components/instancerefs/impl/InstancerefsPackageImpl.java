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
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar40.swcomponent.components.instancerefs.impl;

import autosar40.autosartoplevelstructure.AutosartoplevelstructurePackage;
import autosar40.autosartoplevelstructure.impl.AutosartoplevelstructurePackageImpl;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.impl.BswbehaviorPackageImpl;
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
import autosar40.swcomponent.components.instancerefs.InnerPortGroupInCompositionInstanceRef;
import autosar40.swcomponent.components.instancerefs.InstancerefsFactory;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.ModeGroupInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.OperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.PModeGroupInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.POperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.PTriggerInAtomicSwcTypeInstanceRef;
import autosar40.swcomponent.components.instancerefs.PVariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RModeGroupInAtomicSWCInstanceRef;
import autosar40.swcomponent.components.instancerefs.RModeInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.ROperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RTriggerInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RVariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.TriggerInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.VariableInAtomicSwcInstanceRef;
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
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class InstancerefsPackageImpl
extends EPackageImpl
implements InstancerefsPackage {
    private EClass modeGroupInAtomicSwcInstanceRefEClass = null;
    private EClass operationInAtomicSwcInstanceRefEClass = null;
    private EClass pModeGroupInAtomicSwcInstanceRefEClass = null;
    private EClass pOperationInAtomicSwcInstanceRefEClass = null;
    private EClass pTriggerInAtomicSwcTypeInstanceRefEClass = null;
    private EClass triggerInAtomicSwcInstanceRefEClass = null;
    private EClass pVariableInAtomicSwcInstanceRefEClass = null;
    private EClass variableInAtomicSwcInstanceRefEClass = null;
    private EClass rModeGroupInAtomicSWCInstanceRefEClass = null;
    private EClass rModeInAtomicSwcInstanceRefEClass = null;
    private EClass rOperationInAtomicSwcInstanceRefEClass = null;
    private EClass rTriggerInAtomicSwcInstanceRefEClass = null;
    private EClass rVariableInAtomicSwcInstanceRefEClass = null;
    private EClass innerPortGroupInCompositionInstanceRefEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private InstancerefsPackageImpl() {
        super("http://autosar.org/schema/r4.0/autosar40/swc/components/ir", (EFactory)InstancerefsFactory.eINSTANCE);
    }

    public static InstancerefsPackage init() {
        if (isInited) {
            return (InstancerefsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/components/ir");
        }
        InstancerefsPackageImpl theInstancerefsPackage = (InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/swc/components/ir") instanceof InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/swc/components/ir") : new InstancerefsPackageImpl());
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
        autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.impl.InstancerefsPackageImpl theInstancerefsPackage_1 = (autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.impl.InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/ir") instanceof autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.impl.InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/ir") : autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.InstancerefsPackage.eINSTANCE);
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
        BswbehaviorPackageImpl theBswbehaviorPackage = (BswbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bb") instanceof BswbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bb") : BswbehaviorPackage.eINSTANCE);
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
        theInstancerefsPackage.createPackageContents();
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
        theInstancerefsPackage_1.createPackageContents();
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
        theBswbehaviorPackage.createPackageContents();
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
        theInstancerefsPackage.initializePackageContents();
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
        theInstancerefsPackage_1.initializePackageContents();
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
        theBswbehaviorPackage.initializePackageContents();
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
        theInstancerefsPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/schema/r4.0/autosar40/swc/components/ir", (Object)theInstancerefsPackage);
        return theInstancerefsPackage;
    }

    public EClass getModeGroupInAtomicSwcInstanceRef() {
        return this.modeGroupInAtomicSwcInstanceRefEClass;
    }

    public EReference getModeGroupInAtomicSwcInstanceRef_ModeAccessPoint() {
        return (EReference)this.modeGroupInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(0);
    }

    public EClass getOperationInAtomicSwcInstanceRef() {
        return this.operationInAtomicSwcInstanceRefEClass;
    }

    public EClass getPModeGroupInAtomicSwcInstanceRef() {
        return this.pModeGroupInAtomicSwcInstanceRefEClass;
    }

    public EReference getPModeGroupInAtomicSwcInstanceRef_ContextPPort() {
        return (EReference)this.pModeGroupInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPModeGroupInAtomicSwcInstanceRef_TargetModeGroup() {
        return (EReference)this.pModeGroupInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPModeGroupInAtomicSwcInstanceRef_Base() {
        return (EReference)this.pModeGroupInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(2);
    }

    public EClass getPOperationInAtomicSwcInstanceRef() {
        return this.pOperationInAtomicSwcInstanceRefEClass;
    }

    public EReference getPOperationInAtomicSwcInstanceRef_OperationInvokedEvent() {
        return (EReference)this.pOperationInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPOperationInAtomicSwcInstanceRef_ContextPPort() {
        return (EReference)this.pOperationInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPOperationInAtomicSwcInstanceRef_TargetProvidedOperation() {
        return (EReference)this.pOperationInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(2);
    }

    public EReference getPOperationInAtomicSwcInstanceRef_Base() {
        return (EReference)this.pOperationInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(3);
    }

    public EClass getPTriggerInAtomicSwcTypeInstanceRef() {
        return this.pTriggerInAtomicSwcTypeInstanceRefEClass;
    }

    public EReference getPTriggerInAtomicSwcTypeInstanceRef_ContextPPort() {
        return (EReference)this.pTriggerInAtomicSwcTypeInstanceRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPTriggerInAtomicSwcTypeInstanceRef_TargetTrigger() {
        return (EReference)this.pTriggerInAtomicSwcTypeInstanceRefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPTriggerInAtomicSwcTypeInstanceRef_Base() {
        return (EReference)this.pTriggerInAtomicSwcTypeInstanceRefEClass.getEStructuralFeatures().get(2);
    }

    public EClass getTriggerInAtomicSwcInstanceRef() {
        return this.triggerInAtomicSwcInstanceRefEClass;
    }

    public EClass getPVariableInAtomicSwcInstanceRef() {
        return this.pVariableInAtomicSwcInstanceRefEClass;
    }

    public EReference getPVariableInAtomicSwcInstanceRef_ContextPPort() {
        return (EReference)this.pVariableInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPVariableInAtomicSwcInstanceRef_TargetDataElement() {
        return (EReference)this.pVariableInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPVariableInAtomicSwcInstanceRef_Base() {
        return (EReference)this.pVariableInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(2);
    }

    public EClass getVariableInAtomicSwcInstanceRef() {
        return this.variableInAtomicSwcInstanceRefEClass;
    }

    public EClass getRModeGroupInAtomicSWCInstanceRef() {
        return this.rModeGroupInAtomicSWCInstanceRefEClass;
    }

    public EReference getRModeGroupInAtomicSWCInstanceRef_ContextRPort() {
        return (EReference)this.rModeGroupInAtomicSWCInstanceRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getRModeGroupInAtomicSWCInstanceRef_TargetModeGroup() {
        return (EReference)this.rModeGroupInAtomicSWCInstanceRefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getRModeGroupInAtomicSWCInstanceRef_Base() {
        return (EReference)this.rModeGroupInAtomicSWCInstanceRefEClass.getEStructuralFeatures().get(2);
    }

    public EClass getRModeInAtomicSwcInstanceRef() {
        return this.rModeInAtomicSwcInstanceRefEClass;
    }

    public EReference getRModeInAtomicSwcInstanceRef_Base() {
        return (EReference)this.rModeInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getRModeInAtomicSwcInstanceRef_ContextPort() {
        return (EReference)this.rModeInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getRModeInAtomicSwcInstanceRef_ContextModeDeclarationGroupPrototype() {
        return (EReference)this.rModeInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(2);
    }

    public EReference getRModeInAtomicSwcInstanceRef_TargetModeDeclaration() {
        return (EReference)this.rModeInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(3);
    }

    public EClass getROperationInAtomicSwcInstanceRef() {
        return this.rOperationInAtomicSwcInstanceRefEClass;
    }

    public EReference getROperationInAtomicSwcInstanceRef_ServerCallPoint() {
        return (EReference)this.rOperationInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getROperationInAtomicSwcInstanceRef_ContextRPort() {
        return (EReference)this.rOperationInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getROperationInAtomicSwcInstanceRef_TargetRequiredOperation() {
        return (EReference)this.rOperationInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(2);
    }

    public EReference getROperationInAtomicSwcInstanceRef_Base() {
        return (EReference)this.rOperationInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(3);
    }

    public EClass getRTriggerInAtomicSwcInstanceRef() {
        return this.rTriggerInAtomicSwcInstanceRefEClass;
    }

    public EReference getRTriggerInAtomicSwcInstanceRef_ExternalTriggerOccurredEvent() {
        return (EReference)this.rTriggerInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getRTriggerInAtomicSwcInstanceRef_ContextRPort() {
        return (EReference)this.rTriggerInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getRTriggerInAtomicSwcInstanceRef_TargetTrigger() {
        return (EReference)this.rTriggerInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(2);
    }

    public EReference getRTriggerInAtomicSwcInstanceRef_Base() {
        return (EReference)this.rTriggerInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(3);
    }

    public EClass getRVariableInAtomicSwcInstanceRef() {
        return this.rVariableInAtomicSwcInstanceRefEClass;
    }

    public EReference getRVariableInAtomicSwcInstanceRef_ContextRPort() {
        return (EReference)this.rVariableInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getRVariableInAtomicSwcInstanceRef_TargetDataElement() {
        return (EReference)this.rVariableInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getRVariableInAtomicSwcInstanceRef_Base() {
        return (EReference)this.rVariableInAtomicSwcInstanceRefEClass.getEStructuralFeatures().get(2);
    }

    public EClass getInnerPortGroupInCompositionInstanceRef() {
        return this.innerPortGroupInCompositionInstanceRefEClass;
    }

    public EReference getInnerPortGroupInCompositionInstanceRef_PortGroup() {
        return (EReference)this.innerPortGroupInCompositionInstanceRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getInnerPortGroupInCompositionInstanceRef_Base() {
        return (EReference)this.innerPortGroupInCompositionInstanceRefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getInnerPortGroupInCompositionInstanceRef_Contexts() {
        return (EReference)this.innerPortGroupInCompositionInstanceRefEClass.getEStructuralFeatures().get(2);
    }

    public EReference getInnerPortGroupInCompositionInstanceRef_Target() {
        return (EReference)this.innerPortGroupInCompositionInstanceRefEClass.getEStructuralFeatures().get(3);
    }

    public InstancerefsFactory getInstancerefsFactory() {
        return (InstancerefsFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.modeGroupInAtomicSwcInstanceRefEClass = this.createEClass(0);
        this.createEReference(this.modeGroupInAtomicSwcInstanceRefEClass, 4);
        this.operationInAtomicSwcInstanceRefEClass = this.createEClass(1);
        this.pModeGroupInAtomicSwcInstanceRefEClass = this.createEClass(2);
        this.createEReference(this.pModeGroupInAtomicSwcInstanceRefEClass, 7);
        this.createEReference(this.pModeGroupInAtomicSwcInstanceRefEClass, 8);
        this.createEReference(this.pModeGroupInAtomicSwcInstanceRefEClass, 9);
        this.pOperationInAtomicSwcInstanceRefEClass = this.createEClass(3);
        this.createEReference(this.pOperationInAtomicSwcInstanceRefEClass, 6);
        this.createEReference(this.pOperationInAtomicSwcInstanceRefEClass, 7);
        this.createEReference(this.pOperationInAtomicSwcInstanceRefEClass, 8);
        this.createEReference(this.pOperationInAtomicSwcInstanceRefEClass, 9);
        this.pTriggerInAtomicSwcTypeInstanceRefEClass = this.createEClass(4);
        this.createEReference(this.pTriggerInAtomicSwcTypeInstanceRefEClass, 4);
        this.createEReference(this.pTriggerInAtomicSwcTypeInstanceRefEClass, 5);
        this.createEReference(this.pTriggerInAtomicSwcTypeInstanceRefEClass, 6);
        this.triggerInAtomicSwcInstanceRefEClass = this.createEClass(5);
        this.pVariableInAtomicSwcInstanceRefEClass = this.createEClass(6);
        this.createEReference(this.pVariableInAtomicSwcInstanceRefEClass, 6);
        this.createEReference(this.pVariableInAtomicSwcInstanceRefEClass, 7);
        this.createEReference(this.pVariableInAtomicSwcInstanceRefEClass, 8);
        this.variableInAtomicSwcInstanceRefEClass = this.createEClass(7);
        this.rModeGroupInAtomicSWCInstanceRefEClass = this.createEClass(8);
        this.createEReference(this.rModeGroupInAtomicSWCInstanceRefEClass, 7);
        this.createEReference(this.rModeGroupInAtomicSWCInstanceRefEClass, 8);
        this.createEReference(this.rModeGroupInAtomicSWCInstanceRefEClass, 9);
        this.rModeInAtomicSwcInstanceRefEClass = this.createEClass(9);
        this.createEReference(this.rModeInAtomicSwcInstanceRefEClass, 7);
        this.createEReference(this.rModeInAtomicSwcInstanceRefEClass, 8);
        this.createEReference(this.rModeInAtomicSwcInstanceRefEClass, 9);
        this.createEReference(this.rModeInAtomicSwcInstanceRefEClass, 10);
        this.rOperationInAtomicSwcInstanceRefEClass = this.createEClass(10);
        this.createEReference(this.rOperationInAtomicSwcInstanceRefEClass, 6);
        this.createEReference(this.rOperationInAtomicSwcInstanceRefEClass, 7);
        this.createEReference(this.rOperationInAtomicSwcInstanceRefEClass, 8);
        this.createEReference(this.rOperationInAtomicSwcInstanceRefEClass, 9);
        this.rTriggerInAtomicSwcInstanceRefEClass = this.createEClass(11);
        this.createEReference(this.rTriggerInAtomicSwcInstanceRefEClass, 4);
        this.createEReference(this.rTriggerInAtomicSwcInstanceRefEClass, 5);
        this.createEReference(this.rTriggerInAtomicSwcInstanceRefEClass, 6);
        this.createEReference(this.rTriggerInAtomicSwcInstanceRefEClass, 7);
        this.rVariableInAtomicSwcInstanceRefEClass = this.createEClass(12);
        this.createEReference(this.rVariableInAtomicSwcInstanceRefEClass, 6);
        this.createEReference(this.rVariableInAtomicSwcInstanceRefEClass, 7);
        this.createEReference(this.rVariableInAtomicSwcInstanceRefEClass, 8);
        this.innerPortGroupInCompositionInstanceRefEClass = this.createEClass(13);
        this.createEReference(this.innerPortGroupInCompositionInstanceRefEClass, 4);
        this.createEReference(this.innerPortGroupInCompositionInstanceRefEClass, 5);
        this.createEReference(this.innerPortGroupInCompositionInstanceRefEClass, 6);
        this.createEReference(this.innerPortGroupInCompositionInstanceRefEClass, 7);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("instancerefs");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/schema/r4.0/autosar40/swc/components/ir");
        AbstractstructurePackage theAbstractstructurePackage = (AbstractstructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/as");
        GinstancerefsPackage theGinstancerefsPackage = (GinstancerefsPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/components/ir");
        ModedeclarationgroupPackage theModedeclarationgroupPackage = (ModedeclarationgroupPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/mdg");
        ComponentsPackage theComponentsPackage = (ComponentsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/components");
        ModedeclarationPackage theModedeclarationPackage = (ModedeclarationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/md");
        RteeventsPackage theRteeventsPackage = (RteeventsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/rtee");
        PortinterfacePackage thePortinterfacePackage = (PortinterfacePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/pi");
        TriggerdeclarationPackage theTriggerdeclarationPackage = (TriggerdeclarationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/td");
        DataprototypesPackage theDataprototypesPackage = (DataprototypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/dp");
        ServercallPackage theServercallPackage = (ServercallPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/sc");
        CompositionPackage theCompositionPackage = (CompositionPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/composition");
        this.modeGroupInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theAbstractstructurePackage.getAtpInstanceRef());
        this.modeGroupInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theGinstancerefsPackage.getGModeGroupInAtomicSwcIRef());
        this.operationInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theAbstractstructurePackage.getAtpInstanceRef());
        this.operationInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theGinstancerefsPackage.getGOperationInAtomicSwcIRef());
        this.pModeGroupInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)this.getModeGroupInAtomicSwcInstanceRef());
        this.pModeGroupInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theGinstancerefsPackage.getGPModeGroupInAtomicSwcIRef());
        this.pOperationInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)this.getOperationInAtomicSwcInstanceRef());
        this.pOperationInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theGinstancerefsPackage.getGPOperationInAtomicSwcIRef());
        this.pTriggerInAtomicSwcTypeInstanceRefEClass.getESuperTypes().add((Object)this.getTriggerInAtomicSwcInstanceRef());
        this.triggerInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theAbstractstructurePackage.getAtpInstanceRef());
        this.pVariableInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)this.getVariableInAtomicSwcInstanceRef());
        this.pVariableInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theGinstancerefsPackage.getGPVariableInAtomicSwcIRef());
        this.variableInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theAbstractstructurePackage.getAtpInstanceRef());
        this.variableInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theGinstancerefsPackage.getGVariableInAtomicSwcIRef());
        this.rModeGroupInAtomicSWCInstanceRefEClass.getESuperTypes().add((Object)this.getModeGroupInAtomicSwcInstanceRef());
        this.rModeGroupInAtomicSWCInstanceRefEClass.getESuperTypes().add((Object)theGinstancerefsPackage.getGRModeGroupInAtomicSwcIRef());
        this.rModeInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theAbstractstructurePackage.getAtpInstanceRef());
        this.rModeInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theGinstancerefsPackage.getGRModeInAtomicSwcIRef());
        this.rOperationInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)this.getOperationInAtomicSwcInstanceRef());
        this.rOperationInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theGinstancerefsPackage.getGROperationInAtomicSwcIRef());
        this.rTriggerInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)this.getTriggerInAtomicSwcInstanceRef());
        this.rVariableInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)this.getVariableInAtomicSwcInstanceRef());
        this.rVariableInAtomicSwcInstanceRefEClass.getESuperTypes().add((Object)theGinstancerefsPackage.getGRVariableInAtomicSwcIRef());
        this.innerPortGroupInCompositionInstanceRefEClass.getESuperTypes().add((Object)theAbstractstructurePackage.getAtpInstanceRef());
        this.initEClass(this.modeGroupInAtomicSwcInstanceRefEClass, ModeGroupInAtomicSwcInstanceRef.class, "ModeGroupInAtomicSwcInstanceRef", true, false, true);
        this.initEReference(this.getModeGroupInAtomicSwcInstanceRef_ModeAccessPoint(), (EClassifier)theModedeclarationgroupPackage.getModeAccessPoint(), theModedeclarationgroupPackage.getModeAccessPoint_ModeGroup(), "modeAccessPoint", null, 0, 1, ModeGroupInAtomicSwcInstanceRef.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.operationInAtomicSwcInstanceRefEClass, OperationInAtomicSwcInstanceRef.class, "OperationInAtomicSwcInstanceRef", true, false, true);
        this.initEClass(this.pModeGroupInAtomicSwcInstanceRefEClass, PModeGroupInAtomicSwcInstanceRef.class, "PModeGroupInAtomicSwcInstanceRef", false, false, true);
        this.initEReference(this.getPModeGroupInAtomicSwcInstanceRef_ContextPPort(), (EClassifier)theComponentsPackage.getPPortPrototype(), null, "contextPPort", null, 0, 1, PModeGroupInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPModeGroupInAtomicSwcInstanceRef_TargetModeGroup(), (EClassifier)theModedeclarationPackage.getModeDeclarationGroupPrototype(), null, "targetModeGroup", null, 0, 1, PModeGroupInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPModeGroupInAtomicSwcInstanceRef_Base(), (EClassifier)theComponentsPackage.getAtomicSwComponentType(), null, "base", null, 0, 1, PModeGroupInAtomicSwcInstanceRef.class, true, true, false, false, false, false, true, true, true);
        this.initEClass(this.pOperationInAtomicSwcInstanceRefEClass, POperationInAtomicSwcInstanceRef.class, "POperationInAtomicSwcInstanceRef", false, false, true);
        this.initEReference(this.getPOperationInAtomicSwcInstanceRef_OperationInvokedEvent(), (EClassifier)theRteeventsPackage.getOperationInvokedEvent(), theRteeventsPackage.getOperationInvokedEvent_Operation(), "operationInvokedEvent", null, 0, 1, POperationInAtomicSwcInstanceRef.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getPOperationInAtomicSwcInstanceRef_ContextPPort(), (EClassifier)theComponentsPackage.getPPortPrototype(), null, "contextPPort", null, 0, 1, POperationInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPOperationInAtomicSwcInstanceRef_TargetProvidedOperation(), (EClassifier)thePortinterfacePackage.getClientServerOperation(), null, "targetProvidedOperation", null, 0, 1, POperationInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPOperationInAtomicSwcInstanceRef_Base(), (EClassifier)theComponentsPackage.getAtomicSwComponentType(), null, "base", null, 0, 1, POperationInAtomicSwcInstanceRef.class, true, true, false, false, false, false, true, true, true);
        this.initEClass(this.pTriggerInAtomicSwcTypeInstanceRefEClass, PTriggerInAtomicSwcTypeInstanceRef.class, "PTriggerInAtomicSwcTypeInstanceRef", false, false, true);
        this.initEReference(this.getPTriggerInAtomicSwcTypeInstanceRef_ContextPPort(), (EClassifier)theComponentsPackage.getPPortPrototype(), null, "contextPPort", null, 0, 1, PTriggerInAtomicSwcTypeInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPTriggerInAtomicSwcTypeInstanceRef_TargetTrigger(), (EClassifier)theTriggerdeclarationPackage.getTrigger(), null, "targetTrigger", null, 0, 1, PTriggerInAtomicSwcTypeInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPTriggerInAtomicSwcTypeInstanceRef_Base(), (EClassifier)theComponentsPackage.getAtomicSwComponentType(), null, "base", null, 0, 1, PTriggerInAtomicSwcTypeInstanceRef.class, true, true, false, false, false, false, true, true, true);
        this.initEClass(this.triggerInAtomicSwcInstanceRefEClass, TriggerInAtomicSwcInstanceRef.class, "TriggerInAtomicSwcInstanceRef", true, false, true);
        this.initEClass(this.pVariableInAtomicSwcInstanceRefEClass, PVariableInAtomicSwcInstanceRef.class, "PVariableInAtomicSwcInstanceRef", false, false, true);
        this.initEReference(this.getPVariableInAtomicSwcInstanceRef_ContextPPort(), (EClassifier)theComponentsPackage.getPPortPrototype(), null, "contextPPort", null, 0, 1, PVariableInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPVariableInAtomicSwcInstanceRef_TargetDataElement(), (EClassifier)theDataprototypesPackage.getVariableDataPrototype(), null, "targetDataElement", null, 0, 1, PVariableInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPVariableInAtomicSwcInstanceRef_Base(), (EClassifier)theComponentsPackage.getAtomicSwComponentType(), null, "base", null, 0, 1, PVariableInAtomicSwcInstanceRef.class, true, true, false, false, false, false, true, true, true);
        this.initEClass(this.variableInAtomicSwcInstanceRefEClass, VariableInAtomicSwcInstanceRef.class, "VariableInAtomicSwcInstanceRef", true, false, true);
        this.initEClass(this.rModeGroupInAtomicSWCInstanceRefEClass, RModeGroupInAtomicSWCInstanceRef.class, "RModeGroupInAtomicSWCInstanceRef", false, false, true);
        this.initEReference(this.getRModeGroupInAtomicSWCInstanceRef_ContextRPort(), (EClassifier)theComponentsPackage.getRPortPrototype(), null, "contextRPort", null, 0, 1, RModeGroupInAtomicSWCInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getRModeGroupInAtomicSWCInstanceRef_TargetModeGroup(), (EClassifier)theModedeclarationPackage.getModeDeclarationGroupPrototype(), null, "targetModeGroup", null, 0, 1, RModeGroupInAtomicSWCInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getRModeGroupInAtomicSWCInstanceRef_Base(), (EClassifier)theComponentsPackage.getAtomicSwComponentType(), null, "base", null, 0, 1, RModeGroupInAtomicSWCInstanceRef.class, true, true, false, false, false, false, true, true, true);
        this.initEClass(this.rModeInAtomicSwcInstanceRefEClass, RModeInAtomicSwcInstanceRef.class, "RModeInAtomicSwcInstanceRef", false, false, true);
        this.initEReference(this.getRModeInAtomicSwcInstanceRef_Base(), (EClassifier)theComponentsPackage.getAtomicSwComponentType(), null, "base", null, 0, 1, RModeInAtomicSwcInstanceRef.class, true, true, false, false, false, false, true, true, true);
        this.initEReference(this.getRModeInAtomicSwcInstanceRef_ContextPort(), (EClassifier)theComponentsPackage.getRPortPrototype(), null, "contextPort", null, 0, 1, RModeInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getRModeInAtomicSwcInstanceRef_ContextModeDeclarationGroupPrototype(), (EClassifier)theModedeclarationPackage.getModeDeclarationGroupPrototype(), null, "contextModeDeclarationGroupPrototype", null, 0, 1, RModeInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getRModeInAtomicSwcInstanceRef_TargetModeDeclaration(), (EClassifier)theModedeclarationPackage.getModeDeclaration(), null, "targetModeDeclaration", null, 0, 1, RModeInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.rOperationInAtomicSwcInstanceRefEClass, ROperationInAtomicSwcInstanceRef.class, "ROperationInAtomicSwcInstanceRef", false, false, true);
        this.initEReference(this.getROperationInAtomicSwcInstanceRef_ServerCallPoint(), (EClassifier)theServercallPackage.getServerCallPoint(), theServercallPackage.getServerCallPoint_Operation(), "serverCallPoint", null, 0, 1, ROperationInAtomicSwcInstanceRef.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getROperationInAtomicSwcInstanceRef_ContextRPort(), (EClassifier)theComponentsPackage.getRPortPrototype(), null, "contextRPort", null, 0, 1, ROperationInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getROperationInAtomicSwcInstanceRef_TargetRequiredOperation(), (EClassifier)thePortinterfacePackage.getClientServerOperation(), null, "targetRequiredOperation", null, 0, 1, ROperationInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getROperationInAtomicSwcInstanceRef_Base(), (EClassifier)theComponentsPackage.getAtomicSwComponentType(), null, "base", null, 0, 1, ROperationInAtomicSwcInstanceRef.class, true, true, false, false, false, false, true, true, true);
        this.initEClass(this.rTriggerInAtomicSwcInstanceRefEClass, RTriggerInAtomicSwcInstanceRef.class, "RTriggerInAtomicSwcInstanceRef", false, false, true);
        this.initEReference(this.getRTriggerInAtomicSwcInstanceRef_ExternalTriggerOccurredEvent(), (EClassifier)theRteeventsPackage.getExternalTriggerOccurredEvent(), theRteeventsPackage.getExternalTriggerOccurredEvent_Trigger(), "externalTriggerOccurredEvent", null, 0, 1, RTriggerInAtomicSwcInstanceRef.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getRTriggerInAtomicSwcInstanceRef_ContextRPort(), (EClassifier)theComponentsPackage.getRPortPrototype(), null, "contextRPort", null, 0, 1, RTriggerInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getRTriggerInAtomicSwcInstanceRef_TargetTrigger(), (EClassifier)theTriggerdeclarationPackage.getTrigger(), null, "targetTrigger", null, 0, 1, RTriggerInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getRTriggerInAtomicSwcInstanceRef_Base(), (EClassifier)theComponentsPackage.getAtomicSwComponentType(), null, "base", null, 0, 1, RTriggerInAtomicSwcInstanceRef.class, true, true, false, false, false, false, true, true, true);
        this.initEClass(this.rVariableInAtomicSwcInstanceRefEClass, RVariableInAtomicSwcInstanceRef.class, "RVariableInAtomicSwcInstanceRef", false, false, true);
        this.initEReference(this.getRVariableInAtomicSwcInstanceRef_ContextRPort(), (EClassifier)theComponentsPackage.getRPortPrototype(), null, "contextRPort", null, 0, 1, RVariableInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getRVariableInAtomicSwcInstanceRef_TargetDataElement(), (EClassifier)theDataprototypesPackage.getVariableDataPrototype(), null, "targetDataElement", null, 0, 1, RVariableInAtomicSwcInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getRVariableInAtomicSwcInstanceRef_Base(), (EClassifier)theComponentsPackage.getAtomicSwComponentType(), null, "base", null, 0, 1, RVariableInAtomicSwcInstanceRef.class, true, true, false, false, false, false, true, true, true);
        this.initEClass(this.innerPortGroupInCompositionInstanceRefEClass, InnerPortGroupInCompositionInstanceRef.class, "InnerPortGroupInCompositionInstanceRef", false, false, true);
        this.initEReference(this.getInnerPortGroupInCompositionInstanceRef_PortGroup(), (EClassifier)theComponentsPackage.getPortGroup(), theComponentsPackage.getPortGroup_InnerGroups(), "portGroup", null, 0, 1, InnerPortGroupInCompositionInstanceRef.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getInnerPortGroupInCompositionInstanceRef_Base(), (EClassifier)theCompositionPackage.getCompositionSwComponentType(), null, "base", null, 0, 1, InnerPortGroupInCompositionInstanceRef.class, true, true, false, false, false, false, true, true, true);
        this.initEReference(this.getInnerPortGroupInCompositionInstanceRef_Contexts(), (EClassifier)theCompositionPackage.getSwComponentPrototype(), null, "contexts", null, 0, -1, InnerPortGroupInCompositionInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getInnerPortGroupInCompositionInstanceRef_Target(), (EClassifier)theComponentsPackage.getPortGroup(), null, "target", null, 0, 1, InnerPortGroupInCompositionInstanceRef.class, false, false, true, false, true, false, true, false, true);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createTaggedValuesOfGeneralization_AtpInstanceRefAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ModeGroupInAtomicSwcInstanceRefAnnotations();
        this.createSpecializationAnnotations();
        this.createTaggedValuesOfGeneralization_OperationInAtomicSwcInstanceRefAnnotations();
        this.createTaggedValuesOfGeneralization_TriggerInAtomicSwcInstanceRefAnnotations();
        this.createTaggedValuesOfGeneralization_VariableInAtomicSwcInstanceRefAnnotations();
        this.createGenModelAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "InstanceRefs", "Modified", "Tue Oct 28 15:11:52 CET 2008", "Created", "Tue Oct 28 15:11:52 CET 2008", "GUID", "95CFAE22-9811-478c-A8E8-41C43980541B", "Id", "1225199512"});
        this.addAnnotation((ENamedElement)this.modeGroupInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "ModeGroupInAtomicSwcInstanceRef", "Modified", "Sun Nov 09 13:12:34 CET 2008", "Created", "Mon Nov 03 17:23:23 CET 2008", "GUID", "18F69C00-DE5C-4080-915F-D4EEED0E7661", "Id", "634428066"});
        this.addAnnotation((ENamedElement)this.operationInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "OperationInAtomicSwcInstanceRef", "Modified", "Sun Nov 09 13:12:50 CET 2008", "Created", "Sat Oct 11 18:50:42 CEST 2008", "GUID", "F9885E75-8B40-4b6c-BAFD-E3EB390ECF6D", "Id", "-883928208"});
        this.addAnnotation((ENamedElement)this.pModeGroupInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "PModeGroupInAtomicSwcInstanceRef", "Modified", "Tue Nov 25 08:48:17 CET 2008", "Created", "Mon Nov 03 18:08:34 CET 2008", "GUID", "E0AC635B-777A-42e6-98CA-759FBFEB9D07", "Id", "1287476310"});
        this.addAnnotation((ENamedElement)this.pOperationInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "POperationInAtomicSwcInstanceRef", "Modified", "Sun Nov 09 13:12:57 CET 2008", "Created", "Thu Nov 06 15:21:17 CET 2008", "GUID", "289D1143-B5DA-4432-BF33-9856EAE56241", "Id", "1631947408"});
        this.addAnnotation((ENamedElement)this.pTriggerInAtomicSwcTypeInstanceRefEClass, source, new String[]{"Name", "PTriggerInAtomicSwcTypeInstanceRef", "Modified", "Sun Nov 09 13:13:11 CET 2008", "Created", "Thu Nov 06 16:04:59 CET 2008", "GUID", "7B1C20C0-E968-42ea-85EB-9A1241D6327C", "Id", "1482450034"});
        this.addAnnotation((ENamedElement)this.triggerInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "TriggerInAtomicSwcInstanceRef", "Modified", "Sun Nov 09 13:14:23 CET 2008", "Created", "Mon Nov 03 17:46:55 CET 2008", "GUID", "82DC24A7-7C58-4622-8C80-7393E5A8C2D8", "Id", "-408571450"});
        this.addAnnotation((ENamedElement)this.pVariableInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "PVariableInAtomicSwcInstanceRef", "Modified", "Sun Nov 09 13:13:18 CET 2008", "Created", "Thu Nov 06 16:14:55 CET 2008", "GUID", "70F50C2C-9F65-43a6-906F-740CCC4D6CE3", "Id", "1747561967"});
        this.addAnnotation((ENamedElement)this.variableInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "VariableInAtomicSwcInstanceRef", "Modified", "Sun Nov 09 13:14:29 CET 2008", "Created", "Sun Oct 12 11:55:56 CEST 2008", "GUID", "EEDE049E-0A5A-4313-AFE4-9DD2D64E4B07", "Id", "-1888920181"});
        this.addAnnotation((ENamedElement)this.rModeGroupInAtomicSWCInstanceRefEClass, source, new String[]{"Name", "RModeGroupInAtomicSWCInstanceRef", "Modified", "Sun Nov 09 13:13:53 CET 2008", "Created", "Mon Nov 03 18:08:56 CET 2008", "GUID", "168A2275-2741-4c7d-BB09-49D23C5F3039", "Id", "1850927732"});
        this.addAnnotation((ENamedElement)this.rModeInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "RModeInAtomicSwcInstanceRef", "Modified", "Sun Nov 09 13:14:00 CET 2008", "Created", "Sat Oct 11 18:05:41 CEST 2008", "GUID", "E55C3256-38F6-42be-8FF8-182397F71788", "Id", "-1269152782"});
        this.addAnnotation((ENamedElement)this.rOperationInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "ROperationInAtomicSwcInstanceRef", "Modified", "Sun Nov 09 13:14:06 CET 2008", "Created", "Thu Nov 06 15:20:56 CET 2008", "GUID", "1403A1E1-6C46-497e-AE5A-8BC46BA90EEB", "Id", "-61149678"});
        this.addAnnotation((ENamedElement)this.rTriggerInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "RTriggerInAtomicSwcInstanceRef", "Modified", "Sun Nov 09 13:14:12 CET 2008", "Created", "Thu Nov 06 16:04:52 CET 2008", "GUID", "2596D5FC-0542-4483-B576-D5ECAFCD6FC4", "Id", "-1349487196"});
        this.addAnnotation((ENamedElement)this.rVariableInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "RVariableInAtomicSwcInstanceRef", "Modified", "Sun Nov 09 13:14:18 CET 2008", "Created", "Thu Nov 06 16:14:49 CET 2008", "GUID", "A7792696-BF96-442c-9FF0-C7A049D16560", "Id", "483694105"});
        this.addAnnotation((ENamedElement)this.innerPortGroupInCompositionInstanceRefEClass, source, new String[]{"Name", "InnerPortGroupInCompositionInstanceRef", "Modified", "Fri Oct 23 08:08:14 CEST 2009", "Created", "Mon Apr 06 10:37:55 CEST 2009", "GUID", "C19259F3-048C-4ff1-878E-403A039ED2B3", "Id", "-1487669762"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "INSTANCE-REFS", "xml.namePlural", "INSTANCE-REFSS"});
        this.addAnnotation((ENamedElement)this.modeGroupInAtomicSwcInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"ModeGroupInAtomicSwcInstanceRef\"", "mmt.qualifiedName", "ModeGroupInAtomicSwcInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "MODE-GROUP-IN-ATOMIC-SWC-INSTANCE-REF-IREF", "xml.namePlural", "MODE-GROUP-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.operationInAtomicSwcInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"OperationInAtomicSwcInstanceRef\"", "mmt.qualifiedName", "OperationInAtomicSwcInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "OPERATION-IN-ATOMIC-SWC-INSTANCE-REF-IREF", "xml.namePlural", "OPERATION-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.pModeGroupInAtomicSwcInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"PModeGroupInAtomicSwcInstanceRef\"", "mmt.qualifiedName", "PModeGroupInAtomicSwcInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "P-MODE-GROUP-IN-ATOMIC-SWC-INSTANCE-REF", "xml.namePlural", "P-MODE-GROUP-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPModeGroupInAtomicSwcInstanceRef_ContextPPort(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"PModeGroupInAtomicSwcInstanceRef.contextPPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "PModeGroupInAtomicSwcInstanceRef.contextPPort", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "CONTEXT-P-PORT-REF", "xml.namePlural", "CONTEXT-P-PORT-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPModeGroupInAtomicSwcInstanceRef_TargetModeGroup(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"PModeGroupInAtomicSwcInstanceRef.targetModeGroup\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "PModeGroupInAtomicSwcInstanceRef.targetModeGroup", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TARGET-MODE-GROUP-REF", "xml.namePlural", "TARGET-MODE-GROUP-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.pOperationInAtomicSwcInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"POperationInAtomicSwcInstanceRef\"", "mmt.qualifiedName", "POperationInAtomicSwcInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "P-OPERATION-IN-ATOMIC-SWC-INSTANCE-REF", "xml.namePlural", "P-OPERATION-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPOperationInAtomicSwcInstanceRef_ContextPPort(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"POperationInAtomicSwcInstanceRef.contextPPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "POperationInAtomicSwcInstanceRef.contextPPort", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "CONTEXT-P-PORT-REF", "xml.namePlural", "CONTEXT-P-PORT-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPOperationInAtomicSwcInstanceRef_TargetProvidedOperation(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"POperationInAtomicSwcInstanceRef.targetProvidedOperation\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "POperationInAtomicSwcInstanceRef.targetProvidedOperation", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TARGET-PROVIDED-OPERATION-REF", "xml.namePlural", "TARGET-PROVIDED-OPERATION-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.pTriggerInAtomicSwcTypeInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"PTriggerInAtomicSwcTypeInstanceRef\"", "mmt.qualifiedName", "PTriggerInAtomicSwcTypeInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "P-TRIGGER-IN-ATOMIC-SWC-TYPE-INSTANCE-REF", "xml.namePlural", "P-TRIGGER-IN-ATOMIC-SWC-TYPE-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPTriggerInAtomicSwcTypeInstanceRef_ContextPPort(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"PTriggerInAtomicSwcTypeInstanceRef.contextPPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "PTriggerInAtomicSwcTypeInstanceRef.contextPPort", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "CONTEXT-P-PORT-REF", "xml.namePlural", "CONTEXT-P-PORT-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPTriggerInAtomicSwcTypeInstanceRef_TargetTrigger(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"PTriggerInAtomicSwcTypeInstanceRef.targetTrigger\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "PTriggerInAtomicSwcTypeInstanceRef.targetTrigger", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TARGET-TRIGGER-REF", "xml.namePlural", "TARGET-TRIGGER-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.triggerInAtomicSwcInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"TriggerInAtomicSwcInstanceRef\"", "mmt.qualifiedName", "TriggerInAtomicSwcInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "TRIGGER-IN-ATOMIC-SWC-INSTANCE-REF-IREF", "xml.namePlural", "TRIGGER-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.pVariableInAtomicSwcInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"PVariableInAtomicSwcInstanceRef\"", "mmt.qualifiedName", "PVariableInAtomicSwcInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "P-VARIABLE-IN-ATOMIC-SWC-INSTANCE-REF", "xml.namePlural", "P-VARIABLE-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPVariableInAtomicSwcInstanceRef_ContextPPort(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"PVariableInAtomicSwcInstanceRef.contextPPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "PVariableInAtomicSwcInstanceRef.contextPPort", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "CONTEXT-P-PORT-REF", "xml.namePlural", "CONTEXT-P-PORT-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPVariableInAtomicSwcInstanceRef_TargetDataElement(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"PVariableInAtomicSwcInstanceRef.targetDataElement\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "PVariableInAtomicSwcInstanceRef.targetDataElement", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TARGET-DATA-ELEMENT-REF", "xml.namePlural", "TARGET-DATA-ELEMENT-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.variableInAtomicSwcInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"VariableInAtomicSwcInstanceRef\"", "mmt.qualifiedName", "VariableInAtomicSwcInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "VARIABLE-IN-ATOMIC-SWC-INSTANCE-REF-IREF", "xml.namePlural", "VARIABLE-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.rModeGroupInAtomicSWCInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"RModeGroupInAtomicSWCInstanceRef\"", "mmt.qualifiedName", "RModeGroupInAtomicSWCInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "R-MODE-GROUP-IN-ATOMIC-SWC-INSTANCE-REF", "xml.namePlural", "R-MODE-GROUP-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRModeGroupInAtomicSWCInstanceRef_ContextRPort(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"RModeGroupInAtomicSWCInstanceRef.contextRPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "RModeGroupInAtomicSWCInstanceRef.contextRPort", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "CONTEXT-R-PORT-REF", "xml.namePlural", "CONTEXT-R-PORT-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRModeGroupInAtomicSWCInstanceRef_TargetModeGroup(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"RModeGroupInAtomicSWCInstanceRef.targetModeGroup\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "RModeGroupInAtomicSWCInstanceRef.targetModeGroup", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TARGET-MODE-GROUP-REF", "xml.namePlural", "TARGET-MODE-GROUP-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.rModeInAtomicSwcInstanceRefEClass, source, new String[]{"xml.tags", "contextOrder=\"RPortPrototype ModeDeclarationGroupPrototype\";mmt.qualifiedName=\"RModeInAtomicSwcInstanceRef\"", "mmt.qualifiedName", "RModeInAtomicSwcInstanceRef", "contextOrder", "contextPort contextModeDeclarationGroupPrototype", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "R-MODE-IN-ATOMIC-SWC-INSTANCE-REF-IREF", "xml.namePlural", "R-MODE-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRModeInAtomicSwcInstanceRef_ContextPort(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"RModeInAtomicSwcInstanceRef.contextPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "RModeInAtomicSwcInstanceRef.contextPort", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "CONTEXT-PORT-REF", "xml.namePlural", "CONTEXT-PORT-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRModeInAtomicSwcInstanceRef_ContextModeDeclarationGroupPrototype(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"RModeInAtomicSwcInstanceRef.contextModeDeclarationGroupPrototype\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "2", "mmt.qualifiedName", "RModeInAtomicSwcInstanceRef.contextModeDeclarationGroupPrototype", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "CONTEXT-MODE-DECLARATION-GROUP-PROTOTYPE-REF", "xml.namePlural", "CONTEXT-MODE-DECLARATION-GROUP-PROTOTYPE-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRModeInAtomicSwcInstanceRef_TargetModeDeclaration(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"40\";mmt.qualifiedName=\"RModeInAtomicSwcInstanceRef.targetModeDeclaration\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "3", "mmt.qualifiedName", "RModeInAtomicSwcInstanceRef.targetModeDeclaration", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TARGET-MODE-DECLARATION-REF", "xml.namePlural", "TARGET-MODE-DECLARATION-REFS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.rOperationInAtomicSwcInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"ROperationInAtomicSwcInstanceRef\"", "mmt.qualifiedName", "ROperationInAtomicSwcInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "R-OPERATION-IN-ATOMIC-SWC-INSTANCE-REF", "xml.namePlural", "R-OPERATION-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getROperationInAtomicSwcInstanceRef_ContextRPort(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"ROperationInAtomicSwcInstanceRef.contextRPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "ROperationInAtomicSwcInstanceRef.contextRPort", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "CONTEXT-R-PORT-REF", "xml.namePlural", "CONTEXT-R-PORT-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getROperationInAtomicSwcInstanceRef_TargetRequiredOperation(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"ROperationInAtomicSwcInstanceRef.targetRequiredOperation\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "ROperationInAtomicSwcInstanceRef.targetRequiredOperation", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TARGET-REQUIRED-OPERATION-REF", "xml.namePlural", "TARGET-REQUIRED-OPERATION-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.rTriggerInAtomicSwcInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"RTriggerInAtomicSwcInstanceRef\"", "mmt.qualifiedName", "RTriggerInAtomicSwcInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "R-TRIGGER-IN-ATOMIC-SWC-INSTANCE-REF", "xml.namePlural", "R-TRIGGER-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRTriggerInAtomicSwcInstanceRef_ContextRPort(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"RTriggerInAtomicSwcInstanceRef.contextRPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "RTriggerInAtomicSwcInstanceRef.contextRPort", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "CONTEXT-R-PORT-REF", "xml.namePlural", "CONTEXT-R-PORT-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRTriggerInAtomicSwcInstanceRef_TargetTrigger(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"RTriggerInAtomicSwcInstanceRef.targetTrigger\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "RTriggerInAtomicSwcInstanceRef.targetTrigger", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TARGET-TRIGGER-REF", "xml.namePlural", "TARGET-TRIGGER-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.rVariableInAtomicSwcInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"RVariableInAtomicSwcInstanceRef\"", "mmt.qualifiedName", "RVariableInAtomicSwcInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "R-VARIABLE-IN-ATOMIC-SWC-INSTANCE-REF", "xml.namePlural", "R-VARIABLE-IN-ATOMIC-SWC-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRVariableInAtomicSwcInstanceRef_ContextRPort(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"RVariableInAtomicSwcInstanceRef.contextRPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "RVariableInAtomicSwcInstanceRef.contextRPort", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "CONTEXT-R-PORT-REF", "xml.namePlural", "CONTEXT-R-PORT-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRVariableInAtomicSwcInstanceRef_TargetDataElement(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"RVariableInAtomicSwcInstanceRef.targetDataElement\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "RVariableInAtomicSwcInstanceRef.targetDataElement", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TARGET-DATA-ELEMENT-REF", "xml.namePlural", "TARGET-DATA-ELEMENT-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.innerPortGroupInCompositionInstanceRefEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"InnerPortGroupInCompositionInstanceRef\"", "mmt.qualifiedName", "InnerPortGroupInCompositionInstanceRef", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "INNER-PORT-GROUP-IN-COMPOSITION-INSTANCE-REF-IREF", "xml.namePlural", "INNER-PORT-GROUP-IN-COMPOSITION-INSTANCE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getInnerPortGroupInCompositionInstanceRef_Contexts(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"InnerPortGroupInCompositionInstanceRef.context\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "InnerPortGroupInCompositionInstanceRef.context", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "-1", "xml.name", "CONTEXT-REF", "xml.namePlural", "CONTEXT-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInnerPortGroupInCompositionInstanceRef_Target(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"InnerPortGroupInCompositionInstanceRef.target\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "2", "mmt.qualifiedName", "InnerPortGroupInCompositionInstanceRef.target", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "TARGET-REF", "xml.namePlural", "TARGET-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.modeGroupInAtomicSwcInstanceRefEClass, source, new String[]{"name", "MODE-GROUP-IN-ATOMIC-SWC-INSTANCE-REF-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.operationInAtomicSwcInstanceRefEClass, source, new String[]{"name", "OPERATION-IN-ATOMIC-SWC-INSTANCE-REF-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.pModeGroupInAtomicSwcInstanceRefEClass, source, new String[]{"name", "P-MODE-GROUP-IN-ATOMIC-SWC-INSTANCE-REF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPModeGroupInAtomicSwcInstanceRef_ContextPPort(), source, new String[]{"name", "CONTEXT-P-PORT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPModeGroupInAtomicSwcInstanceRef_TargetModeGroup(), source, new String[]{"name", "TARGET-MODE-GROUP-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPModeGroupInAtomicSwcInstanceRef_Base(), source, new String[]{"name", "BASE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.pOperationInAtomicSwcInstanceRefEClass, source, new String[]{"name", "P-OPERATION-IN-ATOMIC-SWC-INSTANCE-REF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPOperationInAtomicSwcInstanceRef_ContextPPort(), source, new String[]{"name", "CONTEXT-P-PORT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPOperationInAtomicSwcInstanceRef_TargetProvidedOperation(), source, new String[]{"name", "TARGET-PROVIDED-OPERATION-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPOperationInAtomicSwcInstanceRef_Base(), source, new String[]{"name", "BASE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.pTriggerInAtomicSwcTypeInstanceRefEClass, source, new String[]{"name", "P-TRIGGER-IN-ATOMIC-SWC-TYPE-INSTANCE-REF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPTriggerInAtomicSwcTypeInstanceRef_ContextPPort(), source, new String[]{"name", "CONTEXT-P-PORT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPTriggerInAtomicSwcTypeInstanceRef_TargetTrigger(), source, new String[]{"name", "TARGET-TRIGGER-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPTriggerInAtomicSwcTypeInstanceRef_Base(), source, new String[]{"name", "BASE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.triggerInAtomicSwcInstanceRefEClass, source, new String[]{"name", "TRIGGER-IN-ATOMIC-SWC-INSTANCE-REF-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.pVariableInAtomicSwcInstanceRefEClass, source, new String[]{"name", "P-VARIABLE-IN-ATOMIC-SWC-INSTANCE-REF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPVariableInAtomicSwcInstanceRef_ContextPPort(), source, new String[]{"name", "CONTEXT-P-PORT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPVariableInAtomicSwcInstanceRef_TargetDataElement(), source, new String[]{"name", "TARGET-DATA-ELEMENT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPVariableInAtomicSwcInstanceRef_Base(), source, new String[]{"name", "BASE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.variableInAtomicSwcInstanceRefEClass, source, new String[]{"name", "VARIABLE-IN-ATOMIC-SWC-INSTANCE-REF-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.rModeGroupInAtomicSWCInstanceRefEClass, source, new String[]{"name", "R-MODE-GROUP-IN-ATOMIC-SWC-INSTANCE-REF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRModeGroupInAtomicSWCInstanceRef_ContextRPort(), source, new String[]{"name", "CONTEXT-R-PORT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRModeGroupInAtomicSWCInstanceRef_TargetModeGroup(), source, new String[]{"name", "TARGET-MODE-GROUP-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRModeGroupInAtomicSWCInstanceRef_Base(), source, new String[]{"name", "BASE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.rModeInAtomicSwcInstanceRefEClass, source, new String[]{"name", "R-MODE-IN-ATOMIC-SWC-INSTANCE-REF-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRModeInAtomicSwcInstanceRef_Base(), source, new String[]{"name", "BASE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRModeInAtomicSwcInstanceRef_ContextPort(), source, new String[]{"name", "CONTEXT-PORT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRModeInAtomicSwcInstanceRef_ContextModeDeclarationGroupPrototype(), source, new String[]{"name", "CONTEXT-MODE-DECLARATION-GROUP-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRModeInAtomicSwcInstanceRef_TargetModeDeclaration(), source, new String[]{"name", "TARGET-MODE-DECLARATION-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.rOperationInAtomicSwcInstanceRefEClass, source, new String[]{"name", "R-OPERATION-IN-ATOMIC-SWC-INSTANCE-REF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getROperationInAtomicSwcInstanceRef_ContextRPort(), source, new String[]{"name", "CONTEXT-R-PORT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getROperationInAtomicSwcInstanceRef_TargetRequiredOperation(), source, new String[]{"name", "TARGET-REQUIRED-OPERATION-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getROperationInAtomicSwcInstanceRef_Base(), source, new String[]{"name", "BASE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.rTriggerInAtomicSwcInstanceRefEClass, source, new String[]{"name", "R-TRIGGER-IN-ATOMIC-SWC-INSTANCE-REF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRTriggerInAtomicSwcInstanceRef_ContextRPort(), source, new String[]{"name", "CONTEXT-R-PORT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRTriggerInAtomicSwcInstanceRef_TargetTrigger(), source, new String[]{"name", "TARGET-TRIGGER-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRTriggerInAtomicSwcInstanceRef_Base(), source, new String[]{"name", "BASE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.rVariableInAtomicSwcInstanceRefEClass, source, new String[]{"name", "R-VARIABLE-IN-ATOMIC-SWC-INSTANCE-REF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRVariableInAtomicSwcInstanceRef_ContextRPort(), source, new String[]{"name", "CONTEXT-R-PORT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRVariableInAtomicSwcInstanceRef_TargetDataElement(), source, new String[]{"name", "TARGET-DATA-ELEMENT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRVariableInAtomicSwcInstanceRef_Base(), source, new String[]{"name", "BASE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.innerPortGroupInCompositionInstanceRefEClass, source, new String[]{"name", "INNER-PORT-GROUP-IN-COMPOSITION-INSTANCE-REF-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getInnerPortGroupInCompositionInstanceRef_Base(), source, new String[]{"name", "BASE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getInnerPortGroupInCompositionInstanceRef_Contexts(), source, new String[]{"name", "CONTEXT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getInnerPortGroupInCompositionInstanceRef_Target(), source, new String[]{"name", "TARGET-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
    }

    protected void createTaggedValuesOfGeneralization_AtpInstanceRefAnnotations() {
        String source = "TaggedValuesOfGeneralization_AtpInstanceRef";
        this.addAnnotation((ENamedElement)this.modeGroupInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ModeGroupInAtomicSwcInstanceRef->AtpInstanceRef", "GUID", "80448A64-6EE7-4edc-A9E6-7B8D4CC611CC", "Id", "-177774537", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.operationInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "OperationInAtomicSwcInstanceRef->AtpInstanceRef", "GUID", "DB7907CC-6EA8-4ba5-AA5E-E343FE710DA6", "Id", "758122915", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.triggerInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "TriggerInAtomicSwcInstanceRef->AtpInstanceRef", "GUID", "D390ADAF-8593-48cc-8F1F-8E30D40AB15E", "Id", "2009559688", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.variableInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "VariableInAtomicSwcInstanceRef->AtpInstanceRef", "GUID", "7F0ABF7C-656A-471b-8846-1475DB69354F", "Id", "-628534762", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.rModeInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "RModeInAtomicSwcInstanceRef->AtpInstanceRef", "GUID", "2A1E3FB5-246A-4842-BB7D-E6CD2A9D46FE", "Id", "107355009", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.innerPortGroupInCompositionInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "InnerPortGroupInCompositionInstanceRef->AtpInstanceRef", "GUID", "ADC3CB54-C3D2-4acb-855D-D718800AC0FB", "Id", "-1427897252", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.modeGroupInAtomicSwcInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.operationInAtomicSwcInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.pModeGroupInAtomicSwcInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getPModeGroupInAtomicSwcInstanceRef_Base(), source, new String[]{"Stereotype", "atpDerived"});
        this.addAnnotation((ENamedElement)this.pOperationInAtomicSwcInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getPOperationInAtomicSwcInstanceRef_Base(), source, new String[]{"Stereotype", "atpDerived"});
        this.addAnnotation((ENamedElement)this.pTriggerInAtomicSwcTypeInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getPTriggerInAtomicSwcTypeInstanceRef_Base(), source, new String[]{"Stereotype", "atpDerived"});
        this.addAnnotation((ENamedElement)this.triggerInAtomicSwcInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.pVariableInAtomicSwcInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getPVariableInAtomicSwcInstanceRef_Base(), source, new String[]{"Stereotype", "atpDerived"});
        this.addAnnotation((ENamedElement)this.variableInAtomicSwcInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.rModeGroupInAtomicSWCInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getRModeGroupInAtomicSWCInstanceRef_Base(), source, new String[]{"Stereotype", "atpDerived"});
        this.addAnnotation((ENamedElement)this.rModeInAtomicSwcInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getRModeInAtomicSwcInstanceRef_Base(), source, new String[]{"Stereotype", "atpDerived"});
        this.addAnnotation((ENamedElement)this.rOperationInAtomicSwcInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getROperationInAtomicSwcInstanceRef_Base(), source, new String[]{"Stereotype", "atpDerived"});
        this.addAnnotation((ENamedElement)this.rTriggerInAtomicSwcInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getRTriggerInAtomicSwcInstanceRef_Base(), source, new String[]{"Stereotype", "atpDerived"});
        this.addAnnotation((ENamedElement)this.rVariableInAtomicSwcInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getRVariableInAtomicSwcInstanceRef_Base(), source, new String[]{"Stereotype", "atpDerived"});
        this.addAnnotation((ENamedElement)this.innerPortGroupInCompositionInstanceRefEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getInnerPortGroupInCompositionInstanceRef_Base(), source, new String[]{"Stereotype", "atpDerived"});
    }

    protected void createTaggedValuesOfGeneralization_ModeGroupInAtomicSwcInstanceRefAnnotations() {
        String source = "TaggedValuesOfGeneralization_ModeGroupInAtomicSwcInstanceRef";
        this.addAnnotation((ENamedElement)this.pModeGroupInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "PModeGroupInAtomicSwcInstanceRef->ModeGroupInAtomicSwcInstanceRef", "GUID", "66B52316-8E1F-42ca-A656-2EBAFD190EC0", "Id", "-1020451390", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.rModeGroupInAtomicSWCInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "RModeGroupInAtomicSWCInstanceRef->ModeGroupInAtomicSwcInstanceRef", "GUID", "1B60E690-851C-4211-B428-0ECFE8739265", "Id", "89911067", "xml.sequenceOffset", "0"});
    }

    protected void createSpecializationAnnotations() {
        String source = "Specialization";
        this.addAnnotation((ENamedElement)this.getPModeGroupInAtomicSwcInstanceRef_ContextPPort(), source, new String[]{"kind", "subsets", "abstractRef", "atpContextElements"});
        this.addAnnotation((ENamedElement)this.getPOperationInAtomicSwcInstanceRef_ContextPPort(), source, new String[]{"kind", "subsets", "abstractRef", "atpContextElements"});
        this.addAnnotation((ENamedElement)this.getPTriggerInAtomicSwcTypeInstanceRef_ContextPPort(), source, new String[]{"kind", "subsets", "abstractRef", "atpContextElements"});
        this.addAnnotation((ENamedElement)this.getPVariableInAtomicSwcInstanceRef_ContextPPort(), source, new String[]{"kind", "subsets", "abstractRef", "atpContextElements"});
        this.addAnnotation((ENamedElement)this.getRModeGroupInAtomicSWCInstanceRef_ContextRPort(), source, new String[]{"kind", "subsets", "abstractRef", "atpContextElements"});
        this.addAnnotation((ENamedElement)this.getRModeInAtomicSwcInstanceRef_ContextPort(), source, new String[]{"kind", "subsets", "abstractRef", "atpContextElements"});
        this.addAnnotation((ENamedElement)this.getROperationInAtomicSwcInstanceRef_ContextRPort(), source, new String[]{"kind", "subsets", "abstractRef", "atpContextElements"});
        this.addAnnotation((ENamedElement)this.getRTriggerInAtomicSwcInstanceRef_ContextRPort(), source, new String[]{"kind", "subsets", "abstractRef", "atpContextElements"});
        this.addAnnotation((ENamedElement)this.getRVariableInAtomicSwcInstanceRef_ContextRPort(), source, new String[]{"kind", "subsets", "abstractRef", "atpContextElements"});
        this.addAnnotation((ENamedElement)this.getInnerPortGroupInCompositionInstanceRef_Contexts(), source, new String[]{"kind", "subsets", "abstractRef", "atpContextElements", "baseDerivation", "eContainer"});
    }

    protected void createTaggedValuesOfGeneralization_OperationInAtomicSwcInstanceRefAnnotations() {
        String source = "TaggedValuesOfGeneralization_OperationInAtomicSwcInstanceRef";
        this.addAnnotation((ENamedElement)this.pOperationInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "POperationInAtomicSwcInstanceRef->OperationInAtomicSwcInstanceRef", "GUID", "8F6E7B56-87BA-4230-B546-4F285E0EA599", "Id", "-1671547417", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.rOperationInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ROperationInAtomicSwcInstanceRef->OperationInAtomicSwcInstanceRef", "GUID", "BB642218-EF11-43ea-90F3-58938C82733F", "Id", "1722397502", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_TriggerInAtomicSwcInstanceRefAnnotations() {
        String source = "TaggedValuesOfGeneralization_TriggerInAtomicSwcInstanceRef";
        this.addAnnotation((ENamedElement)this.pTriggerInAtomicSwcTypeInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "PTriggerInAtomicSwcTypeInstanceRef->TriggerInAtomicSwcInstanceRef", "GUID", "D461551E-FFFB-4c42-A85F-043BA89BFAF3", "Id", "141616433", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.rTriggerInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "RTriggerInAtomicSwcInstanceRef->TriggerInAtomicSwcInstanceRef", "GUID", "54D244E6-A157-4744-ADBC-F0F72C34AE50", "Id", "772892656", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_VariableInAtomicSwcInstanceRefAnnotations() {
        String source = "TaggedValuesOfGeneralization_VariableInAtomicSwcInstanceRef";
        this.addAnnotation((ENamedElement)this.pVariableInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "PVariableInAtomicSwcInstanceRef->VariableInAtomicSwcInstanceRef", "GUID", "5DFEE9B8-8886-46b1-98DB-8CA149C9F228", "Id", "-340161838", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.rVariableInAtomicSwcInstanceRefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "RVariableInAtomicSwcInstanceRef->VariableInAtomicSwcInstanceRef", "GUID", "D3DCAF8E-6AB6-4a33-9299-5103E73233F1", "Id", "2075599285", "xml.sequenceOffset", "0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.getInnerPortGroupInCompositionInstanceRef_Target(), source, new String[]{"documentation", "Links a PortGroup in a composition to another PortGroup, that is defined in a component which is part of this CompositionSwComponentType. There shall be at most one innerGroup per contained SwComponentPrototype."});
    }
}

