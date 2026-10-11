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
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar40.swcomponent.swcinternalbehavior.impl;

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
import autosar40.swcomponent.swcinternalbehavior.HandleTerminationAndRestartEnum;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorFactory;
import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.impl.DataelementsPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusagePackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.impl.InstancerefsusagePackageImpl;
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
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class SwcinternalbehaviorPackageImpl
extends EPackageImpl
implements SwcinternalbehaviorPackage {
    private EClass swcInternalBehaviorEClass = null;
    private EClass runnableEntityEClass = null;
    private EEnum handleTerminationAndRestartEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private SwcinternalbehaviorPackageImpl() {
        super("http://autosar.org/schema/r4.0/autosar40/swc/sib", (EFactory)SwcinternalbehaviorFactory.eINSTANCE);
    }

    public static SwcinternalbehaviorPackage init() {
        if (isInited) {
            return (SwcinternalbehaviorPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib");
        }
        SwcinternalbehaviorPackageImpl theSwcinternalbehaviorPackage = (SwcinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/swc/sib") instanceof SwcinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/swc/sib") : new SwcinternalbehaviorPackageImpl());
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
        theSwcinternalbehaviorPackage.createPackageContents();
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
        theSwcinternalbehaviorPackage.initializePackageContents();
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
        theSwcinternalbehaviorPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/schema/r4.0/autosar40/swc/sib", (Object)theSwcinternalbehaviorPackage);
        return theSwcinternalbehaviorPackage;
    }

    public EClass getSwcInternalBehavior() {
        return this.swcInternalBehaviorEClass;
    }

    public EReference getSwcInternalBehavior_AtomicSwComponentType() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwcInternalBehavior_ArTypedPerInstanceMemories() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwcInternalBehavior_Events() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwcInternalBehavior_ExplicitInterRunnableVariables() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getSwcInternalBehavior_HandleTerminationAndRestart() {
        return (EAttribute)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(4);
    }

    public EReference getSwcInternalBehavior_ImplicitInterRunnableVariables() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(5);
    }

    public EReference getSwcInternalBehavior_IncludedDataTypeSets() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(6);
    }

    public EReference getSwcInternalBehavior_IncludedModeDeclarationGroupSets() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(7);
    }

    public EReference getSwcInternalBehavior_InstantiationDataDefProps() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(8);
    }

    public EReference getSwcInternalBehavior_PerInstanceMemories() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(9);
    }

    public EReference getSwcInternalBehavior_PerInstanceParameters() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(10);
    }

    public EReference getSwcInternalBehavior_PortAPIOptions() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(11);
    }

    public EReference getSwcInternalBehavior_Runnables() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(12);
    }

    public EReference getSwcInternalBehavior_ServiceDependencies() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(13);
    }

    public EReference getSwcInternalBehavior_SharedParameters() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(14);
    }

    public EAttribute getSwcInternalBehavior_SupportsMultipleInstantiation() {
        return (EAttribute)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(15);
    }

    public EReference getSwcInternalBehavior_VariationPointProxies() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(16);
    }

    public EReference getSwcInternalBehavior_VariationPoint() {
        return (EReference)this.swcInternalBehaviorEClass.getEStructuralFeatures().get(17);
    }

    public EClass getRunnableEntity() {
        return this.runnableEntityEClass;
    }

    public EReference getRunnableEntity_SwcInternalBehavior() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(0);
    }

    public EReference getRunnableEntity_Arguments() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(1);
    }

    public EReference getRunnableEntity_AsynchronousServerCallResultPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getRunnableEntity_CanBeInvokedConcurrently() {
        return (EAttribute)this.runnableEntityEClass.getEStructuralFeatures().get(3);
    }

    public EReference getRunnableEntity_DataReadAccess() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(4);
    }

    public EReference getRunnableEntity_DataReceivePointByArguments() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(5);
    }

    public EReference getRunnableEntity_DataReceivePointByValues() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(6);
    }

    public EReference getRunnableEntity_DataSendPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(7);
    }

    public EReference getRunnableEntity_DataWriteAccess() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(8);
    }

    public EReference getRunnableEntity_ExternalTriggeringPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(9);
    }

    public EReference getRunnableEntity_InternalTriggeringPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(10);
    }

    public EReference getRunnableEntity_ModeAccessPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(11);
    }

    public EReference getRunnableEntity_ModeSwitchPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(12);
    }

    public EReference getRunnableEntity_ParameterAccess() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(13);
    }

    public EReference getRunnableEntity_ReadLocalVariables() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(14);
    }

    public EReference getRunnableEntity_ServerCallPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(15);
    }

    public EAttribute getRunnableEntity_Symbol() {
        return (EAttribute)this.runnableEntityEClass.getEStructuralFeatures().get(16);
    }

    public EReference getRunnableEntity_WaitPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(17);
    }

    public EReference getRunnableEntity_WrittenLocalVariables() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(18);
    }

    public EReference getRunnableEntity_VariationPoint() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(19);
    }

    public EEnum getHandleTerminationAndRestartEnum() {
        return this.handleTerminationAndRestartEnumEEnum;
    }

    public SwcinternalbehaviorFactory getSwcinternalbehaviorFactory() {
        return (SwcinternalbehaviorFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.swcInternalBehaviorEClass = this.createEClass(0);
        this.createEReference(this.swcInternalBehaviorEClass, 30);
        this.createEReference(this.swcInternalBehaviorEClass, 31);
        this.createEReference(this.swcInternalBehaviorEClass, 32);
        this.createEReference(this.swcInternalBehaviorEClass, 33);
        this.createEAttribute(this.swcInternalBehaviorEClass, 34);
        this.createEReference(this.swcInternalBehaviorEClass, 35);
        this.createEReference(this.swcInternalBehaviorEClass, 36);
        this.createEReference(this.swcInternalBehaviorEClass, 37);
        this.createEReference(this.swcInternalBehaviorEClass, 38);
        this.createEReference(this.swcInternalBehaviorEClass, 39);
        this.createEReference(this.swcInternalBehaviorEClass, 40);
        this.createEReference(this.swcInternalBehaviorEClass, 41);
        this.createEReference(this.swcInternalBehaviorEClass, 42);
        this.createEReference(this.swcInternalBehaviorEClass, 43);
        this.createEReference(this.swcInternalBehaviorEClass, 44);
        this.createEAttribute(this.swcInternalBehaviorEClass, 45);
        this.createEReference(this.swcInternalBehaviorEClass, 46);
        this.createEReference(this.swcInternalBehaviorEClass, 47);
        this.runnableEntityEClass = this.createEClass(1);
        this.createEReference(this.runnableEntityEClass, 34);
        this.createEReference(this.runnableEntityEClass, 35);
        this.createEReference(this.runnableEntityEClass, 36);
        this.createEAttribute(this.runnableEntityEClass, 37);
        this.createEReference(this.runnableEntityEClass, 38);
        this.createEReference(this.runnableEntityEClass, 39);
        this.createEReference(this.runnableEntityEClass, 40);
        this.createEReference(this.runnableEntityEClass, 41);
        this.createEReference(this.runnableEntityEClass, 42);
        this.createEReference(this.runnableEntityEClass, 43);
        this.createEReference(this.runnableEntityEClass, 44);
        this.createEReference(this.runnableEntityEClass, 45);
        this.createEReference(this.runnableEntityEClass, 46);
        this.createEReference(this.runnableEntityEClass, 47);
        this.createEReference(this.runnableEntityEClass, 48);
        this.createEReference(this.runnableEntityEClass, 49);
        this.createEAttribute(this.runnableEntityEClass, 50);
        this.createEReference(this.runnableEntityEClass, 51);
        this.createEReference(this.runnableEntityEClass, 52);
        this.createEReference(this.runnableEntityEClass, 53);
        this.handleTerminationAndRestartEnumEEnum = this.createEEnum(2);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("swcinternalbehavior");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/schema/r4.0/autosar40/swc/sib");
        ServicemappingPackage theServicemappingPackage = (ServicemappingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/smapping");
        DataelementsPackage theDataelementsPackage = (DataelementsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/de");
        PerinstancememoryPackage thePerinstancememoryPackage = (PerinstancememoryPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/pim");
        InstantiationdatadefpropsPackage theInstantiationdatadefpropsPackage = (InstantiationdatadefpropsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/iddp");
        PortapioptionsPackage thePortapioptionsPackage = (PortapioptionsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/papio");
        RteeventsPackage theRteeventsPackage = (RteeventsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/rtee");
        TriggerPackage theTriggerPackage = (TriggerPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/t");
        ModedeclarationgroupPackage theModedeclarationgroupPackage = (ModedeclarationgroupPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/mdg");
        ServercallPackage theServercallPackage = (ServercallPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/sc");
        VarianthandlingPackage theVarianthandlingPackage_1 = (VarianthandlingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/vh");
        IncludeddatatypesPackage theIncludeddatatypesPackage = (IncludeddatatypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/idt");
        RunnableentityPackage theRunnableentityPackage = (RunnableentityPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/re");
        InternalbehaviorPackage theInternalbehaviorPackage = (InternalbehaviorPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ib");
        GswcinternalbehaviorPackage theGswcinternalbehaviorPackage = (GswcinternalbehaviorPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib");
        ComponentsPackage theComponentsPackage = (ComponentsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/components");
        DataprototypesPackage theDataprototypesPackage = (DataprototypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/dp");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt");
        autosar40.genericstructure.varianthandling.VarianthandlingPackage theVarianthandlingPackage = (autosar40.genericstructure.varianthandling.VarianthandlingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/vh");
        AbstractstructurePackage theAbstractstructurePackage = (AbstractstructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/as");
        this.getESubpackages().add((Object)theServicemappingPackage);
        this.getESubpackages().add((Object)theDataelementsPackage);
        this.getESubpackages().add((Object)thePerinstancememoryPackage);
        this.getESubpackages().add((Object)theInstantiationdatadefpropsPackage);
        this.getESubpackages().add((Object)thePortapioptionsPackage);
        this.getESubpackages().add((Object)theRteeventsPackage);
        this.getESubpackages().add((Object)theTriggerPackage);
        this.getESubpackages().add((Object)theModedeclarationgroupPackage);
        this.getESubpackages().add((Object)theServercallPackage);
        this.getESubpackages().add((Object)theVarianthandlingPackage_1);
        this.getESubpackages().add((Object)theIncludeddatatypesPackage);
        this.getESubpackages().add((Object)theRunnableentityPackage);
        this.swcInternalBehaviorEClass.getESuperTypes().add((Object)theInternalbehaviorPackage.getInternalBehavior());
        this.swcInternalBehaviorEClass.getESuperTypes().add((Object)theGswcinternalbehaviorPackage.getGSwcInternalBehavior());
        this.runnableEntityEClass.getESuperTypes().add((Object)theAbstractstructurePackage.getAtpStructureElement());
        this.runnableEntityEClass.getESuperTypes().add((Object)theInternalbehaviorPackage.getExecutableEntity());
        this.runnableEntityEClass.getESuperTypes().add((Object)theGswcinternalbehaviorPackage.getGRunnableEntity());
        this.initEClass(this.swcInternalBehaviorEClass, SwcInternalBehavior.class, "SwcInternalBehavior", false, false, true);
        this.initEReference(this.getSwcInternalBehavior_AtomicSwComponentType(), (EClassifier)theComponentsPackage.getAtomicSwComponentType(), theComponentsPackage.getAtomicSwComponentType_InternalBehaviors(), "atomicSwComponentType", null, 0, 1, SwcInternalBehavior.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_ArTypedPerInstanceMemories(), (EClassifier)theDataprototypesPackage.getVariableDataPrototype(), null, "arTypedPerInstanceMemories", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_Events(), (EClassifier)theRteeventsPackage.getRTEEvent(), theRteeventsPackage.getRTEEvent_SwcInternalBehavior(), "events", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_ExplicitInterRunnableVariables(), (EClassifier)theDataprototypesPackage.getVariableDataPrototype(), null, "explicitInterRunnableVariables", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwcInternalBehavior_HandleTerminationAndRestart(), (EClassifier)this.getHandleTerminationAndRestartEnum(), "handleTerminationAndRestart", "NO-SUPPORT", 0, 1, SwcInternalBehavior.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_ImplicitInterRunnableVariables(), (EClassifier)theDataprototypesPackage.getVariableDataPrototype(), null, "implicitInterRunnableVariables", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_IncludedDataTypeSets(), (EClassifier)theIncludeddatatypesPackage.getIncludedDataTypeSet(), theIncludeddatatypesPackage.getIncludedDataTypeSet_SwcInternalBehavior(), "includedDataTypeSets", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_IncludedModeDeclarationGroupSets(), (EClassifier)theModedeclarationgroupPackage.getIncludedModeDeclarationGroupSet(), theModedeclarationgroupPackage.getIncludedModeDeclarationGroupSet_SwcInternalBehavior(), "includedModeDeclarationGroupSets", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_InstantiationDataDefProps(), (EClassifier)theInstantiationdatadefpropsPackage.getInstantiationDataDefProps(), null, "instantiationDataDefProps", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_PerInstanceMemories(), (EClassifier)thePerinstancememoryPackage.getPerInstanceMemory(), thePerinstancememoryPackage.getPerInstanceMemory_SwcInternalBehavior(), "perInstanceMemories", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_PerInstanceParameters(), (EClassifier)theDataprototypesPackage.getParameterDataPrototype(), null, "perInstanceParameters", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_PortAPIOptions(), (EClassifier)thePortapioptionsPackage.getPortAPIOption(), thePortapioptionsPackage.getPortAPIOption_SwcInternalBehavior(), "portAPIOptions", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_Runnables(), (EClassifier)this.getRunnableEntity(), this.getRunnableEntity_SwcInternalBehavior(), "runnables", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_ServiceDependencies(), (EClassifier)theServicemappingPackage.getSwcServiceDependency(), theServicemappingPackage.getSwcServiceDependency_SwcInternalBehavior(), "serviceDependencies", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_SharedParameters(), (EClassifier)theDataprototypesPackage.getParameterDataPrototype(), null, "sharedParameters", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwcInternalBehavior_SupportsMultipleInstantiation(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "supportsMultipleInstantiation", "false", 0, 1, SwcInternalBehavior.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_VariationPointProxies(), (EClassifier)theVarianthandlingPackage_1.getVariationPointProxy(), theVarianthandlingPackage_1.getVariationPointProxy_SwcInternalBehavior(), "variationPointProxies", null, 0, -1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcInternalBehavior_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, SwcInternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.runnableEntityEClass, RunnableEntity.class, "RunnableEntity", false, false, true);
        this.initEReference(this.getRunnableEntity_SwcInternalBehavior(), (EClassifier)this.getSwcInternalBehavior(), this.getSwcInternalBehavior_Runnables(), "swcInternalBehavior", null, 0, 1, RunnableEntity.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_Arguments(), (EClassifier)theRunnableentityPackage.getRunnableEntityArgument(), theRunnableentityPackage.getRunnableEntityArgument_RunnableEntity(), "arguments", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_AsynchronousServerCallResultPoints(), (EClassifier)theServercallPackage.getAsynchronousServerCallResultPoint(), theServercallPackage.getAsynchronousServerCallResultPoint_RunnableEntity(), "asynchronousServerCallResultPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getRunnableEntity_CanBeInvokedConcurrently(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "canBeInvokedConcurrently", "false", 0, 1, RunnableEntity.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getRunnableEntity_DataReadAccess(), (EClassifier)theDataelementsPackage.getVariableAccess(), null, "dataReadAccess", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_DataReceivePointByArguments(), (EClassifier)theDataelementsPackage.getVariableAccess(), null, "dataReceivePointByArguments", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_DataReceivePointByValues(), (EClassifier)theDataelementsPackage.getVariableAccess(), null, "dataReceivePointByValues", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_DataSendPoints(), (EClassifier)theDataelementsPackage.getVariableAccess(), null, "dataSendPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_DataWriteAccess(), (EClassifier)theDataelementsPackage.getVariableAccess(), null, "dataWriteAccess", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_ExternalTriggeringPoints(), (EClassifier)theTriggerPackage.getExternalTriggeringPoint(), theTriggerPackage.getExternalTriggeringPoint_RunnableEntity(), "externalTriggeringPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_InternalTriggeringPoints(), (EClassifier)theTriggerPackage.getInternalTriggeringPoint(), theTriggerPackage.getInternalTriggeringPoint_RunnableEntity(), "internalTriggeringPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_ModeAccessPoints(), (EClassifier)theModedeclarationgroupPackage.getModeAccessPoint(), theModedeclarationgroupPackage.getModeAccessPoint_RunnableEntity(), "modeAccessPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_ModeSwitchPoints(), (EClassifier)theModedeclarationgroupPackage.getModeSwitchPoint(), theModedeclarationgroupPackage.getModeSwitchPoint_RunnableEntity(), "modeSwitchPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_ParameterAccess(), (EClassifier)theDataelementsPackage.getParameterAccess(), theDataelementsPackage.getParameterAccess_RunnableEntity(), "parameterAccess", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_ReadLocalVariables(), (EClassifier)theDataelementsPackage.getVariableAccess(), null, "readLocalVariables", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_ServerCallPoints(), (EClassifier)theServercallPackage.getServerCallPoint(), theServercallPackage.getServerCallPoint_RunnableEntity(), "serverCallPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getRunnableEntity_Symbol(), (EClassifier)thePrimitivetypesPackage.getCIdentifier(), "symbol", "", 0, 1, RunnableEntity.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getRunnableEntity_WaitPoints(), (EClassifier)theRteeventsPackage.getWaitPoint(), theRteeventsPackage.getWaitPoint_RunnableEntity(), "waitPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_WrittenLocalVariables(), (EClassifier)theDataelementsPackage.getVariableAccess(), null, "writtenLocalVariables", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEEnum(this.handleTerminationAndRestartEnumEEnum, HandleTerminationAndRestartEnum.class, "HandleTerminationAndRestartEnum");
        this.addEEnumLiteral(this.handleTerminationAndRestartEnumEEnum, HandleTerminationAndRestartEnum.NO_SUPPORT);
        this.addEEnumLiteral(this.handleTerminationAndRestartEnumEEnum, HandleTerminationAndRestartEnum.CAN_BE_TERMINATED);
        this.addEEnumLiteral(this.handleTerminationAndRestartEnumEEnum, HandleTerminationAndRestartEnum.CAN_BE_TERMINATED_AND_RESTARTED);
        this.createResource("http://autosar.org/schema/r4.0/autosar40/swc/sib");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_InternalBehaviorAnnotations();
        this.createTaggedValuesOfGeneralization_ExecutableEntityAnnotations();
        this.createTaggedValuesOfGeneralization_AtpStructureElementAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "SwcInternalBehavior", "Modified", "Mon Aug 13 10:27:04 CEST 2007", "Created", "Sun May 02 21:02:39 CEST 2004", "GUID", "6A8F30F2-91E4-4d70-81D3-F4C132CEA64E", "Id", "1086433879"});
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum, source, new String[]{"Name", "HandleTerminationAndRestartEnum", "Modified", "Mon Oct 24 14:58:09 CEST 2011", "Created", "Tue Oct 28 13:15:20 CET 2008", "GUID", "D92E8763-1623-4cee-9B8F-4AA3B25F4CE9", "Id", "-664703718"});
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum.getELiterals().get(0), source, new String[]{"Name", "noSupport", "GUID", "629BDFAF-ED13-4c93-90D3-17F24DA9B237", "Id", "2046540529"});
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum.getELiterals().get(1), source, new String[]{"Name", "canBeTerminated", "GUID", "5EE4F689-8D37-4701-9C70-C7DC08D593CE", "Id", "1651794526"});
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum.getELiterals().get(2), source, new String[]{"Name", "canBeTerminatedAndRestarted", "GUID", "4C46EB75-FB67-4a9a-B8E0-682C9D3F65BE", "Id", "542490247"});
        this.addAnnotation((ENamedElement)this.swcInternalBehaviorEClass, source, new String[]{"Name", "SwcInternalBehavior", "Modified", "Mon Oct 24 15:09:39 CEST 2011", "Created", "Thu May 06 10:41:58 CEST 2004", "GUID", "F93E1AFF-0D1D-4927-B039-8C810B10887D", "Id", "-11611019"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_HandleTerminationAndRestart(), source, new String[]{"Name", "handleTerminationAndRestart", "GUID", "14DFF1FE-EBBD-419a-B153-6A1E1689B2B8", "Id", "1225196061"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_SupportsMultipleInstantiation(), source, new String[]{"Name", "supportsMultipleInstantiation", "GUID", "251A5255-0750-4eea-8F3F-17781EFD3551", "Id", "1207727762"});
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"Name", "RunnableEntity", "Modified", "Mon Oct 24 15:09:56 CEST 2011", "Created", "Thu Apr 01 08:11:47 CEST 2004", "GUID", "59B27A51-95A1-49f0-B448-79714ADF3D87", "Id", "-2083185844"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_CanBeInvokedConcurrently(), source, new String[]{"Name", "canBeInvokedConcurrently", "GUID", "67A79769-B9E6-4c03-B648-8ACD95B1E2D9", "Id", "1684483037"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_Symbol(), source, new String[]{"Name", "symbol", "GUID", "0B5E9528-3723-45e1-B6F2-D811D195F0CD", "Id", "-974706574"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SWC-INTERNAL-BEHAVIOR", "xml.namePlural", "SWC-INTERNAL-BEHAVIORS"});
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum, source, new String[]{"xml.tags", "mmt.qualifiedName=\"HandleTerminationAndRestartEnum\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::GeneralTemplateClasses::ArObject::ARObject", "mmt.qualifiedName", "HandleTerminationAndRestartEnum", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "HANDLE-TERMINATION-AND-RESTART-ENUM", "xml.namePlural", "HANDLE-TERMINATION-AND-RESTART-ENUMS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum.getELiterals().get(0), source, new String[]{"xml.tags", "mmt.qualifiedName=\"HandleTerminationAndRestartEnum.noSupport\"", "mmt.qualifiedName", "HandleTerminationAndRestartEnum.noSupport", "xml.name", "NO-SUPPORT", "xml.namePlural", "NO-SUPPORTS"});
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum.getELiterals().get(1), source, new String[]{"xml.tags", "mmt.qualifiedName=\"HandleTerminationAndRestartEnum.canBeTerminated\"", "mmt.qualifiedName", "HandleTerminationAndRestartEnum.canBeTerminated", "xml.name", "CAN-BE-TERMINATED", "xml.namePlural", "CAN-BE-TERMINATEDS"});
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum.getELiterals().get(2), source, new String[]{"xml.tags", "mmt.qualifiedName=\"HandleTerminationAndRestartEnum.canBeTerminatedAndRestarted\"", "mmt.qualifiedName", "HandleTerminationAndRestartEnum.canBeTerminatedAndRestarted", "xml.name", "CAN-BE-TERMINATED-AND-RESTARTED", "xml.namePlural", "CAN-BE-TERMINATED-AND-RESTARTEDS"});
        this.addAnnotation((ENamedElement)this.swcInternalBehaviorEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcInternalBehavior\"", "mmt.qualifiedName", "SwcInternalBehavior", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SWC-INTERNAL-BEHAVIOR", "xml.namePlural", "SWC-INTERNAL-BEHAVIORS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ArTypedPerInstanceMemories(), source, new String[]{"mmt.qualifiedName", "arTypedPerInstanceMemory.SwcInternalBehavior", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"arTypedPerInstanceMemory.SwcInternalBehavior\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "AR-TYPED-PER-INSTANCE-MEMORY", "xml.namePlural", "AR-TYPED-PER-INSTANCE-MEMORYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_Events(), source, new String[]{"xml.tags", "atp.Splitkey=\"shortName, variationPoint.shortLabel\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"event.SwcInternalBehavior\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "mmt.qualifiedName", "event.SwcInternalBehavior", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "atp.Splitkey", "shortName, variationPoint.shortLabel", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "EVENT", "xml.namePlural", "EVENTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ExplicitInterRunnableVariables(), source, new String[]{"mmt.qualifiedName", "explicitInterRunnableVariable.SwcInternalBehavior", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"explicitInterRunnableVariable.SwcInternalBehavior\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "EXPLICIT-INTER-RUNNABLE-VARIABLE", "xml.namePlural", "EXPLICIT-INTER-RUNNABLE-VARIABLES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_HandleTerminationAndRestart(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcInternalBehavior.handleTerminationAndRestart\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "SwcInternalBehavior.handleTerminationAndRestart", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "HANDLE-TERMINATION-AND-RESTART", "xml.namePlural", "HANDLE-TERMINATION-AND-RESTARTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ImplicitInterRunnableVariables(), source, new String[]{"mmt.qualifiedName", "implicitInterRunnableVariable.SwcInternalBehavior", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"implicitInterRunnableVariable.SwcInternalBehavior\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "IMPLICIT-INTER-RUNNABLE-VARIABLE", "xml.namePlural", "IMPLICIT-INTER-RUNNABLE-VARIABLES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_IncludedDataTypeSets(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"includedDataTypeSet.SwcInternalBehavior\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "includedDataTypeSet.SwcInternalBehavior", "pureMM.maxOccurs", "-1", "xml.name", "INCLUDED-DATA-TYPE-SET", "xml.namePlural", "INCLUDED-DATA-TYPE-SETS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_IncludedModeDeclarationGroupSets(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcInternalBehavior.includedModeDeclarationGroupSet\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcInternalBehavior.includedModeDeclarationGroupSet", "pureMM.maxOccurs", "-1", "xml.name", "INCLUDED-MODE-DECLARATION-GROUP-SET", "xml.namePlural", "INCLUDED-MODE-DECLARATION-GROUP-SETS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_InstantiationDataDefProps(), source, new String[]{"mmt.qualifiedName", "SwcInternalBehavior.instantiationDataDefProps", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"SwcInternalBehavior.instantiationDataDefProps\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "INSTANTIATION-DATA-DEF-PROPS", "xml.namePlural", "INSTANTIATION-DATA-DEF-PROPSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PerInstanceMemories(), source, new String[]{"mmt.qualifiedName", "perInstanceMemory.SwcInternalBehavior", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"perInstanceMemory.SwcInternalBehavior\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "PER-INSTANCE-MEMORY", "xml.namePlural", "PER-INSTANCE-MEMORYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PerInstanceParameters(), source, new String[]{"xml.tags", "atp.Splitkey=\"shortName, variationPoint.shortLabel\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"perInstanceParameter.SwcInternalBehavior\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "mmt.qualifiedName", "perInstanceParameter.SwcInternalBehavior", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "atp.Splitkey", "shortName, variationPoint.shortLabel", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "PER-INSTANCE-PARAMETER", "xml.namePlural", "PER-INSTANCE-PARAMETERS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PortAPIOptions(), source, new String[]{"mmt.qualifiedName", "portAPIOption.SwcInternalBehavior", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"portAPIOption.SwcInternalBehavior\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "PORT-API-OPTION", "xml.namePlural", "PORT-API-OPTIONS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_Runnables(), source, new String[]{"xml.tags", "atp.Splitkey=\"shortName, variationPoint.shortLabel\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"runnable.SwcInternalBehavior\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "mmt.qualifiedName", "runnable.SwcInternalBehavior", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "-1", "atp.Splitkey", "shortName, variationPoint.shortLabel", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "RUNNABLE", "xml.namePlural", "RUNNABLES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "11", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ServiceDependencies(), source, new String[]{"mmt.qualifiedName", "SwcInternalBehavior.serviceDependency", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"SwcInternalBehavior.serviceDependency\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "SERVICE-DEPENDENCY", "xml.namePlural", "SERVICE-DEPENDENCYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "12", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_SharedParameters(), source, new String[]{"xml.tags", "atp.Splitkey=\"shortName, variationPoint.shortLabel\";Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"sharedParameter.SwcInternalBehavior\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "mmt.qualifiedName", "sharedParameter.SwcInternalBehavior", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "atp.Splitkey", "shortName, variationPoint.shortLabel", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "SHARED-PARAMETER", "xml.namePlural", "SHARED-PARAMETERS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "13", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_SupportsMultipleInstantiation(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcInternalBehavior.supportsMultipleInstantiation\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "SwcInternalBehavior.supportsMultipleInstantiation", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "SUPPORTS-MULTIPLE-INSTANTIATION", "xml.namePlural", "SUPPORTS-MULTIPLE-INSTANTIATIONS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "14", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_VariationPointProxies(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcInternalBehavior.variationPointProxy\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcInternalBehavior.variationPointProxy", "pureMM.maxOccurs", "-1", "xml.name", "VARIATION-POINT-PROXY", "xml.namePlural", "VARIATION-POINT-PROXYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "15", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "16", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"RunnableEntity\"", "mmt.qualifiedName", "RunnableEntity", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "RUNNABLE-ENTITY", "xml.namePlural", "RUNNABLE-ENTITYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_Arguments(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"RunnableEntity.argument\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "RunnableEntity.argument", "pureMM.maxOccurs", "-1", "xml.name", "ARGUMENT", "xml.namePlural", "ARGUMENTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_AsynchronousServerCallResultPoints(), source, new String[]{"mmt.qualifiedName", "asynchronousServerCallResultPoint.runnable", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"asynchronousServerCallResultPoint.runnable\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "ASYNCHRONOUS-SERVER-CALL-RESULT-POINT", "xml.namePlural", "ASYNCHRONOUS-SERVER-CALL-RESULT-POINTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_CanBeInvokedConcurrently(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"RunnableEntity.canBeInvokedConcurrently\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "RunnableEntity.canBeInvokedConcurrently", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "CAN-BE-INVOKED-CONCURRENTLY", "xml.namePlural", "CAN-BE-INVOKED-CONCURRENTLYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReadAccess(), source, new String[]{"mmt.qualifiedName", "RunnableEntity.dataReadAccess", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"RunnableEntity.dataReadAccess\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "DATA-READ-ACCESS", "xml.namePlural", "DATA-READ-ACCESSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReceivePointByArguments(), source, new String[]{"mmt.qualifiedName", "RunnableEntity.dataReceivePointByArgument", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"RunnableEntity.dataReceivePointByArgument\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "DATA-RECEIVE-POINT-BY-ARGUMENT", "xml.namePlural", "DATA-RECEIVE-POINT-BY-ARGUMENTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReceivePointByValues(), source, new String[]{"mmt.qualifiedName", "RunnableEntity.dataReceivePointByValue", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"RunnableEntity.dataReceivePointByValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "DATA-RECEIVE-POINT-BY-VALUE", "xml.namePlural", "DATA-RECEIVE-POINT-BY-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataSendPoints(), source, new String[]{"mmt.qualifiedName", "RunnableEntity.dataSendPoint", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"RunnableEntity.dataSendPoint\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "DATA-SEND-POINT", "xml.namePlural", "DATA-SEND-POINTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataWriteAccess(), source, new String[]{"mmt.qualifiedName", "RunnableEntity.dataWriteAccess", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"RunnableEntity.dataWriteAccess\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "DATA-WRITE-ACCESS", "xml.namePlural", "DATA-WRITE-ACCESSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ExternalTriggeringPoints(), source, new String[]{"mmt.qualifiedName", "externalTriggeringPoint.runnable", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"externalTriggeringPoint.runnable\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "EXTERNAL-TRIGGERING-POINT", "xml.namePlural", "EXTERNAL-TRIGGERING-POINTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_InternalTriggeringPoints(), source, new String[]{"mmt.qualifiedName", "internalTriggeringPoint.RunnableEntity", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"internalTriggeringPoint.RunnableEntity\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "INTERNAL-TRIGGERING-POINT", "xml.namePlural", "INTERNAL-TRIGGERING-POINTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ModeAccessPoints(), source, new String[]{"mmt.qualifiedName", "modeAccessPoint.RunnableEntity", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"modeAccessPoint.RunnableEntity\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "MODE-ACCESS-POINT", "xml.namePlural", "MODE-ACCESS-POINTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ModeSwitchPoints(), source, new String[]{"mmt.qualifiedName", "modeSwitchPoint.runnable", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"modeSwitchPoint.runnable\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "MODE-SWITCH-POINT", "xml.namePlural", "MODE-SWITCH-POINTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "11", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ParameterAccess(), source, new String[]{"mmt.qualifiedName", "RunnableEntity.parameterAccess", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"RunnableEntity.parameterAccess\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "PARAMETER-ACCESS", "xml.namePlural", "PARAMETER-ACCESSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "12", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ReadLocalVariables(), source, new String[]{"mmt.qualifiedName", "RunnableEntity.readLocalVariable", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"RunnableEntity.readLocalVariable\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "READ-LOCAL-VARIABLE", "xml.namePlural", "READ-LOCAL-VARIABLES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "13", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ServerCallPoints(), source, new String[]{"mmt.qualifiedName", "serverCallPoint.runnable", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"serverCallPoint.runnable\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "SERVER-CALL-POINT", "xml.namePlural", "SERVER-CALL-POINTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "14", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_Symbol(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"RunnableEntity.symbol\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "RunnableEntity.symbol", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "SYMBOL", "xml.namePlural", "SYMBOLS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "15", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WaitPoints(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"waitPoint.runnable\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "waitPoint.runnable", "pureMM.maxOccurs", "-1", "xml.name", "WAIT-POINT", "xml.namePlural", "WAIT-POINTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "16", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WrittenLocalVariables(), source, new String[]{"mmt.qualifiedName", "RunnableEntity.writtenLocalVariable", "xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"RunnableEntity.writtenLocalVariable\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "Vh.latestBindingTime", "PreCompileTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "WRITTEN-LOCAL-VARIABLE", "xml.namePlural", "WRITTEN-LOCAL-VARIABLES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "17", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "18", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.swcInternalBehaviorEClass, source, new String[]{"name", "SWC-INTERNAL-BEHAVIOR", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ArTypedPerInstanceMemories(), source, new String[]{"name", "AR-TYPED-PER-INSTANCE-MEMORYS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_Events(), source, new String[]{"name", "EVENTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ExplicitInterRunnableVariables(), source, new String[]{"name", "EXPLICIT-INTER-RUNNABLE-VARIABLES", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_HandleTerminationAndRestart(), source, new String[]{"name", "HANDLE-TERMINATION-AND-RESTART", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ImplicitInterRunnableVariables(), source, new String[]{"name", "IMPLICIT-INTER-RUNNABLE-VARIABLES", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_IncludedDataTypeSets(), source, new String[]{"name", "INCLUDED-DATA-TYPE-SETS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_IncludedModeDeclarationGroupSets(), source, new String[]{"name", "INCLUDED-MODE-DECLARATION-GROUP-SETS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_InstantiationDataDefProps(), source, new String[]{"name", "INSTANTIATION-DATA-DEF-PROPSS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PerInstanceMemories(), source, new String[]{"name", "PER-INSTANCE-MEMORYS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PerInstanceParameters(), source, new String[]{"name", "PER-INSTANCE-PARAMETERS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PortAPIOptions(), source, new String[]{"name", "PORT-API-OPTIONS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_Runnables(), source, new String[]{"name", "RUNNABLES", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ServiceDependencies(), source, new String[]{"name", "SERVICE-DEPENDENCYS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_SharedParameters(), source, new String[]{"name", "SHARED-PARAMETERS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_SupportsMultipleInstantiation(), source, new String[]{"name", "SUPPORTS-MULTIPLE-INSTANTIATION", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_VariationPointProxies(), source, new String[]{"name", "VARIATION-POINT-PROXYS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"name", "RUNNABLE-ENTITY", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_Arguments(), source, new String[]{"name", "ARGUMENTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_AsynchronousServerCallResultPoints(), source, new String[]{"name", "ASYNCHRONOUS-SERVER-CALL-RESULT-POINTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_CanBeInvokedConcurrently(), source, new String[]{"name", "CAN-BE-INVOKED-CONCURRENTLY", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReadAccess(), source, new String[]{"name", "DATA-READ-ACCESSS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReceivePointByArguments(), source, new String[]{"name", "DATA-RECEIVE-POINT-BY-ARGUMENTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReceivePointByValues(), source, new String[]{"name", "DATA-RECEIVE-POINT-BY-VALUES", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataSendPoints(), source, new String[]{"name", "DATA-SEND-POINTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataWriteAccess(), source, new String[]{"name", "DATA-WRITE-ACCESSS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ExternalTriggeringPoints(), source, new String[]{"name", "EXTERNAL-TRIGGERING-POINTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_InternalTriggeringPoints(), source, new String[]{"name", "INTERNAL-TRIGGERING-POINTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ModeAccessPoints(), source, new String[]{"name", "MODE-ACCESS-POINTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ModeSwitchPoints(), source, new String[]{"name", "MODE-SWITCH-POINTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ParameterAccess(), source, new String[]{"name", "PARAMETER-ACCESSS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ReadLocalVariables(), source, new String[]{"name", "READ-LOCAL-VARIABLES", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ServerCallPoints(), source, new String[]{"name", "SERVER-CALL-POINTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_Symbol(), source, new String[]{"name", "SYMBOL", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WaitPoints(), source, new String[]{"name", "WAIT-POINTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WrittenLocalVariables(), source, new String[]{"name", "WRITTEN-LOCAL-VARIABLES", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum, source, new String[]{"documentation", "Controls the behavior of an AtomicSwComponentType with respect to stop and restart.\r\n"});
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum.getELiterals().get(0), source, new String[]{"documentation", "Stop and restart is not supported at all."});
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum.getELiterals().get(1), source, new String[]{"documentation", "Supports termination."});
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum.getELiterals().get(2), source, new String[]{"documentation", "Supports termination and restarting."});
        this.addAnnotation((ENamedElement)this.swcInternalBehaviorEClass, source, new String[]{"documentation", "The SwcInternalBehavior of an AtomicSwComponentType describes the relevant aspects of the software-component with respect to the RTE, i.e. the RunnableEntities and the RTEEvents they respond to.\r\n"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ArTypedPerInstanceMemories(), source, new String[]{"documentation", "Defines an AUTOSAR typed memory-block that needs to be available for each instance of the SW-component. This is typically only useful if supportsMultipleInstantiation is TRUE or if the component defines NVRAM access via permanent blocks.\r\nThe aggregation of arTypedPerInstanceMemory is subject to variability with the purpose to support variability in the software components implementations. Typically different algorithms in the implementation are requiring different number of memory objects.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_Events(), source, new String[]{"documentation", "This is a RTEEvent specified for the particular SwcInternalBehavior.\r\n\r\nThe aggregation of RTEEvent is subject to variability with the purpose to support the conditional existence of RTE events. Note: the number of RTE events might vary due to the conditional existence of PortPrototypes using DataReceivedEvents or due to different scheduling needs of algorithms.\r\n\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ExplicitInterRunnableVariables(), source, new String[]{"documentation", "Implement state message semantics for establishing communication among runnables of the same component.\r\nThe aggregation of explicitInterRunnableVariable is subject to variability with the purpose to support variability in the software components implementations. Typically different algorithms in the implementation are requiring different number of memory objects.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_HandleTerminationAndRestart(), source, new String[]{"documentation", "This attribute controls the behavior with respect to stopping and restarting. The corresponding AtomicSwComponentType may either not support stop and restart, or support only stop, or support both stop and restart.\r\n"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ImplicitInterRunnableVariables(), source, new String[]{"documentation", "Implement state message semantics for establishing communication among runnables of the same component.\r\nThe aggregation of implicitInterRunnableVariable is subject to variability with the purpose to support variability in the software components implementations. Typically different algorithms in the implementation are requiring different number of memory objects.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_IncludedDataTypeSets(), source, new String[]{"documentation", "The includedDataTypeSet is used by a software component for its implementation."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_IncludedModeDeclarationGroupSets(), source, new String[]{"documentation", "This aggregation represents the included ModeDeclarationGroups"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_InstantiationDataDefProps(), source, new String[]{"documentation", "The purpose of this is that within the context  of a given SwComponentType some data def properties of individual instantiations can be  modified. \r\nThe aggregation of InstantiationDataDefProps is subject to variability with the purpose to support the conditional existence of PortPrototypes and component local memories like \"perInstanceParameter\" or \"arTypedPerInstanceMemory\".\r\n\r\n\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PerInstanceMemories(), source, new String[]{"documentation", "Defines a per-instance memory object needed by this software component.\r\nThe aggregation of PerInstanceMemory is subject to variability with the purpose to support variability in the software components implementations. Typically different algorithms in the implementation are requiring different number of memory objects.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PerInstanceParameters(), source, new String[]{"documentation", "Defines parameter(s) or characteristic value(s) that needs to be available for each instance of the software-component. This is typically only useful if supportsMultipleInstantiation is TRUE.\r\nThe aggregation of perInstanceParameter is subject to variability with the purpose to support variability in the software components implementations. Typically different algorithms in the implementation are requiring different number of memory objects.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PortAPIOptions(), source, new String[]{"documentation", "Options for generating the signature of port-related calls from a runnable to the RTE and vice versa.\r\nThe aggregation of PortPrototypes is subject to variability with the purpose to support the conditional existence of ports. \r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_Runnables(), source, new String[]{"documentation", "This is a RunnableEntity specified for the particular SwcInternalBehavior.\r\n\r\nThe aggregation of RunnableEntity is subject to variability with the purpose to support the conditional existence of RunnableEntities. Note: the number of RunnableEntities might vary due to the conditional existence of PortPrototypes using DataReceivedEvents or due to different scheduling needs of algorithms.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ServiceDependencies(), source, new String[]{"documentation", "Defines the requirements on AUTOSAR Services for a particular item.\r\n\r\nThe aggregation of SwcServiceDependency is subject to variability with the purpose to support the conditional existence of ports as well as the conditional existence of ServiceNeeds.\r\n\r\nThe SwcServiceDependency owned by an SwcInternalBehavior can be located in a different physical file in order to support that SwcServiceDependency might be provided in later development \r\nsteps or even by different expert domain (e.g OBD expert for Obd related  Service Needs) tools. Therefore the aggregation is <<atpSplitable>>.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_SharedParameters(), source, new String[]{"documentation", "Defines parameter(s) or characteristic value(s) shared between SwComponentPrototypes of the same SwComponentType\r\nThe aggregation of sharedParameter is subject to variability with the purpose to support variability in the software components implementations. Typically different algorithms in the implementation are requiring different number of memory objects.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_SupportsMultipleInstantiation(), source, new String[]{"documentation", "Indicate whether the corresponding software-component can be multiply instantiated on one ECU. In this case the attribute will result in an appropriate component API on programming language level (with or without instance handle)."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_VariationPointProxies(), source, new String[]{"documentation", "Proxy of a variation points in the C/C++ implementation."});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"documentation", "A RunnableEntity represents the smallest code-fragment that is provided by an AtomicSwComponentType and are executed under control of the RTE. RunnableEntities are for instance set up to respond to data reception or operation invocation on a server."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_Arguments(), source, new String[]{"documentation", "This represents the formal definition of a an argument to a RunnableEntity."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_AsynchronousServerCallResultPoints(), source, new String[]{"documentation", "The server call result point admits a runnable to fetch the result of an asynchronous server call.\r\n\r\nThe aggregation of AsynchronousServerCallResultPoint is subject to variability with the purpose to support the conditional existence of client server PortPrototypes and the variant existence of server call result points in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_CanBeInvokedConcurrently(), source, new String[]{"documentation", "If the value of this attribute is set to TRUE the enclosing RunnableEntity can be invoked concurrently (even for one instance of the corresponding AtomicSwComponentType). This implies that it is the responsibility of the implementation of the RunnableEntity to take care of this form of concurrency. Note that the default value of this attribute is FALSE.\r\n"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReadAccess(), source, new String[]{"documentation", "RunnableEntity has implicit read access to dataElement of a sender-receiver PortPrototype or nv data of a nv data PortPrototype.\r\n\r\nThe aggregation of dataReadAccess is subject to variability with the purpose to support the conditional existence of sender receiver ports or the variant existence of dataReadAccess in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReceivePointByArguments(), source, new String[]{"documentation", "RunnableEntity has explicit read access to dataElement of a sender-receiver PortPrototype or nv data of a nv data PortPrototype.\r\nThe result is passed back to the application by means of an argument in the function signature.\r\n\r\nThe aggregation of dataReceivePointByArgument is subject to variability with the purpose to support the conditional existence of sender receiver PortPrototype or the variant existence of data receive points in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReceivePointByValues(), source, new String[]{"documentation", "RunnableEntity has explicit read access to dataElement of a sender-receiver PortPrototyoe or nv data of a nv data PortPrototype.\r\n\r\nThe result is passed back to the application by means of the return value.\r\nThe aggregation of dataReceivePointByValue is subject to variability with the purpose to support the conditional existence of sender receiver ports or the variant existence of data receive points in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataSendPoints(), source, new String[]{"documentation", "RunnableEntity has explicit write access to dataElement of a sender-receiver PortPrototype or nv data of a nv data PortPrototype.\r\n\r\nThe aggregation of dataSendPoint is subject to variability with the purpose to support the conditional existence of sender receiver PortPrototype or the variant existence of data send points in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataWriteAccess(), source, new String[]{"documentation", "RunnableEntity has implicit write access to dataElement of a sender-receiver PortPrototype or nv data of a nv data PortPrototype.\r\n\r\nThe aggregation of dataWriteAccess is subject to variability with the purpose to support the conditional existence of sender receiver ports or the variant existence of dataWriteAccess in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ExternalTriggeringPoints(), source, new String[]{"documentation", "The aggregation of ExternalTriggeringPoint is subject to variability with the purpose to support the conditional existence of trigger ports or the variant existence of external triggering points in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_InternalTriggeringPoints(), source, new String[]{"documentation", "The aggregation of InternalTriggeringPoint is subject to variability with the purpose to support the variant existence of internal triggering points in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ModeAccessPoints(), source, new String[]{"documentation", "The runnable has a mode access point.\r\nThe aggregation of ModeAccessPoint is subject to variability with the purpose to support the conditional existence of mode ports or the variant existence of mode access points in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ModeSwitchPoints(), source, new String[]{"documentation", "The runnable has a mode switch point.\r\nThe aggregation of ModeSwitchPoint is subject to variability with the purpose to support the conditional existence of mode ports or the variant existence of mode switch points in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ParameterAccess(), source, new String[]{"documentation", "The presence of a ParameterAccess implies that a RunnableEntity needs read only access to a ParameterDataPrototype which may either be local or within a PortPrototype.\r\n\r\nThe aggregation of ParameterAccess is subject to variability with the purpose to support the conditional existence of parameter ports and component local parameters as well as the variant existence of ParameterAccess (points) in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ReadLocalVariables(), source, new String[]{"documentation", "The presence of a readLocalVariable implies that a RunnableEntity needs read access to a VariableDataPrototype in the role of implicitInterRunnableVariable or explicitInterRunnableVariable.\r\n\r\nThe aggregation of readLocalVariable is subject to variability with the purpose to support the conditional existence of implicitInterRunnableVariable and explicitInterRunnableVariable or the variant existence of readLocalVariable (points) in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ServerCallPoints(), source, new String[]{"documentation", "The RunnableEntity has a ServerCallPoint.\r\nThe aggregation of ServerCallPoint is subject to variability with the purpose to support the conditional existence of client server PortPrototypes or the variant existence of server call points in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_Symbol(), source, new String[]{"documentation", "The symbol describing this RunnableEntity's entry point. This is considered the API of the RunnableEntity and is required during the RTE contract phase."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WaitPoints(), source, new String[]{"documentation", "The WaitPoint associated with teh RunnableEntity."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WrittenLocalVariables(), source, new String[]{"documentation", "The presence of a writtenLocalVariable implies that a RunnableEntity needs write access to a VariableDataPrototype in the role of implicitInterRunnableVariable or explicitInterRunnableVariable.\r\n\r\nThe aggregation of writtenLocalVariable is subject to variability with the purpose to support the conditional existence of implicitInterRunnableVariable and explicitInterRunnableVariable or the variant existence of writtenLocalVariable (points) in the implementation.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.handleTerminationAndRestartEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ArTypedPerInstanceMemories(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_Events(), source, new String[]{"Stereotype", "atpSplitable"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ExplicitInterRunnableVariables(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ImplicitInterRunnableVariables(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_InstantiationDataDefProps(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PerInstanceMemories(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PerInstanceParameters(), source, new String[]{"Stereotype", "atpSplitable"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_PortAPIOptions(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_Runnables(), source, new String[]{"Stereotype", "atpSplitable"});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_ServiceDependencies(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getSwcInternalBehavior_SharedParameters(), source, new String[]{"Stereotype", "atpSplitable"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_AsynchronousServerCallResultPoints(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReadAccess(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReceivePointByArguments(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReceivePointByValues(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataSendPoints(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataWriteAccess(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ExternalTriggeringPoints(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_InternalTriggeringPoints(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ModeAccessPoints(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ModeSwitchPoints(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ParameterAccess(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ReadLocalVariables(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ServerCallPoints(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WrittenLocalVariables(), source, new String[]{"Stereotype", ""});
    }

    protected void createTaggedValuesOfGeneralization_InternalBehaviorAnnotations() {
        String source = "TaggedValuesOfGeneralization_InternalBehavior";
        this.addAnnotation((ENamedElement)this.swcInternalBehaviorEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcInternalBehavior->InternalBehavior", "GUID", "EFAE8C21-C8B4-4c53-8A45-4F8F08227470", "Id", "-399993825", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ExecutableEntityAnnotations() {
        String source = "TaggedValuesOfGeneralization_ExecutableEntity";
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "RunnableEntity->ExecutableEntity", "GUID", "9A5B2823-6531-475b-AF6F-23BAA1F60333", "Id", "1119319223", "xml.sequenceOffset", "1"});
    }

    protected void createTaggedValuesOfGeneralization_AtpStructureElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_AtpStructureElement";
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "RunnableEntity->AtpStructureElement", "GUID", "989DD241-9DFB-432c-ACF0-2E59697651EF", "Id", "633358642", "xml.sequenceOffset", "0"});
    }
}

