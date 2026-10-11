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
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EOperation
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar40.swcomponent.datatype.computationmethod.impl;

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
import autosar40.swcomponent.datatype.computationmethod.Compu;
import autosar40.swcomponent.datatype.computationmethod.CompuConst;
import autosar40.swcomponent.datatype.computationmethod.CompuConstContent;
import autosar40.swcomponent.datatype.computationmethod.CompuConstFormulaContent;
import autosar40.swcomponent.datatype.computationmethod.CompuConstNumericContent;
import autosar40.swcomponent.datatype.computationmethod.CompuConstTextContent;
import autosar40.swcomponent.datatype.computationmethod.CompuContent;
import autosar40.swcomponent.datatype.computationmethod.CompuGenericMath;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import autosar40.swcomponent.datatype.computationmethod.CompuNominatorDenominator;
import autosar40.swcomponent.datatype.computationmethod.CompuRationalCoeffs;
import autosar40.swcomponent.datatype.computationmethod.CompuScale;
import autosar40.swcomponent.datatype.computationmethod.CompuScaleConstantContents;
import autosar40.swcomponent.datatype.computationmethod.CompuScaleContents;
import autosar40.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import autosar40.swcomponent.datatype.computationmethod.CompuScales;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodFactory;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
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
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class ComputationmethodPackageImpl
extends EPackageImpl
implements ComputationmethodPackage {
    private EClass compuEClass = null;
    private EClass compuConstEClass = null;
    private EClass compuConstContentEClass = null;
    private EClass compuContentEClass = null;
    private EClass compuConstFormulaContentEClass = null;
    private EClass compuConstNumericContentEClass = null;
    private EClass compuConstTextContentEClass = null;
    private EClass compuGenericMathEClass = null;
    private EClass compuNominatorDenominatorEClass = null;
    private EClass compuRationalCoeffsEClass = null;
    private EClass compuScaleEClass = null;
    private EClass compuScaleContentsEClass = null;
    private EClass compuScaleConstantContentsEClass = null;
    private EClass compuScaleRationalFormulaEClass = null;
    private EClass compuScalesEClass = null;
    private EClass compuMethodEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ComputationmethodPackageImpl() {
        super("http://autosar.org/schema/r4.0/autosar40/swc/d/cm", (EFactory)ComputationmethodFactory.eINSTANCE);
    }

    public static ComputationmethodPackage init() {
        if (isInited) {
            return (ComputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/cm");
        }
        ComputationmethodPackageImpl theComputationmethodPackage = (ComputationmethodPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/swc/d/cm") instanceof ComputationmethodPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/swc/d/cm") : new ComputationmethodPackageImpl());
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
        theComputationmethodPackage.createPackageContents();
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
        theComputationmethodPackage.initializePackageContents();
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
        theComputationmethodPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/schema/r4.0/autosar40/swc/d/cm", (Object)theComputationmethodPackage);
        return theComputationmethodPackage;
    }

    public EClass getCompu() {
        return this.compuEClass;
    }

    public EReference getCompu_CompuContent() {
        return (EReference)this.compuEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCompu_CompuDefaultValue() {
        return (EReference)this.compuEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCompuConst() {
        return this.compuConstEClass;
    }

    public EReference getCompuConst_CompuConstContentType() {
        return (EReference)this.compuConstEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstContent() {
        return this.compuConstContentEClass;
    }

    public EReference getCompuConstContent_CompuConst() {
        return (EReference)this.compuConstContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuContent() {
        return this.compuContentEClass;
    }

    public EReference getCompuContent_Compu() {
        return (EReference)this.compuContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstFormulaContent() {
        return this.compuConstFormulaContentEClass;
    }

    public EReference getCompuConstFormulaContent_Vf() {
        return (EReference)this.compuConstFormulaContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstNumericContent() {
        return this.compuConstNumericContentEClass;
    }

    public EAttribute getCompuConstNumericContent_V() {
        return (EAttribute)this.compuConstNumericContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstTextContent() {
        return this.compuConstTextContentEClass;
    }

    public EAttribute getCompuConstTextContent_Vt() {
        return (EAttribute)this.compuConstTextContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuGenericMath() {
        return this.compuGenericMathEClass;
    }

    public EReference getCompuGenericMath_SwDataDependency() {
        return (EReference)this.compuGenericMathEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCompuGenericMath_Level() {
        return (EAttribute)this.compuGenericMathEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCompuNominatorDenominator() {
        return this.compuNominatorDenominatorEClass;
    }

    public EReference getCompuNominatorDenominator_Vs() {
        return (EReference)this.compuNominatorDenominatorEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuRationalCoeffs() {
        return this.compuRationalCoeffsEClass;
    }

    public EReference getCompuRationalCoeffs_CompuScaleRationalFormula() {
        return (EReference)this.compuRationalCoeffsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCompuRationalCoeffs_CompuNumerator() {
        return (EReference)this.compuRationalCoeffsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCompuRationalCoeffs_CompuDenominator() {
        return (EReference)this.compuRationalCoeffsEClass.getEStructuralFeatures().get(2);
    }

    public EClass getCompuScale() {
        return this.compuScaleEClass;
    }

    public EReference getCompuScale_CompuScales() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCompuScale_ShortLabel() {
        return (EAttribute)this.compuScaleEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getCompuScale_Symbol() {
        return (EAttribute)this.compuScaleEClass.getEStructuralFeatures().get(2);
    }

    public EReference getCompuScale_Desc() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getCompuScale_Mask() {
        return (EAttribute)this.compuScaleEClass.getEStructuralFeatures().get(4);
    }

    public EReference getCompuScale_LowerLimit() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(5);
    }

    public EReference getCompuScale_UpperLimit() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(6);
    }

    public EReference getCompuScale_CompuInverseValue() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(7);
    }

    public EReference getCompuScale_CompuScaleContents() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(8);
    }

    public EReference getCompuScale_VariationPoint() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(9);
    }

    public EClass getCompuScaleContents() {
        return this.compuScaleContentsEClass;
    }

    public EReference getCompuScaleContents_CompuScale() {
        return (EReference)this.compuScaleContentsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuScaleConstantContents() {
        return this.compuScaleConstantContentsEClass;
    }

    public EReference getCompuScaleConstantContents_CompuConst() {
        return (EReference)this.compuScaleConstantContentsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuScaleRationalFormula() {
        return this.compuScaleRationalFormulaEClass;
    }

    public EReference getCompuScaleRationalFormula_CompuRationalCoeffs() {
        return (EReference)this.compuScaleRationalFormulaEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuScales() {
        return this.compuScalesEClass;
    }

    public EReference getCompuScales_CompuScales() {
        return (EReference)this.compuScalesEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuMethod() {
        return this.compuMethodEClass;
    }

    public EAttribute getCompuMethod_DisplayFormat() {
        return (EAttribute)this.compuMethodEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCompuMethod_Unit() {
        return (EReference)this.compuMethodEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCompuMethod_CompuInternalToPhys() {
        return (EReference)this.compuMethodEClass.getEStructuralFeatures().get(2);
    }

    public EReference getCompuMethod_CompuPhysToInternal() {
        return (EReference)this.compuMethodEClass.getEStructuralFeatures().get(3);
    }

    public ComputationmethodFactory getComputationmethodFactory() {
        return (ComputationmethodFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.compuEClass = this.createEClass(0);
        this.createEReference(this.compuEClass, 5);
        this.createEReference(this.compuEClass, 6);
        this.compuConstEClass = this.createEClass(1);
        this.createEReference(this.compuConstEClass, 5);
        this.compuConstContentEClass = this.createEClass(2);
        this.createEReference(this.compuConstContentEClass, 4);
        this.compuContentEClass = this.createEClass(3);
        this.createEReference(this.compuContentEClass, 4);
        this.compuConstFormulaContentEClass = this.createEClass(4);
        this.createEReference(this.compuConstFormulaContentEClass, 5);
        this.compuConstNumericContentEClass = this.createEClass(5);
        this.createEAttribute(this.compuConstNumericContentEClass, 6);
        this.compuConstTextContentEClass = this.createEClass(6);
        this.createEAttribute(this.compuConstTextContentEClass, 6);
        this.compuGenericMathEClass = this.createEClass(7);
        this.createEReference(this.compuGenericMathEClass, 5);
        this.createEAttribute(this.compuGenericMathEClass, 6);
        this.compuNominatorDenominatorEClass = this.createEClass(8);
        this.createEReference(this.compuNominatorDenominatorEClass, 4);
        this.compuRationalCoeffsEClass = this.createEClass(9);
        this.createEReference(this.compuRationalCoeffsEClass, 6);
        this.createEReference(this.compuRationalCoeffsEClass, 7);
        this.createEReference(this.compuRationalCoeffsEClass, 8);
        this.compuScaleEClass = this.createEClass(10);
        this.createEReference(this.compuScaleEClass, 8);
        this.createEAttribute(this.compuScaleEClass, 9);
        this.createEAttribute(this.compuScaleEClass, 10);
        this.createEReference(this.compuScaleEClass, 11);
        this.createEAttribute(this.compuScaleEClass, 12);
        this.createEReference(this.compuScaleEClass, 13);
        this.createEReference(this.compuScaleEClass, 14);
        this.createEReference(this.compuScaleEClass, 15);
        this.createEReference(this.compuScaleEClass, 16);
        this.createEReference(this.compuScaleEClass, 17);
        this.compuScaleContentsEClass = this.createEClass(11);
        this.createEReference(this.compuScaleContentsEClass, 4);
        this.compuScaleConstantContentsEClass = this.createEClass(12);
        this.createEReference(this.compuScaleConstantContentsEClass, 6);
        this.compuScaleRationalFormulaEClass = this.createEClass(13);
        this.createEReference(this.compuScaleRationalFormulaEClass, 6);
        this.compuScalesEClass = this.createEClass(14);
        this.createEReference(this.compuScalesEClass, 6);
        this.compuMethodEClass = this.createEClass(15);
        this.createEAttribute(this.compuMethodEClass, 25);
        this.createEReference(this.compuMethodEClass, 26);
        this.createEReference(this.compuMethodEClass, 27);
        this.createEReference(this.compuMethodEClass, 28);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("computationmethod");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/schema/r4.0/autosar40/swc/d/cm");
        ArobjectPackage theArobjectPackage = (ArobjectPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ao");
        GcomputationmethodPackage theGcomputationmethodPackage = (GcomputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/cm");
        autosar40.genericstructure.varianthandling.VarianthandlingPackage theVarianthandlingPackage = (autosar40.genericstructure.varianthandling.VarianthandlingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/vh");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt");
        FormulalanguagePackage theFormulalanguagePackage = (FormulalanguagePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/fl");
        DatadefpropertiesPackage theDatadefpropertiesPackage = (DatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ddp");
        MultilanguagedataPackage theMultilanguagedataPackage = (MultilanguagedataPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/md");
        LocalconstraintsPackage theLocalconstraintsPackage = (LocalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/lc");
        ArpackagePackage theArpackagePackage = (ArpackagePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/arp");
        AbstractblueprintstructurePackage theAbstractblueprintstructurePackage = (AbstractblueprintstructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/abs");
        UnitsPackage theUnitsPackage = (UnitsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/u");
        this.compuEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.compuEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompu());
        this.compuConstEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.compuConstEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConst());
        this.compuConstContentEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.compuConstContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstContent());
        this.compuContentEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.compuContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuContent());
        this.compuConstFormulaContentEClass.getESuperTypes().add((Object)this.getCompuConstContent());
        this.compuConstFormulaContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstFormulaContent());
        this.compuConstNumericContentEClass.getESuperTypes().add((Object)this.getCompuConstContent());
        this.compuConstNumericContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstNumericContent());
        this.compuConstTextContentEClass.getESuperTypes().add((Object)this.getCompuConstContent());
        this.compuConstTextContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstTextContent());
        this.compuGenericMathEClass.getESuperTypes().add((Object)theFormulalanguagePackage.getFormulaExpression());
        this.compuNominatorDenominatorEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.compuNominatorDenominatorEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuNominatorDenominator());
        this.compuRationalCoeffsEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.compuRationalCoeffsEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuRationalCoeffs());
        this.compuScaleEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.compuScaleEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScale());
        this.compuScaleContentsEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.compuScaleContentsEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScaleContents());
        this.compuScaleConstantContentsEClass.getESuperTypes().add((Object)this.getCompuScaleContents());
        this.compuScaleConstantContentsEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScaleConstantContents());
        this.compuScaleRationalFormulaEClass.getESuperTypes().add((Object)this.getCompuScaleContents());
        this.compuScaleRationalFormulaEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScaleRationalFormula());
        this.compuScalesEClass.getESuperTypes().add((Object)this.getCompuContent());
        this.compuScalesEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScales());
        this.compuMethodEClass.getESuperTypes().add((Object)theArpackagePackage.getARElement());
        this.compuMethodEClass.getESuperTypes().add((Object)theAbstractblueprintstructurePackage.getAtpBlueprint());
        this.compuMethodEClass.getESuperTypes().add((Object)theAbstractblueprintstructurePackage.getAtpBlueprintable());
        this.compuMethodEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuMethod());
        this.initEClass(this.compuEClass, Compu.class, "Compu", false, false, true);
        this.initEReference(this.getCompu_CompuContent(), (EClassifier)this.getCompuContent(), this.getCompuContent_Compu(), "compuContent", null, 0, 1, Compu.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompu_CompuDefaultValue(), (EClassifier)this.getCompuConst(), null, "compuDefaultValue", null, 0, 1, Compu.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuConstEClass, CompuConst.class, "CompuConst", false, false, true);
        this.initEReference(this.getCompuConst_CompuConstContentType(), (EClassifier)this.getCompuConstContent(), this.getCompuConstContent_CompuConst(), "compuConstContentType", null, 0, 1, CompuConst.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuConstContentEClass, CompuConstContent.class, "CompuConstContent", true, false, true);
        this.initEReference(this.getCompuConstContent_CompuConst(), (EClassifier)this.getCompuConst(), this.getCompuConst_CompuConstContentType(), "compuConst", null, 0, 1, CompuConstContent.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.compuContentEClass, CompuContent.class, "CompuContent", true, false, true);
        this.initEReference(this.getCompuContent_Compu(), (EClassifier)this.getCompu(), this.getCompu_CompuContent(), "compu", null, 0, 1, CompuContent.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.compuConstFormulaContentEClass, CompuConstFormulaContent.class, "CompuConstFormulaContent", false, false, true);
        this.initEReference(this.getCompuConstFormulaContent_Vf(), (EClassifier)theVarianthandlingPackage.getNumericalValueVariationPoint(), null, "vf", null, 0, 1, CompuConstFormulaContent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuConstNumericContentEClass, CompuConstNumericContent.class, "CompuConstNumericContent", false, false, true);
        this.initEAttribute(this.getCompuConstNumericContent_V(), (EClassifier)thePrimitivetypesPackage.getNumerical(), "v", "", 0, 1, CompuConstNumericContent.class, false, false, true, true, false, true, false, true);
        this.addEOperation(this.compuConstNumericContentEClass, (EClassifier)this.ecorePackage.getEFloat(), "getVAsFloat", 0, 1, true, true);
        this.addEOperation(this.compuConstNumericContentEClass, (EClassifier)this.ecorePackage.getEInt(), "getVAsInteger", 0, 1, true, true);
        this.addEOperation(this.compuConstNumericContentEClass, (EClassifier)this.ecorePackage.getEInt(), "getRadixForV", 0, 1, true, true);
        EOperation op = this.addEOperation(this.compuConstNumericContentEClass, null, "setV", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEInt(), "radix", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEString(), "value", 0, 1, true, true);
        this.initEClass(this.compuConstTextContentEClass, CompuConstTextContent.class, "CompuConstTextContent", false, false, true);
        this.initEAttribute(this.getCompuConstTextContent_Vt(), (EClassifier)thePrimitivetypesPackage.getVerbatimString(), "vt", "", 0, 1, CompuConstTextContent.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.compuGenericMathEClass, CompuGenericMath.class, "CompuGenericMath", false, false, true);
        this.initEReference(this.getCompuGenericMath_SwDataDependency(), (EClassifier)theDatadefpropertiesPackage.getSwDataDependency(), theDatadefpropertiesPackage.getSwDataDependency_SwDataDependencyFormula(), "swDataDependency", null, 0, 1, CompuGenericMath.class, true, true, true, false, false, false, false, true, true);
        this.initEAttribute(this.getCompuGenericMath_Level(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "level", "", 0, 1, CompuGenericMath.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.compuNominatorDenominatorEClass, CompuNominatorDenominator.class, "CompuNominatorDenominator", false, false, true);
        this.initEReference(this.getCompuNominatorDenominator_Vs(), (EClassifier)theVarianthandlingPackage.getNumericalValueVariationPoint(), null, "vs", null, 0, -1, CompuNominatorDenominator.class, false, false, true, true, false, false, false, false, true);
        this.initEClass(this.compuRationalCoeffsEClass, CompuRationalCoeffs.class, "CompuRationalCoeffs", false, false, true);
        this.initEReference(this.getCompuRationalCoeffs_CompuScaleRationalFormula(), (EClassifier)this.getCompuScaleRationalFormula(), this.getCompuScaleRationalFormula_CompuRationalCoeffs(), "compuScaleRationalFormula", null, 0, 1, CompuRationalCoeffs.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getCompuRationalCoeffs_CompuNumerator(), (EClassifier)this.getCompuNominatorDenominator(), null, "compuNumerator", null, 0, 1, CompuRationalCoeffs.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuRationalCoeffs_CompuDenominator(), (EClassifier)this.getCompuNominatorDenominator(), null, "compuDenominator", null, 0, 1, CompuRationalCoeffs.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuScaleEClass, CompuScale.class, "CompuScale", false, false, true);
        this.initEReference(this.getCompuScale_CompuScales(), (EClassifier)this.getCompuScales(), this.getCompuScales_CompuScales(), "compuScales", null, 0, 1, CompuScale.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getCompuScale_ShortLabel(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "shortLabel", "", 0, 1, CompuScale.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCompuScale_Symbol(), (EClassifier)thePrimitivetypesPackage.getCIdentifier(), "symbol", "", 0, 1, CompuScale.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCompuScale_Desc(), (EClassifier)theMultilanguagedataPackage.getMultiLanguageOverviewParagraph(), null, "desc", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCompuScale_Mask(), (EClassifier)thePrimitivetypesPackage.getPositiveInteger(), "mask", "0", 0, 1, CompuScale.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCompuScale_LowerLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "lowerLimit", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuScale_UpperLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "upperLimit", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuScale_CompuInverseValue(), (EClassifier)this.getCompuConst(), null, "compuInverseValue", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuScale_CompuScaleContents(), (EClassifier)this.getCompuScaleContents(), this.getCompuScaleContents_CompuScale(), "compuScaleContents", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuScale_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.addEOperation(this.compuScaleEClass, (EClassifier)thePrimitivetypesPackage.getPositiveIntegerDatatype(), "getMaskData", 0, 1, true, true);
        op = this.addEOperation(this.compuScaleEClass, null, "setMaskData", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)thePrimitivetypesPackage.getPositiveIntegerDatatype(), "newMask", 0, 1, true, true);
        this.initEClass(this.compuScaleContentsEClass, CompuScaleContents.class, "CompuScaleContents", true, false, true);
        this.initEReference(this.getCompuScaleContents_CompuScale(), (EClassifier)this.getCompuScale(), this.getCompuScale_CompuScaleContents(), "compuScale", null, 0, 1, CompuScaleContents.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.compuScaleConstantContentsEClass, CompuScaleConstantContents.class, "CompuScaleConstantContents", false, false, true);
        this.initEReference(this.getCompuScaleConstantContents_CompuConst(), (EClassifier)this.getCompuConst(), null, "compuConst", null, 0, 1, CompuScaleConstantContents.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuScaleRationalFormulaEClass, CompuScaleRationalFormula.class, "CompuScaleRationalFormula", false, false, true);
        this.initEReference(this.getCompuScaleRationalFormula_CompuRationalCoeffs(), (EClassifier)this.getCompuRationalCoeffs(), this.getCompuRationalCoeffs_CompuScaleRationalFormula(), "compuRationalCoeffs", null, 0, 1, CompuScaleRationalFormula.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuScalesEClass, CompuScales.class, "CompuScales", false, false, true);
        this.initEReference(this.getCompuScales_CompuScales(), (EClassifier)this.getCompuScale(), this.getCompuScale_CompuScales(), "compuScales", null, 0, -1, CompuScales.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuMethodEClass, CompuMethod.class, "CompuMethod", false, false, true);
        this.initEAttribute(this.getCompuMethod_DisplayFormat(), (EClassifier)thePrimitivetypesPackage.getDisplayFormatString(), "displayFormat", "", 0, 1, CompuMethod.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCompuMethod_Unit(), (EClassifier)theUnitsPackage.getUnit(), null, "unit", null, 0, 1, CompuMethod.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getCompuMethod_CompuInternalToPhys(), (EClassifier)this.getCompu(), null, "compuInternalToPhys", null, 0, 1, CompuMethod.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuMethod_CompuPhysToInternal(), (EClassifier)this.getCompu(), null, "compuPhysToInternal", null, 0, 1, CompuMethod.class, false, false, true, true, false, false, true, false, true);
        this.createResource("http://autosar.org/schema/r4.0/autosar40/swc/d/cm");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_CompuConstContentAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_FormulaExpressionAnnotations();
        this.createTaggedValuesOfGeneralization_CompuScaleContentsAnnotations();
        this.createTaggedValuesOfGeneralization_CompuContentAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createTaggedValuesOfGeneralization_AtpBlueprintAnnotations();
        this.createTaggedValuesOfGeneralization_AtpBlueprintableAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "ComputationMethod", "Modified", "Wed Mar 15 11:15:13 CET 2006", "Created", "Wed Mar 15 11:15:13 CET 2006", "GUID", "9178CA75-33C0-41d5-8201-C941C58C1121", "Id", "1530439991"});
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"Name", "Compu", "Modified", "Thu Sep 22 13:45:46 CEST 2011", "Created", "Fri Nov 25 19:53:28 CET 2005", "GUID", "BC8CB1BB-3377-40fc-8191-E3666FD19131", "Id", "-1346570927"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"Name", "CompuConst", "Modified", "Fri Jul 02 16:16:10 CEST 2010", "Created", "Fri Nov 25 19:53:28 CET 2005", "GUID", "391A1FD1-1EC8-4668-AB3C-BB805D74B938", "Id", "-410633509"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"Name", "CompuConstContent", "Modified", "Fri Jul 02 16:16:25 CEST 2010", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "4BD8D9D2-D06C-4e67-88AF-F102D4C638F9", "Id", "954973008"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"Name", "CompuContent", "Modified", "Thu Sep 22 13:45:46 CEST 2011", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "7D98FBEF-AA0F-4c67-A600-CFA86444B884", "Id", "-1111433203"});
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"Name", "CompuConstFormulaContent", "Modified", "Fri Jul 02 16:16:42 CEST 2010", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "9BBA7F16-7F84-46a4-AA34-F0FFF3652B63", "Id", "114411055"});
        this.addAnnotation((ENamedElement)this.getCompuConstFormulaContent_Vf(), source, new String[]{"Name", "vf", "GUID", "A7B83C70-387E-4f5f-871E-55F3B899CD32", "Id", "232126793"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"Name", "CompuConstNumericContent", "Modified", "Fri Jul 02 16:16:55 CEST 2010", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "7C1EAFD8-8E91-4b7f-A029-03830C3A01C4", "Id", "2012684235"});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"Name", "v", "GUID", "C94CE836-C033-4ea4-B05E-666AE76BC4C0", "Id", "1489041584"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"Name", "CompuConstTextContent", "Modified", "Fri Jul 02 16:17:31 CEST 2010", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "81055824-DEE2-47c2-9A93-5BD910F4CE4A", "Id", "-1145128538"});
        this.addAnnotation((ENamedElement)this.getCompuConstTextContent_Vt(), source, new String[]{"Name", "vt", "GUID", "EF3CC4C0-B417-4aa4-B8F2-8B85577C6D60", "Id", "1242409856"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"Name", "CompuGenericMath", "Modified", "Fri Jul 02 16:17:50 CEST 2010", "Created", "Mon Mar 20 20:15:50 CET 2006", "GUID", "9D69D804-0286-4dbb-A71F-6567FFC1F2BA", "Id", "645075018"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_Level(), source, new String[]{"Name", "level", "GUID", "1CCEDA31-230D-4c3c-8BD7-E841874D9CEE", "Id", "1130125571"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"Name", "CompuNominatorDenominator", "Modified", "Fri Jul 02 16:18:48 CEST 2010", "Created", "Fri Nov 25 19:53:28 CET 2005", "GUID", "7D7963D9-F358-409e-B707-378144C109A9", "Id", "-1927507012"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vs(), source, new String[]{"Name", "v", "GUID", "ECB9EBFD-C794-408a-8091-1CA51EBA7B98", "Id", "-204858755"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"Name", "CompuRationalCoeffs", "Modified", "Fri Jul 02 16:19:01 CEST 2010", "Created", "Fri Nov 25 19:52:51 CET 2005", "GUID", "30AF5895-83DA-4c90-AB3F-D8A7BBDACC5E", "Id", "-598743891"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"Name", "CompuScale", "Modified", "Thu Sep 22 13:45:46 CEST 2011", "Created", "Fri Nov 25 19:52:51 CET 2005", "GUID", "0A255A38-15AB-452a-9B17-55883DD70C04", "Id", "-1267547696"});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"Name", "shortLabel", "GUID", "4D6E0F54-55B1-4df1-A5E0-3C6622ABAA04", "Id", "1807558828"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Symbol(), source, new String[]{"Name", "symbol", "GUID", "E7907E41-333F-4b47-BE35-AC95BDA46141", "Id", "1298874095"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Mask(), source, new String[]{"Name", "mask", "GUID", "D3E5AB29-390B-4040-82A1-83408079CAA2", "Id", "1913331917"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"Name", "CompuScaleContents", "Modified", "Fri Jul 02 16:19:48 CEST 2010", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "D87177B7-35E4-47b6-AB9E-FA4F5C4B1ADE", "Id", "668853566"});
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"Name", "CompuScaleConstantContents", "Modified", "Fri Jul 02 16:19:42 CEST 2010", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "53919658-4DCF-47cc-84FB-EC3BF92B7859", "Id", "-1588549993"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"Name", "CompuScaleRationalFormula", "Modified", "Fri Jul 02 16:19:56 CEST 2010", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "768B65FA-855A-43ff-A26E-B02BFD34E3ED", "Id", "-1647437554"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"Name", "CompuScales", "Modified", "Thu Sep 22 13:45:46 CEST 2011", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "D8D3E313-B184-40b5-9BD7-D5979B4D0238", "Id", "-143196185"});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"Name", "CompuMethod", "Modified", "Thu Sep 22 13:45:46 CEST 2011", "Created", "Fri Nov 25 19:52:50 CET 2005", "GUID", "35B3FBBD-0E8D-4a3e-9FC6-820F43A6E26A", "Id", "197042282"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_DisplayFormat(), source, new String[]{"Name", "displayFormat", "GUID", "BF369C96-BFE4-420c-A2B4-54A6B462B4F9", "Id", "-438750460"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPUTATION-METHOD", "xml.namePlural", "COMPUTATION-METHODS"});
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"xml.tags", "msr.id=\"type__COMPU_TYPE\";mmt.qualifiedName=\"Compu\"", "mmt.qualifiedName", "Compu", "msr.id", "type__COMPU_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU", "xml.namePlural", "COMPUS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuContent(), source, new String[]{"xml.tags", "xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"20\";xml.typeElement=\"false\";xml.roleElement=\"false\";msr.id=\"COMPU_TYPE__COMPU_content_TYPE\";mmt.qualifiedName=\"Compu.compuContent\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "COMPU_TYPE__COMPU_content_TYPE", "mmt.qualifiedName", "Compu.compuContent", "xml.roleElement", "false", "xml.name", "COMPU-CONTENT", "xml.namePlural", "COMPU-CONTENTS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuDefaultValue(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"70\";msr.id=\"COMPU_TYPE__COMPU-DEFAULT-VALUE\";mmt.qualifiedName=\"Compu.compuDefaultValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "Compu.compuDefaultValue", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "COMPU_TYPE__COMPU-DEFAULT-VALUE", "xml.name", "COMPU-DEFAULT-VALUE", "xml.namePlural", "COMPU-DEFAULT-VALUES", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-CONST\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-CONST_TYPE\";mmt.qualifiedName=\"CompuConst\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-CONST", "mmt.qualifiedName", "CompuConst", "msr.id", "type__COMPU-CONST_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-CONST", "xml.namePlural", "COMPU-CONSTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConst_CompuConstContentType(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10\";xml.roleWrapperElement=\"false\";xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";xml.roleElement=\"false\";msr.id=\"COMPU-CONST_TYPE__COMPU-CONST_content_TYPE\";mmt.qualifiedName=\"CompuConst.compuConstContentType\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "COMPU-CONST_TYPE__COMPU-CONST_content_TYPE", "mmt.qualifiedName", "CompuConst.compuConstContentType", "xml.roleElement", "false", "xml.name", "COMPU-CONST-CONTENT-TYPE", "xml.namePlural", "COMPU-CONST-CONTENT-TYPES", "internal-xml-sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_content_TYPE\";msr.isOrgroup=\"true\";mmt.qualifiedName=\"CompuConstContent\"", "asam.useCase", "MDX", "mmt.qualifiedName", "CompuConstContent", "msr.isOrgroup", "true", "msr.id", "special__COMPU-CONST_content_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-CONST-CONTENT", "xml.namePlural", "COMPU-CONST-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"xml.tags", "msr.id=\"special__COMPU_content_TYPE\";msr.isOrgroup=\"true\";mmt.qualifiedName=\"CompuContent\"", "mmt.qualifiedName", "CompuContent", "msr.isOrgroup", "true", "msr.id", "special__COMPU_content_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-CONTENT", "xml.namePlural", "COMPU-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_formulaContent_TYPE\";mmt.qualifiedName=\"CompuConstFormulaContent\"", "asam.useCase", "MDX", "mmt.qualifiedName", "CompuConstFormulaContent", "msr.id", "special__COMPU-CONST_formulaContent_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-CONST-FORMULA-CONTENT", "xml.namePlural", "COMPU-CONST-FORMULA-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConstFormulaContent_Vf(), source, new String[]{"xml.tags", "msr.id=\"COMPU-CONST_formulaContent_TYPE__VF\";Vh.latestBindingTime=\"CodeGenerationTime\";xml.sequenceOffset=\"30\";mmt.qualifiedName=\"CompuConstFormulaContent.vf\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "mmt.qualifiedName", "CompuConstFormulaContent.vf", "msr.id", "COMPU-CONST_formulaContent_TYPE__VF", "Vh.latestBindingTime", "CodeGenerationTime", "xml.name", "VF", "xml.namePlural", "VFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_numericContent_TYPE\";mmt.qualifiedName=\"CompuConstNumericContent\"", "asam.useCase", "MDX", "mmt.qualifiedName", "CompuConstNumericContent", "msr.id", "special__COMPU-CONST_numericContent_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-CONST-NUMERIC-CONTENT", "xml.namePlural", "COMPU-CONST-NUMERIC-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"xml.tags", "msr.id=\"COMPU-CONST_numericContent_TYPE__V\";msr.tbdString=\"true\";xml.sequenceOffset=\"50\";mmt.qualifiedName=\"CompuConstNumericContent.v\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "msr.tbdString", "true", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "mmt.qualifiedName", "CompuConstNumericContent.v", "msr.id", "COMPU-CONST_numericContent_TYPE__V", "xml.name", "V", "xml.namePlural", "VS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_textContent_TYPE\";mmt.qualifiedName=\"CompuConstTextContent\"", "asam.useCase", "MDX", "mmt.qualifiedName", "CompuConstTextContent", "msr.id", "special__COMPU-CONST_textContent_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-CONST-TEXT-CONTENT", "xml.namePlural", "COMPU-CONST-TEXT-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConstTextContent_Vt(), source, new String[]{"xml.tags", "msr.id=\"COMPU-CONST_textContent_TYPE__VT\";mmt.qualifiedName=\"CompuConstTextContent.vt\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "CompuConstTextContent.vt", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "msr.id", "COMPU-CONST_textContent_TYPE__VT", "xml.name", "VT", "xml.namePlural", "VTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-GENERIC-MATH\";msr.id=\"type__COMPU-GENERIC-MATH_TYPE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"CompuGenericMath\"", "asam.harmonizedObject", "ASAM-COMPU-GENERIC-MATH", "msr.isGroupOnly", "true", "mmt.qualifiedName", "CompuGenericMath", "msr.id", "type__COMPU-GENERIC-MATH_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-GENERIC-MATH", "xml.namePlural", "COMPU-GENERIC-MATHS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_Level(), source, new String[]{"xml.tags", "msr.id=\"COMPU-GENERIC-MATH_TYPE__COMPU-GENERIC-MATH_TYPE__LEVEL\";xml.attribute=\"true\";mmt.qualifiedName=\"CompuGenericMath.level\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.attribute", "true", "mmt.qualifiedName", "CompuGenericMath.level", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "COMPU-GENERIC-MATH_TYPE__COMPU-GENERIC-MATH_TYPE__LEVEL", "xml.name", "LEVEL", "xml.namePlural", "LEVELS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"xml.tags", "msr.id=\"type__COMPU-NOMINATOR_DENOMINATOR_TYPE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"CompuNominatorDenominator\"", "msr.isGroupOnly", "true", "mmt.qualifiedName", "CompuNominatorDenominator", "msr.id", "type__COMPU-NOMINATOR_DENOMINATOR_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-NOMINATOR-DENOMINATOR", "xml.namePlural", "COMPU-NOMINATOR-DENOMINATORS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vs(), source, new String[]{"xml.tags", "msr.id=\"COMPU-NOMINATOR_DENOMINATOR_TYPE__VF\";Vh.latestBindingTime=\"PreCompileTime\";xml.roleElement=\"true\";xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"20\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";mmt.qualifiedName=\"CompuNominatorDenominator.v\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "COMPU-NOMINATOR_DENOMINATOR_TYPE__VF", "mmt.qualifiedName", "CompuNominatorDenominator.v", "xml.roleElement", "true", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "V", "xml.namePlural", "VS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-RATIONAL-COEFFS\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-RATIONAL-COEFFS_TYPE\";mmt.qualifiedName=\"CompuRationalCoeffs\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-RATIONAL-COEFFS", "mmt.qualifiedName", "CompuRationalCoeffs", "msr.id", "type__COMPU-RATIONAL-COEFFS_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-RATIONAL-COEFFS", "xml.namePlural", "COMPU-RATIONAL-COEFFSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuNumerator(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"COMPU-RATIONAL-COEFFS_TYPE__COMPU-NUMERATOR\";mmt.qualifiedName=\"CompuRationalCoeffs.compuNumerator\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "CompuRationalCoeffs.compuNumerator", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "msr.id", "COMPU-RATIONAL-COEFFS_TYPE__COMPU-NUMERATOR", "xml.name", "COMPU-NUMERATOR", "xml.namePlural", "COMPU-NUMERATORS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuDenominator(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-RATIONAL-COEFFS_TYPE__COMPU-DENOMINATOR\";mmt.qualifiedName=\"CompuRationalCoeffs.compuDenominator\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "CompuRationalCoeffs.compuDenominator", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "msr.id", "COMPU-RATIONAL-COEFFS_TYPE__COMPU-DENOMINATOR", "xml.name", "COMPU-DENOMINATOR", "xml.namePlural", "COMPU-DENOMINATORS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-SCALE\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-SCALE_TYPE\";mmt.qualifiedName=\"CompuScale\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-SCALE", "mmt.qualifiedName", "CompuScale", "msr.id", "type__COMPU-SCALE_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-SCALE", "xml.namePlural", "COMPU-SCALES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"xml.tags", "msr.id=\"COMPU-SCALE_TYPE__SHORT-LABEL\";msr.tbdString=\"true\";xml.sequenceOffset=\"20\";mmt.qualifiedName=\"CompuScale.shortLabel\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "msr.tbdString", "true", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "mmt.qualifiedName", "CompuScale.shortLabel", "msr.id", "COMPU-SCALE_TYPE__SHORT-LABEL", "xml.name", "SHORT-LABEL", "xml.namePlural", "SHORT-LABELS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Symbol(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"25\";mmt.qualifiedName=\"CompuScale.symbol\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "CompuScale.symbol", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "SYMBOL", "xml.namePlural", "SYMBOLS", "internal-xml-sequenceOffset", "25", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Desc(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-SCALE_TYPE__DESC\";mmt.qualifiedName=\"CompuScale.desc\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "2", "mmt.qualifiedName", "CompuScale.desc", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "COMPU-SCALE_TYPE__DESC", "xml.name", "DESC", "xml.namePlural", "DESCS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Mask(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"35\";mmt.qualifiedName=\"CompuScale.mask\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "3", "mmt.qualifiedName", "CompuScale.mask", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "MASK", "xml.namePlural", "MASKS", "internal-xml-sequenceOffset", "35", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "artop.numericalGetter", "getMaskData", "artop.numericalSetter", "setMaskData"});
        this.addAnnotation((ENamedElement)this.getCompuScale_LowerLimit(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"40\";msr.id=\"COMPU-SCALE_TYPE__LOWER-LIMIT\";mmt.qualifiedName=\"CompuScale.lowerLimit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "4", "mmt.qualifiedName", "CompuScale.lowerLimit", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "COMPU-SCALE_TYPE__LOWER-LIMIT", "xml.name", "LOWER-LIMIT", "xml.namePlural", "LOWER-LIMITS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_UpperLimit(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"50\";msr.id=\"COMPU-SCALE_TYPE__UPPER-LIMIT\";mmt.qualifiedName=\"CompuScale.upperLimit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "5", "mmt.qualifiedName", "CompuScale.upperLimit", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "COMPU-SCALE_TYPE__UPPER-LIMIT", "xml.name", "UPPER-LIMIT", "xml.namePlural", "UPPER-LIMITS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_CompuInverseValue(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"60\";msr.id=\"COMPU-SCALE_TYPE__COMPU-INVERSE-VALUE\";mmt.qualifiedName=\"CompuScale.compuInverseValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "6", "mmt.qualifiedName", "CompuScale.compuInverseValue", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "COMPU-SCALE_TYPE__COMPU-INVERSE-VALUE", "xml.name", "COMPU-INVERSE-VALUE", "xml.namePlural", "COMPU-INVERSE-VALUES", "internal-xml-sequenceOffset", "60", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_CompuScaleContents(), source, new String[]{"xml.tags", "xml.roleWrapperElement=\"false\";xml.roleElement=\"false\";xml.typeWrapperElement=\"false\";xml.sequenceOffset=\"70\";xml.typeElement=\"false\";msr.id=\"COMPU-SCALE_TYPE__COMPU-SCALE_contents_TYPE\";mmt.qualifiedName=\"CompuScale.compuScaleContents\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "7", "xml.typeElement", "false", "msr.id", "COMPU-SCALE_TYPE__COMPU-SCALE_contents_TYPE", "mmt.qualifiedName", "CompuScale.compuScaleContents", "xml.roleElement", "false", "xml.name", "COMPU-SCALE-CONTENTS", "xml.namePlural", "COMPU-SCALE-CONTENTSS", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "8", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-SCALE_contents_TYPE\";msr.isOrgroup=\"true\";mmt.qualifiedName=\"CompuScaleContents\"", "asam.useCase", "MDX", "mmt.qualifiedName", "CompuScaleContents", "msr.isOrgroup", "true", "msr.id", "special__COMPU-SCALE_contents_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-SCALE-CONTENTS", "xml.namePlural", "COMPU-SCALE-CONTENTSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-SCALE_constantContents_TYPE\";mmt.qualifiedName=\"CompuScaleConstantContents\"", "asam.useCase", "MDX", "mmt.qualifiedName", "CompuScaleConstantContents", "msr.id", "special__COMPU-SCALE_constantContents_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-SCALE-CONSTANT-CONTENTS", "xml.namePlural", "COMPU-SCALE-CONSTANT-CONTENTSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScaleConstantContents_CompuConst(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"COMPU-SCALE_constantContents_TYPE__COMPU-CONST\";mmt.qualifiedName=\"CompuScaleConstantContents.compuConst\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "CompuScaleConstantContents.compuConst", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "msr.id", "COMPU-SCALE_constantContents_TYPE__COMPU-CONST", "xml.name", "COMPU-CONST", "xml.namePlural", "COMPU-CONSTS", "internal-xml-sequenceOffset", "90", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-SCALE_rationalFormula_TYPE\";mmt.qualifiedName=\"CompuScaleRationalFormula\"", "asam.useCase", "MDX", "mmt.qualifiedName", "CompuScaleRationalFormula", "msr.id", "special__COMPU-SCALE_rationalFormula_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-SCALE-RATIONAL-FORMULA", "xml.namePlural", "COMPU-SCALE-RATIONAL-FORMULAS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScaleRationalFormula_CompuRationalCoeffs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"110\";msr.id=\"COMPU-SCALE_rationalFormula_TYPE__COMPU-RATIONAL-COEFFS\";mmt.qualifiedName=\"CompuScaleRationalFormula.compuRationalCoeffs\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "CompuScaleRationalFormula.compuRationalCoeffs", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "msr.id", "COMPU-SCALE_rationalFormula_TYPE__COMPU-RATIONAL-COEFFS", "xml.name", "COMPU-RATIONAL-COEFFS", "xml.namePlural", "COMPU-RATIONAL-COEFFSS", "internal-xml-sequenceOffset", "110", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"xml.tags", "msr.id=\"special__COMPU_scales_TYPE\";mmt.qualifiedName=\"CompuScales\"", "mmt.qualifiedName", "CompuScales", "msr.id", "special__COMPU_scales_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-SCALES", "xml.namePlural", "COMPU-SCALESS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScales_CompuScales(), source, new String[]{"xml.tags", "xml.roleWrapperElement=\"true\";xml.sequenceOffset=\"40\";xml.roleElement=\"true\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";msr.id=\"COMPU_scales_TYPE__COMPU-SCALES\";Vh.latestBindingTime=\"BlueprintDerivationTime\";mmt.qualifiedName=\"CompuScales.compuScale\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.roleWrapperElement", "true", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "COMPU_scales_TYPE__COMPU-SCALES", "mmt.qualifiedName", "CompuScales.compuScale", "xml.roleElement", "true", "Vh.latestBindingTime", "BlueprintDerivationTime", "xml.name", "COMPU-SCALE", "xml.namePlural", "COMPU-SCALES", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"atp.recommendedPackage", "CompuMethods", "xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-METHOD\";asam.useCase=\"MDX\";atp.recommendedPackage=\"CompuMethods\";msr.id=\"type__COMPU-METHOD_TYPE\";mmt.qualifiedName=\"CompuMethod\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-METHOD", "mmt.qualifiedName", "CompuMethod", "msr.id", "type__COMPU-METHOD_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "COMPU-METHOD", "xml.namePlural", "COMPU-METHODS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_DisplayFormat(), source, new String[]{"xml.tags", "msr.id=\"COMPU-METHOD_TYPE__DISPLAY-FORMAT\";msr.tbdString=\"true\";xml.sequenceOffset=\"20\";mmt.qualifiedName=\"CompuMethod.displayFormat\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "msr.tbdString", "true", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "mmt.qualifiedName", "CompuMethod.displayFormat", "msr.id", "COMPU-METHOD_TYPE__DISPLAY-FORMAT", "xml.name", "DISPLAY-FORMAT", "xml.namePlural", "DISPLAY-FORMATS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_Unit(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-METHOD_TYPE__UNIT-REF\";mmt.qualifiedName=\"CompuMethod.unit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "CompuMethod.unit", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "COMPU-METHOD_TYPE__UNIT-REF", "xml.name", "UNIT-REF", "xml.namePlural", "UNIT-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuInternalToPhys(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"80\";msr.id=\"COMPU-METHOD_TYPE__COMPU-INTERNAL-TO-PHYS\";mmt.qualifiedName=\"CompuMethod.compuInternalToPhys\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "2", "mmt.qualifiedName", "CompuMethod.compuInternalToPhys", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "COMPU-METHOD_TYPE__COMPU-INTERNAL-TO-PHYS", "xml.name", "COMPU-INTERNAL-TO-PHYS", "xml.namePlural", "COMPU-INTERNAL-TO-PHYSS", "internal-xml-sequenceOffset", "80", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuPhysToInternal(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"COMPU-METHOD_TYPE__COMPU-PHYS-TO-INTERNAL\";mmt.qualifiedName=\"CompuMethod.compuPhysToInternal\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "3", "mmt.qualifiedName", "CompuMethod.compuPhysToInternal", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "COMPU-METHOD_TYPE__COMPU-PHYS-TO-INTERNAL", "xml.name", "COMPU-PHYS-TO-INTERNAL", "xml.namePlural", "COMPU-PHYS-TO-INTERNALS", "internal-xml-sequenceOffset", "90", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"name", "COMPU", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuContent(), source, new String[]{"name", "COMPU-CONTENT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuDefaultValue(), source, new String[]{"name", "COMPU-DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"name", "COMPU-CONST", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuConst_CompuConstContentType(), source, new String[]{"name", "COMPU-CONST-CONTENT-TYPE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"name", "COMPU-CONST-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"name", "COMPU-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"name", "COMPU-CONST-FORMULA-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuConstFormulaContent_Vf(), source, new String[]{"name", "VF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"name", "COMPU-CONST-NUMERIC-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"name", "V", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"name", "COMPU-CONST-TEXT-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuConstTextContent_Vt(), source, new String[]{"name", "VT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"name", "COMPU-GENERIC-MATH", "kind", "mixed", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_SwDataDependency(), source, new String[]{"group", "#:mixed"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_Level(), source, new String[]{"name", "LEVEL", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"name", "COMPU-NOMINATOR-DENOMINATOR", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vs(), source, new String[]{"name", "V", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"name", "COMPU-RATIONAL-COEFFS", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuNumerator(), source, new String[]{"name", "COMPU-NUMERATOR", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuDenominator(), source, new String[]{"name", "COMPU-DENOMINATOR", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"name", "COMPU-SCALE", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"name", "SHORT-LABEL", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Symbol(), source, new String[]{"name", "SYMBOL", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Desc(), source, new String[]{"name", "DESC", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Mask(), source, new String[]{"name", "MASK", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScale_LowerLimit(), source, new String[]{"name", "LOWER-LIMIT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScale_UpperLimit(), source, new String[]{"name", "UPPER-LIMIT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScale_CompuInverseValue(), source, new String[]{"name", "COMPU-INVERSE-VALUE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScale_CompuScaleContents(), source, new String[]{"name", "COMPU-SCALE-CONTENTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScale_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"name", "COMPU-SCALE-CONTENTS", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"name", "COMPU-SCALE-CONSTANT-CONTENTS", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScaleConstantContents_CompuConst(), source, new String[]{"name", "COMPU-CONST", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"name", "COMPU-SCALE-RATIONAL-FORMULA", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScaleRationalFormula_CompuRationalCoeffs(), source, new String[]{"name", "COMPU-RATIONAL-COEFFS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"name", "COMPU-SCALES", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuScales_CompuScales(), source, new String[]{"name", "COMPU-SCALES", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"name", "COMPU-METHOD", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_DisplayFormat(), source, new String[]{"name", "DISPLAY-FORMAT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_Unit(), source, new String[]{"name", "UNIT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuInternalToPhys(), source, new String[]{"name", "COMPU-INTERNAL-TO-PHYS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuPhysToInternal(), source, new String[]{"name", "COMPU-PHYS-TO-INTERNAL", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"documentation", "This meta-class represents the ability to express one particular computation. "});
        this.addAnnotation((ENamedElement)this.getCompu_CompuContent(), source, new String[]{"documentation", "This specifies the details of the computation."});
        this.addAnnotation((ENamedElement)this.getCompu_CompuDefaultValue(), source, new String[]{"documentation", "This property can be used to specify an output value for a conversion formula, if the value to be converted lies outside the plausibility limit. Although this is possible for all conversion formulae, it is especially valid for variables with tabular conversion formulae."});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"documentation", "This meta-class represents the fact that the value of a computation method scale is constant."});
        this.addAnnotation((ENamedElement)this.getCompuConst_CompuConstContentType(), source, new String[]{"documentation", "This is the actual content of the constant compu method scale."});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"documentation", "This meta-class represents the fact that the constant value of the computation method can be numerical or textual."});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"documentation", "This abstract meta-class represents the various definition means of a computation method."});
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"documentation", "This meta-class represents the fact that the constant value of the computation method is represented by a variation point. This difference is due to compatibility with ASAM HDO."});
        this.addAnnotation((ENamedElement)this.getCompuConstFormulaContent_Vf(), source, new String[]{"documentation", "Value calculated via a system constant. This element is included in every case where parameters should be generated from numerical values during compile time (not runtime!). \r\n\r\nThus for example, the influence of the cylinder number on conversion formulae can be introduced in a repeatable manner."});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"documentation", "This meta-class represents the fact that the constant value of the computation method is a numerical value. It is separated from CompuConstFormulaContent to support compatibility with ASAM HDO."});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass.getEOperations().get(0), source, new String[]{"body", "return org.eclipse.sphinx.platform.util.RadixConverter.parseFloat(getV());"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass.getEOperations().get(1), source, new String[]{"body", "return org.eclipse.sphinx.platform.util.RadixConverter.parseInt(getV());"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass.getEOperations().get(2), source, new String[]{"body", "return org.eclipse.sphinx.platform.util.RadixConverter.getRadix(getV());"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass.getEOperations().get(3), source, new String[]{"body", "String convertedValue =  org.eclipse.sphinx.platform.util.RadixConverter.convert(value, radix);\nsetV(convertedValue);"});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"documentation", "This represents the numerical value.\r\n"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"documentation", "This meta-class represents the textual content of a scale."});
        this.addAnnotation((ENamedElement)this.getCompuConstTextContent_Vt(), source, new String[]{"documentation", "This represents a textual constant in the computation method.\r\n"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"documentation", "This meta-class represents the ability to specify a generic formula expression. "});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_Level(), source, new String[]{"documentation", "Placeholder to describe an indicator of a language level for the mathematics e.g. INFORMAL, ASAMHDO.\r\nMay be refined by particular use-cases."});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"documentation", "This class represents the ability to express a polynomial either as Nominator or as Denominator."});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vs(), source, new String[]{"documentation", "this is the list of polynomial factors. Note that the first vf represents the power=0.  The polynomial is v[0] * x^0 + v[1] * x^1 ..."});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"documentation", "This meta-class represents the ability to express a rational function by specifying the coefficients of nominator and denominator."});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuNumerator(), source, new String[]{"documentation", "This is the numerator of the rational expression."});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuDenominator(), source, new String[]{"documentation", "This is the denominator of the expression."});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"documentation", "This meta-class represents the ability to specify one segment of a segmented computation method."});
        this.addAnnotation((ENamedElement)this.compuScaleEClass.getEOperations().get(0), source, new String[]{"body", "return (<%org.artop.aal.common.datatypes.PositiveIntegerDatatype%>)mask.clone();"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass.getEOperations().get(1), source, new String[]{"body", "mask.setRadix(newMask.getRadix());\nmask.setNoOfDigits(newMask.getNoOfDigits());\nsetMask(newMask.getValue());\n"});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"documentation", "This element specifies a short name for the particular scale. The name can for example be used to derive a programming language identifier."});
        this.addAnnotation((ENamedElement)this.getCompuScale_Symbol(), source, new String[]{"documentation", "The symbol, if provided, is used by code generators to get a C identifier for the CompuScale. The name will be used as is for the code generation, therefore it needs to be unique within the generation context."});
        this.addAnnotation((ENamedElement)this.getCompuScale_Desc(), source, new String[]{"documentation", "<desc> represents a general but brief description of the object in question."});
        this.addAnnotation((ENamedElement)this.getCompuScale_Mask(), source, new String[]{"documentation", "In difference to all the other computational methods every COMPU-SCALE will be applied including the bit MASK. Therefore it is allowed for this type of COMPU-METHOD, that COMPU-SCALES overlap. \r\n\r\nTo calculate the string reverse to a value, the string has to be split and the according value for each substring has to be summed up. The sum is finally transmitted.\r\n\r\nThe processing has to be done in order of the COMPU-SCALE elements.\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.getCompuScale_LowerLimit(), source, new String[]{"documentation", "This element specifies the lower limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getCompuScale_UpperLimit(), source, new String[]{"documentation", "This element specifies the upper limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getCompuScale_CompuInverseValue(), source, new String[]{"documentation", "This is the inverse value of the constraint. This supports the case that the scale is not reversible per se."});
        this.addAnnotation((ENamedElement)this.getCompuScale_CompuScaleContents(), source, new String[]{"documentation", "This represents the computation details of the scale."});
        this.addAnnotation((ENamedElement)this.getCompuScale_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"documentation", "This abstract meta-class represents the content of one particular scale."});
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"documentation", "This meta-class represents the fact that a particular scale of the computation method is constant."});
        this.addAnnotation((ENamedElement)this.getCompuScaleConstantContents_CompuConst(), source, new String[]{"documentation", "This represents the fact that the scale is a constant. The use case is mainly a non interplolated scale. It is a simplification of the fact that a constant scale can also be expressed as Rational Function of oder 0."});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"documentation", "This meta-class represents the fact that the computation in this scale is represented as rational term."});
        this.addAnnotation((ENamedElement)this.getCompuScaleRationalFormula_CompuRationalCoeffs(), source, new String[]{"documentation", "This specifies the coefficients of the rational fomula."});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"documentation", "This meta-class represents the ability to stepwise express a computation method."});
        this.addAnnotation((ENamedElement)this.getCompuScales_CompuScales(), source, new String[]{"documentation", "This represents one scale within the compu method. Note it is variation in oder to support bluprints of enumerations.\r\nThe upper multiplicity of this role has been increased to * due to resolving an atpVariation stereotype. The previous value was -1."});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"documentation", "This meta-class represents the ability to express the relationship between a physical value and the mathematical representation. \r\n\r\nNote that this is still independent of the technical implementation in data types. It only specifies the formula how the internal value corresponds to its physical pendant."});
        this.addAnnotation((ENamedElement)this.getCompuMethod_DisplayFormat(), source, new String[]{"documentation", "This property specifies, how the physical value shall be displayed e.g. in documents or measurement and calibration tools."});
        this.addAnnotation((ENamedElement)this.getCompuMethod_Unit(), source, new String[]{"documentation", "This is the physical unit of the Physical values for which the CompuMethod applies."});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuInternalToPhys(), source, new String[]{"documentation", "This specifies the computation from internal values to physical values."});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuPhysToInternal(), source, new String[]{"documentation", "This represents the computation from physical values to the internal values."});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_CompuConstContentAnnotations() {
        String source = "TaggedValuesOfGeneralization_CompuConstContent";
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuConstFormulaContent->compuConstContentType", "GUID", "30897B5B-87AD-40e5-85C7-6866ED496247", "msr.id", "COMPU-CONST_content_TYPE__COMPU-CONST_formulaContent_TYPE", "Id", "877179162", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuConstNumericContent->compuConstContentType", "GUID", "C8242A13-E380-43fd-9299-30F4AE1949D9", "msr.id", "COMPU-CONST_content_TYPE__COMPU-CONST_numericContent_TYPE", "Id", "-831352274", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuConstTextContent->compuConstContentType", "GUID", "731D0F8E-C55A-4485-8686-C1A226FEFBB8", "msr.id", "COMPU-CONST_content_TYPE__COMPU-CONST_textContent_TYPE", "Id", "-1073824756", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.getCompuConstFormulaContent_Vf(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"Stereotype", "atpMixedString"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vs(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getCompuScales_CompuScales(), source, new String[]{"Stereotype", ""});
    }

    protected void createTaggedValuesOfGeneralization_FormulaExpressionAnnotations() {
        String source = "TaggedValuesOfGeneralization_FormulaExpression";
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuGenericMath->valueByFormulaType", "GUID", "85BE9194-CDA2-4f0b-AB3F-FC0749B9C16A", "msr.id", "COMPU-GENERIC-MATH_TYPE__VALUE-BY-FORMULA_TYPE", "Id", "-1574490400", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_CompuScaleContentsAnnotations() {
        String source = "TaggedValuesOfGeneralization_CompuScaleContents";
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuScaleConstantContents->compuScaleContentsType", "GUID", "5EFEC25D-9062-49d3-9891-2D5849C7F2F2", "msr.id", "COMPU-SCALE_contents_TYPE__COMPU-SCALE_constantContents_TYPE", "Id", "680265908", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuScaleRationalFormula->compuScaleContentsType", "GUID", "049E2516-DFC5-4845-AED9-DE4A20290DDF", "msr.id", "COMPU-SCALE_contents_TYPE__COMPU-SCALE_rationalFormula_TYPE", "Id", "1992484392", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_CompuContentAnnotations() {
        String source = "TaggedValuesOfGeneralization_CompuContent";
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuScales->compuContentType", "GUID", "0427C8F8-F43C-44e3-A27C-9332113907AD", "msr.id", "COMPU_content_TYPE__COMPU_scales_TYPE", "Id", "-1185114020", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuMethod->arelement", "GUID", "6F553836-C4A6-4f4b-8622-ABB4BAC20008", "msr.id", "COMPU-METHOD_TYPE_ARElement", "Id", "-722054992", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_AtpBlueprintAnnotations() {
        String source = "TaggedValuesOfGeneralization_AtpBlueprint";
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuMethod->AtpBlueprint", "GUID", "4990FFCD-45BB-453e-B72C-2F6B827E5660", "Id", "-272833821", "xml.sequenceOffset", "1"});
    }

    protected void createTaggedValuesOfGeneralization_AtpBlueprintableAnnotations() {
        String source = "TaggedValuesOfGeneralization_AtpBlueprintable";
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuMethod->AtpBlueprintable", "GUID", "8CF7EC7F-0019-4261-B756-E733780798B1", "Id", "1640748008", "xml.sequenceOffset", "2"});
    }
}

