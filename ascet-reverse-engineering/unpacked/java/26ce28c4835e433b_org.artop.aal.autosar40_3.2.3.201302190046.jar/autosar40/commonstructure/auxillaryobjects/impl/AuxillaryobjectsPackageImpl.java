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
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar40.commonstructure.auxillaryobjects.impl;

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
import autosar40.commonstructure.auxillaryobjects.AuxillaryobjectsFactory;
import autosar40.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar40.commonstructure.auxillaryobjects.MemoryAllocationKeywordPolicyType;
import autosar40.commonstructure.auxillaryobjects.MemorySectionType;
import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
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
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class AuxillaryobjectsPackageImpl
extends EPackageImpl
implements AuxillaryobjectsPackage {
    private EClass swAddrMethodEClass = null;
    private EEnum memoryAllocationKeywordPolicyTypeEEnum = null;
    private EEnum memorySectionTypeEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private AuxillaryobjectsPackageImpl() {
        super("http://autosar.org/schema/r4.0/autosar40/cs/ao", (EFactory)AuxillaryobjectsFactory.eINSTANCE);
    }

    public static AuxillaryobjectsPackage init() {
        if (isInited) {
            return (AuxillaryobjectsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ao");
        }
        AuxillaryobjectsPackageImpl theAuxillaryobjectsPackage = (AuxillaryobjectsPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/cs/ao") instanceof AuxillaryobjectsPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/cs/ao") : new AuxillaryobjectsPackageImpl());
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
        theAuxillaryobjectsPackage.createPackageContents();
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
        theAuxillaryobjectsPackage.initializePackageContents();
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
        theAuxillaryobjectsPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/schema/r4.0/autosar40/cs/ao", (Object)theAuxillaryobjectsPackage);
        return theAuxillaryobjectsPackage;
    }

    public EClass getSwAddrMethod() {
        return this.swAddrMethodEClass;
    }

    public EAttribute getSwAddrMethod_MemoryAllocationKeywordPolicy() {
        return (EAttribute)this.swAddrMethodEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSwAddrMethod_Option() {
        return (EAttribute)this.swAddrMethodEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSwAddrMethod_SectionInitializationPolicy() {
        return (EAttribute)this.swAddrMethodEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getSwAddrMethod_SectionType() {
        return (EAttribute)this.swAddrMethodEClass.getEStructuralFeatures().get(3);
    }

    public EEnum getMemoryAllocationKeywordPolicyType() {
        return this.memoryAllocationKeywordPolicyTypeEEnum;
    }

    public EEnum getMemorySectionType() {
        return this.memorySectionTypeEEnum;
    }

    public AuxillaryobjectsFactory getAuxillaryobjectsFactory() {
        return (AuxillaryobjectsFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.swAddrMethodEClass = this.createEClass(0);
        this.createEAttribute(this.swAddrMethodEClass, 21);
        this.createEAttribute(this.swAddrMethodEClass, 22);
        this.createEAttribute(this.swAddrMethodEClass, 23);
        this.createEAttribute(this.swAddrMethodEClass, 24);
        this.memoryAllocationKeywordPolicyTypeEEnum = this.createEEnum(1);
        this.memorySectionTypeEEnum = this.createEEnum(2);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("auxillaryobjects");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/schema/r4.0/autosar40/cs/ao");
        ArpackagePackage theArpackagePackage = (ArpackagePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/arp");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt");
        this.swAddrMethodEClass.getESuperTypes().add((Object)theArpackagePackage.getARElement());
        this.initEClass(this.swAddrMethodEClass, SwAddrMethod.class, "SwAddrMethod", false, false, true);
        this.initEAttribute(this.getSwAddrMethod_MemoryAllocationKeywordPolicy(), (EClassifier)this.getMemoryAllocationKeywordPolicyType(), "memoryAllocationKeywordPolicy", "ADDR-METHOD-SHORT-NAME", 0, 1, SwAddrMethod.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwAddrMethod_Option(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "option", "", 0, 1, SwAddrMethod.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwAddrMethod_SectionInitializationPolicy(), (EClassifier)thePrimitivetypesPackage.getSectionInitializationPolicyType(), "sectionInitializationPolicy", "", 0, 1, SwAddrMethod.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwAddrMethod_SectionType(), (EClassifier)this.getMemorySectionType(), "sectionType", "VAR", 0, 1, SwAddrMethod.class, false, false, true, true, false, true, false, true);
        this.initEEnum(this.memoryAllocationKeywordPolicyTypeEEnum, MemoryAllocationKeywordPolicyType.class, "MemoryAllocationKeywordPolicyType");
        this.addEEnumLiteral(this.memoryAllocationKeywordPolicyTypeEEnum, MemoryAllocationKeywordPolicyType.ADDR_METHOD_SHORT_NAME);
        this.addEEnumLiteral(this.memoryAllocationKeywordPolicyTypeEEnum, MemoryAllocationKeywordPolicyType.ADDR_METHOD_SHORT_NAME_AND_ALIGNMENT);
        this.initEEnum(this.memorySectionTypeEEnum, MemorySectionType.class, "MemorySectionType");
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.VAR);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.CODE);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.CONST);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.CALPRM);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.CONFIG_DATA);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.EXCLUDE_FROM_FLASH);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.CALIBRATION_VARIABLES);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.VAR_FAST);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.VAR_NO_INIT);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.VAR_POWER_ON_INIT);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.CALIBRATION_OFFLINE);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.CALIBRATION_ONLINE);
        this.addEEnumLiteral(this.memorySectionTypeEEnum, MemorySectionType.USER_DEFINED);
        this.createResource("http://autosar.org/schema/r4.0/autosar40/cs/ao");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createStereotypeAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "AuxillaryObjects", "Modified", "Tue Feb 28 16:04:45 CET 2006", "Created", "Fri Dec 02 18:21:28 CET 2005", "GUID", "0A1B32F8-6AC9-4509-95FE-7F7AA2265616", "Id", "-1068600177"});
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"Name", "SwAddrMethod", "Modified", "Thu Jun 30 13:41:42 CEST 2011", "Created", "Fri Nov 25 19:53:03 CET 2005", "GUID", "284627DC-C5EE-400d-9185-34B92B04F752", "Id", "1803785149"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_MemoryAllocationKeywordPolicy(), source, new String[]{"Name", "memoryAllocationKeywordPolicy", "GUID", "2286CEC4-02B5-4703-AD52-B9DD1B860D50", "Id", "-1587199144"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_Option(), source, new String[]{"Name", "option", "GUID", "23BEA021-D46A-4566-93FA-E3762A45A452", "Id", "2001593977"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_SectionInitializationPolicy(), source, new String[]{"Name", "sectionInitializationPolicy", "GUID", "7005578A-A79F-4676-8474-F5A34FB5BF62", "Id", "-2055426795"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_SectionType(), source, new String[]{"Name", "sectionType", "GUID", "8B330ED6-50B4-4867-9400-F2EF1FD17FC5", "Id", "1236157836"});
        this.addAnnotation((ENamedElement)this.memoryAllocationKeywordPolicyTypeEEnum, source, new String[]{"Name", "MemoryAllocationKeywordPolicyType", "Modified", "Wed Mar 03 15:17:11 CET 2010", "Created", "Tue Jun 26 22:08:17 CEST 2007", "GUID", "AB6EB1B1-4E10-4976-91ED-E2436301F7A4", "Id", "2107482505"});
        this.addAnnotation((ENamedElement)this.memoryAllocationKeywordPolicyTypeEEnum.getELiterals().get(0), source, new String[]{"Name", "AddrMethodShortName", "GUID", "6A1333BA-2939-42c3-AE21-10825EC80750", "Id", "-1357691867"});
        this.addAnnotation((ENamedElement)this.memoryAllocationKeywordPolicyTypeEEnum.getELiterals().get(1), source, new String[]{"Name", "AddrMethodShortNameAndAlignment", "GUID", "A49EF78D-8B40-470b-BF59-3F2A29B4D365", "Id", "-676095360"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum, source, new String[]{"Name", "MemorySectionType", "Modified", "Wed Mar 03 14:43:51 CET 2010", "Created", "Tue Jun 26 22:08:17 CEST 2007", "GUID", "59C2B1B1-56AB-4884-AFE6-0E93ED90E664", "Id", "112425253"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(0), source, new String[]{"Name", "var", "GUID", "EB969762-7FE4-4a5b-8A26-ED75E8613052", "Id", "453320810"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(1), source, new String[]{"Name", "code", "GUID", "ABF7D407-8951-427d-B1A4-F842EF1DA873", "Id", "95777169"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(2), source, new String[]{"Name", "const", "GUID", "C92F22A0-8CCF-46c7-A3B7-98BD9C7E5D4A", "Id", "-1714629081"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(3), source, new String[]{"Name", "calprm", "GUID", "FAFBAC6B-97DF-4d2c-AE85-A5AD54BB6189", "Id", "1267622251"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(4), source, new String[]{"Name", "configData", "GUID", "10C21C6D-807F-483d-B4C6-06305BC08BCD", "Id", "1412250750"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(5), source, new String[]{"Name", "excludeFromFlash", "GUID", "746A96BA-51A9-4b65-9219-B0BB0C4B747B", "Id", "405319388"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(6), source, new String[]{"Name", "calibrationVariables", "GUID", "01B54D5C-D673-4139-8647-E2ABD36427DC", "Id", "-1219673648"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(7), source, new String[]{"Name", "varFast", "GUID", "29DBCCC9-D7DC-41cf-84D6-78C873CAF768", "Id", "-477761885"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(8), source, new String[]{"Name", "varNoInit", "GUID", "F9A792C8-A5F3-4747-8068-E9BDF96071E1", "Id", "1936761423"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(9), source, new String[]{"Name", "varPowerOnInit", "GUID", "19BBC058-0167-45a3-BB43-4DCBA071260C", "Id", "212952232"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(10), source, new String[]{"Name", "calibrationOffline", "GUID", "A810BEFB-559C-4fd8-B5DB-BBA8E6DA6969", "Id", "858928023"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(11), source, new String[]{"Name", "calibrationOnline", "GUID", "C2A1D0CE-44BE-4a21-ADDB-830CECC5E2FD", "Id", "-2081467520"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(12), source, new String[]{"Name", "userDefined", "GUID", "4282252E-84A3-456c-AD92-7A19D37FAAAF", "Id", "926966957"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "AUXILLARY-OBJECTS", "xml.namePlural", "AUXILLARY-OBJECTSS"});
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"atp.recommendedPackage", "SwAddrMethods", "xml.tags", "asam.useCase=\"MDX\";atp.recommendedPackage=\"SwAddrMethods\";msr.id=\"type__SW-ADDR-METHOD_TYPE\";mmt.qualifiedName=\"SwAddrMethod\"", "asam.useCase", "MDX", "mmt.qualifiedName", "SwAddrMethod", "msr.id", "type__SW-ADDR-METHOD_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-ADDR-METHOD", "xml.namePlural", "SW-ADDR-METHODS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_MemoryAllocationKeywordPolicy(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwAddrMethod.memoryAllocationKeywordPolicy\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "SwAddrMethod.memoryAllocationKeywordPolicy", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "MEMORY-ALLOCATION-KEYWORD-POLICY", "xml.namePlural", "MEMORY-ALLOCATION-KEYWORD-POLICYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_Option(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwAddrMethod.option\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "mmt.qualifiedName", "SwAddrMethod.option", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "OPTION", "xml.namePlural", "OPTIONS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_SectionInitializationPolicy(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwAddrMethod.sectionInitializationPolicy\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "SwAddrMethod.sectionInitializationPolicy", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "SECTION-INITIALIZATION-POLICY", "xml.namePlural", "SECTION-INITIALIZATION-POLICYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_SectionType(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwAddrMethod.sectionType\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "SwAddrMethod.sectionType", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "SECTION-TYPE", "xml.namePlural", "SECTION-TYPES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.memoryAllocationKeywordPolicyTypeEEnum, source, new String[]{"xml.tags", "mmt.qualifiedName=\"MemoryAllocationKeywordPolicyType\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::GeneralTemplateClasses::ArObject::ARObject", "mmt.qualifiedName", "MemoryAllocationKeywordPolicyType", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "MEMORY-ALLOCATION-KEYWORD-POLICY-TYPE", "xml.namePlural", "MEMORY-ALLOCATION-KEYWORD-POLICY-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.memoryAllocationKeywordPolicyTypeEEnum.getELiterals().get(0), source, new String[]{"xml.tags", "mmt.qualifiedName=\"MemoryAllocationKeywordPolicyType.AddrMethodShortName\"", "mmt.qualifiedName", "MemoryAllocationKeywordPolicyType.AddrMethodShortName", "xml.name", "ADDR-METHOD-SHORT-NAME", "xml.namePlural", "ADDR-METHOD-SHORT-NAMES"});
        this.addAnnotation((ENamedElement)this.memoryAllocationKeywordPolicyTypeEEnum.getELiterals().get(1), source, new String[]{"xml.tags", "mmt.qualifiedName=\"MemoryAllocationKeywordPolicyType.AddrMethodShortNameAndAlignment\"", "mmt.qualifiedName", "MemoryAllocationKeywordPolicyType.AddrMethodShortNameAndAlignment", "xml.name", "ADDR-METHOD-SHORT-NAME-AND-ALIGNMENT", "xml.namePlural", "ADDR-METHOD-SHORT-NAME-AND-ALIGNMENTS"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum, source, new String[]{"xml.tags", "mmt.qualifiedName=\"MemorySectionType\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::GeneralTemplateClasses::ArObject::ARObject", "mmt.qualifiedName", "MemorySectionType", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "MEMORY-SECTION-TYPE", "xml.namePlural", "MEMORY-SECTION-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(0), source, new String[]{"xml.tags", "mmt.qualifiedName=\"MemorySectionType.var\"", "mmt.qualifiedName", "MemorySectionType.var", "xml.name", "VAR", "xml.namePlural", "VARS"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(1), source, new String[]{"xml.tags", "mmt.qualifiedName=\"MemorySectionType.code\"", "mmt.qualifiedName", "MemorySectionType.code", "xml.name", "CODE", "xml.namePlural", "CODES"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(2), source, new String[]{"xml.tags", "mmt.qualifiedName=\"MemorySectionType.const\"", "mmt.qualifiedName", "MemorySectionType.const", "xml.name", "CONST", "xml.namePlural", "CONSTS"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(3), source, new String[]{"xml.tags", "mmt.qualifiedName=\"MemorySectionType.calprm\"", "mmt.qualifiedName", "MemorySectionType.calprm", "xml.name", "CALPRM", "xml.namePlural", "CALPRMS"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(4), source, new String[]{"xml.tags", "mmt.qualifiedName=\"MemorySectionType.configData\"", "mmt.qualifiedName", "MemorySectionType.configData", "xml.name", "CONFIG-DATA", "xml.namePlural", "CONFIG-DATAS"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(5), source, new String[]{"xml.tags", "mmt.qualifiedName=\"MemorySectionType.excludeFromFlash\"", "mmt.qualifiedName", "MemorySectionType.excludeFromFlash", "xml.name", "EXCLUDE-FROM-FLASH", "xml.namePlural", "EXCLUDE-FROM-FLASHS"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(6), source, new String[]{"xml.tags", "mmt.qualifiedName=\"MemorySectionType.calibrationVariables\"", "mmt.qualifiedName", "MemorySectionType.calibrationVariables", "xml.name", "CALIBRATION-VARIABLES", "xml.namePlural", "CALIBRATION-VARIABLESS"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(7), source, new String[]{"xml.tags", "atp.Status=\"obsolete\";mmt.qualifiedName=\"MemorySectionType.varFast\"", "atp.Status", "obsolete", "mmt.qualifiedName", "MemorySectionType.varFast", "xml.name", "VAR-FAST", "xml.namePlural", "VAR-FASTS"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(8), source, new String[]{"xml.tags", "atp.Status=\"obsolete\";mmt.qualifiedName=\"MemorySectionType.varNoInit\"", "atp.Status", "obsolete", "mmt.qualifiedName", "MemorySectionType.varNoInit", "xml.name", "VAR-NO-INIT", "xml.namePlural", "VAR-NO-INITS"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(9), source, new String[]{"xml.tags", "atp.Status=\"obsolete\";mmt.qualifiedName=\"MemorySectionType.varPowerOnInit\"", "atp.Status", "obsolete", "mmt.qualifiedName", "MemorySectionType.varPowerOnInit", "xml.name", "VAR-POWER-ON-INIT", "xml.namePlural", "VAR-POWER-ON-INITS"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(10), source, new String[]{"xml.tags", "atp.Status=\"obsolete\";mmt.qualifiedName=\"MemorySectionType.calibrationOffline\"", "atp.Status", "obsolete", "mmt.qualifiedName", "MemorySectionType.calibrationOffline", "xml.name", "CALIBRATION-OFFLINE", "xml.namePlural", "CALIBRATION-OFFLINES"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(11), source, new String[]{"xml.tags", "atp.Status=\"obsolete\";mmt.qualifiedName=\"MemorySectionType.calibrationOnline\"", "atp.Status", "obsolete", "mmt.qualifiedName", "MemorySectionType.calibrationOnline", "xml.name", "CALIBRATION-ONLINE", "xml.namePlural", "CALIBRATION-ONLINES"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(12), source, new String[]{"xml.tags", "atp.Status=\"obsolete\";mmt.qualifiedName=\"MemorySectionType.userDefined\"", "atp.Status", "obsolete", "mmt.qualifiedName", "MemorySectionType.userDefined", "xml.name", "USER-DEFINED", "xml.namePlural", "USER-DEFINEDS"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"name", "SW-ADDR-METHOD", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_MemoryAllocationKeywordPolicy(), source, new String[]{"name", "MEMORY-ALLOCATION-KEYWORD-POLICY", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_Option(), source, new String[]{"name", "OPTION", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_SectionInitializationPolicy(), source, new String[]{"name", "SECTION-INITIALIZATION-POLICY", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_SectionType(), source, new String[]{"name", "SECTION-TYPE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"documentation", "Used to assign a common addressing method, e.g. common memory section, to data or code objects. These objects could actually live in different modules or components."});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_MemoryAllocationKeywordPolicy(), source, new String[]{"documentation", "Enumeration to specify the name pattern of the Memory Allocation Keyword."});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_Option(), source, new String[]{"documentation", "This attribute introduces the ability to specify further intended properties of the MemorySection in with the related objects shall be placed. \r\n\r\nThese properties are handled as to be selected. The intended options are mentioned in the list. \r\n\r\nIn the Memory Mapping configuration, this option list is used to determine an appropriate MemMapAddressingModeSet.\r\n"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_SectionInitializationPolicy(), source, new String[]{"documentation", "Specifies the expected initialization of the variables (inclusive those which are implementing VariableDataPrototypes). Therefore this is an implementation constraint for initialization code of BSW modules (especially RTE) as well as the start-up code which initializes the memory segment to which the AutosarDataPrototypes referring to the SwAddrMethod's are later on mapped.\r\n\r\nIf the attribute is not defined it has the identical semantic as the attribute value \"INIT\"\r\n"});
        this.addAnnotation((ENamedElement)this.getSwAddrMethod_SectionType(), source, new String[]{"documentation", "Defines the type of memory sections which can be associated with this addresssing method. "});
        this.addAnnotation((ENamedElement)this.memoryAllocationKeywordPolicyTypeEEnum, source, new String[]{"documentation", "Enumeration to specify the name pattern of the Memory Allocation Keyword."});
        this.addAnnotation((ENamedElement)this.memoryAllocationKeywordPolicyTypeEEnum.getELiterals().get(0), source, new String[]{"documentation", "The MemorySection shortNames of referring MemorySections and therefore the belonging Memory Allocation Keywords in the code are build with the shortName of the SwAddrMethod. This is the default value if the attribute does not exist."});
        this.addAnnotation((ENamedElement)this.memoryAllocationKeywordPolicyTypeEEnum.getELiterals().get(1), source, new String[]{"documentation", "The MemorySection shortNames of referring MemorySections and therefore the belonging Memory Allocation Keywords in the code are build with the shortName of the SwAddrMethod and the alignment attribute of the MemorySection. This requests a separation of objects in memory dependent from the alignment and is not applicable for SwAddrMethods referred by RunnableEntitys and BswSchedulableEntitys."});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum, source, new String[]{"documentation", "Enumeration to specify the essential nature of the data which can be allocated in a common memory class by the means of the AUTOSAR Memory Mapping."});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(0), source, new String[]{"documentation", "To be used for global or static variables. The expected initialization is specified with the attribute sectionInitializationPolicy."});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(1), source, new String[]{"documentation", "To be used for mapping code to application block, boot block, external flash etc."});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(2), source, new String[]{"documentation", "To be used for global or static constants."});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(3), source, new String[]{"documentation", "To be used for calibratable constants of ECU-functions.\r\n"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(4), source, new String[]{"documentation", "Constants with attributes that show that they reside in one segment for module configuration."});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(5), source, new String[]{"documentation", "Values existing in the ECU but not dropped down in the binary file. No upload should be needed to obtain access to the ECU data. The ECU will never be touched by the instrumentation tool, with the exception of upload. These are memory areas which are not overwritten by downloading the executable."});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(6), source, new String[]{"documentation", "Values which are available in the ECU but do not exist in the Hex-file. No upload is required to obtain access to the ECU data. The ECU will never be touched by the instrumentation tool with the exception of upload. These are calculated values which are not represented in the CPU memory (no address is associated)."});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(7), source, new String[]{"documentation", "To be used for all global or static variables that have at least one of the following properties: - accessed bit-wise - frequently used - high number of accesses in source code Some platforms allow the use of bit instructions for variables located in this specific RAM area as well as shorter addressing instructions. This saves code and runtime.\r\n\r\n'''Note''': This value is deprecated and shall be substituted by var and the appropriate values of the orthogonal attributes sectionInitializationPolicy, memoryAllocationKeywordPolicy and option.\r\n"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(8), source, new String[]{"documentation", "To be used for all global or static variables that are never initialized.\r\n\r\n'''Note''': This value is deprecated and shall be substituted by var and the appropriate values of the orthogonal attributes sectionInitializationPolicy, memoryAllocationKeywordPolicy and option.\r\n"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(9), source, new String[]{"documentation", "To be used for all global or static variables that are initialized only after power on reset.\r\n\r\n'''Note''': This value is deprecated and shall be substituted by var and the appropriate values of the orthogonal attributes sectionInitializationPolicy, memoryAllocationKeywordPolicy and option.\r\n"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(10), source, new String[]{"documentation", "Program data which can only be used for offline calibration.\r\n\r\n'''Note''': This value is deprecated and shall be substituted by calPrm.\r\n"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(11), source, new String[]{"documentation", "Program data which can be used for online calibration.\r\n\r\n'''Note''': This value is deprecated and shall be substituted by calPrm.\r\n"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum.getELiterals().get(12), source, new String[]{"documentation", "No specific categorization of sectionType possible.\r\n\r\n'''Note''': This value is deprecated and shall be substituted by var, code, const, calprm, configData, excludeFromFlash and the appropriate values of the orthogonal attributes sectionInitializationPolicy, memoryAllocationKeywordPolicy and option.\r\n"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwAddrMethod->arelement", "GUID", "D039DE34-D0F9-45d7-AF57-1618362A39BB", "msr.id", "SW-ADDR-METHOD_TYPE_ARElement", "Id", "514322075", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.memoryAllocationKeywordPolicyTypeEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.memorySectionTypeEEnum, source, new String[]{"Stereotype", "enumeration"});
    }
}

