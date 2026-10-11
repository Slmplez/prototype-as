/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.impl.RequirementstracingPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface RequirementstracingPackage
extends EPackage {
    public static final String eNAME = "requirementstracing";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/rt";
    public static final String eNS_PREFIX = "";
    public static final RequirementstracingPackage eINSTANCE = RequirementstracingPackageImpl.init();
    public static final int STRUCTURED_REQ = 0;
    public static final int STRUCTURED_REQ__GCHECKSUM = 0;
    public static final int STRUCTURED_REQ__GTIMESTAMP = 1;
    public static final int STRUCTURED_REQ__CHECKSUM = 2;
    public static final int STRUCTURED_REQ__TIMESTAMP = 3;
    public static final int STRUCTURED_REQ__SI = 4;
    public static final int STRUCTURED_REQ__VIEW = 5;
    public static final int STRUCTURED_REQ__BREAK = 6;
    public static final int STRUCTURED_REQ__KEEP_WITH_PREVIOUS = 7;
    public static final int STRUCTURED_REQ__GSHORT_NAME = 8;
    public static final int STRUCTURED_REQ__SHORT_NAME = 9;
    public static final int STRUCTURED_REQ__LONG_NAME = 10;
    public static final int STRUCTURED_REQ__CATEGORY = 11;
    public static final int STRUCTURED_REQ__TRACES = 12;
    public static final int STRUCTURED_REQ__DOCUMENTATION_BLOCK = 13;
    public static final int STRUCTURED_REQ__DATE = 14;
    public static final int STRUCTURED_REQ__ISSUED_BY = 15;
    public static final int STRUCTURED_REQ__TYPE = 16;
    public static final int STRUCTURED_REQ__IMPORTANCE = 17;
    public static final int STRUCTURED_REQ__DESCRIPTION = 18;
    public static final int STRUCTURED_REQ__RATIONALE = 19;
    public static final int STRUCTURED_REQ__DEPENDENCIES = 20;
    public static final int STRUCTURED_REQ__USE_CASE = 21;
    public static final int STRUCTURED_REQ__CONFLICTS = 22;
    public static final int STRUCTURED_REQ__SUPPORTING_MATERIAL = 23;
    public static final int STRUCTURED_REQ__REMARK = 24;
    public static final int STRUCTURED_REQ__VARIATION_POINT = 25;
    public static final int STRUCTURED_REQ_FEATURE_COUNT = 26;
    public static final int TRACE_REFERRABLE = 1;
    public static final int TRACE_REFERRABLE__GCHECKSUM = 0;
    public static final int TRACE_REFERRABLE__GTIMESTAMP = 1;
    public static final int TRACE_REFERRABLE__CHECKSUM = 2;
    public static final int TRACE_REFERRABLE__TIMESTAMP = 3;
    public static final int TRACE_REFERRABLE__GSHORT_NAME = 4;
    public static final int TRACE_REFERRABLE__SHORT_NAME = 5;
    public static final int TRACE_REFERRABLE__LONG_NAME = 6;
    public static final int TRACE_REFERRABLE__CATEGORY = 7;
    public static final int TRACE_REFERRABLE_FEATURE_COUNT = 8;
    public static final int TRACEABLE_TEXT = 2;
    public static final int TRACEABLE_TEXT__GCHECKSUM = 0;
    public static final int TRACEABLE_TEXT__GTIMESTAMP = 1;
    public static final int TRACEABLE_TEXT__CHECKSUM = 2;
    public static final int TRACEABLE_TEXT__TIMESTAMP = 3;
    public static final int TRACEABLE_TEXT__SI = 4;
    public static final int TRACEABLE_TEXT__VIEW = 5;
    public static final int TRACEABLE_TEXT__BREAK = 6;
    public static final int TRACEABLE_TEXT__KEEP_WITH_PREVIOUS = 7;
    public static final int TRACEABLE_TEXT__GSHORT_NAME = 8;
    public static final int TRACEABLE_TEXT__SHORT_NAME = 9;
    public static final int TRACEABLE_TEXT__LONG_NAME = 10;
    public static final int TRACEABLE_TEXT__CATEGORY = 11;
    public static final int TRACEABLE_TEXT__TRACES = 12;
    public static final int TRACEABLE_TEXT__DOCUMENTATION_BLOCK = 13;
    public static final int TRACEABLE_TEXT__TEXT = 14;
    public static final int TRACEABLE_TEXT__VARIATION_POINT = 15;
    public static final int TRACEABLE_TEXT_FEATURE_COUNT = 16;
    public static final int TRACEABLE = 3;
    public static final int TRACEABLE__GCHECKSUM = 0;
    public static final int TRACEABLE__GTIMESTAMP = 1;
    public static final int TRACEABLE__CHECKSUM = 2;
    public static final int TRACEABLE__TIMESTAMP = 3;
    public static final int TRACEABLE__GSHORT_NAME = 4;
    public static final int TRACEABLE__SHORT_NAME = 5;
    public static final int TRACEABLE__LONG_NAME = 6;
    public static final int TRACEABLE__TRACES = 7;
    public static final int TRACEABLE_FEATURE_COUNT = 8;

    public EClass getStructuredReq();

    public EReference getStructuredReq_DocumentationBlock();

    public EAttribute getStructuredReq_Date();

    public EAttribute getStructuredReq_IssuedBy();

    public EAttribute getStructuredReq_Type();

    public EAttribute getStructuredReq_Importance();

    public EReference getStructuredReq_Description();

    public EReference getStructuredReq_Rationale();

    public EReference getStructuredReq_Dependencies();

    public EReference getStructuredReq_UseCase();

    public EReference getStructuredReq_Conflicts();

    public EReference getStructuredReq_SupportingMaterial();

    public EReference getStructuredReq_Remark();

    public EReference getStructuredReq_VariationPoint();

    public EClass getTraceReferrable();

    public EAttribute getTraceReferrable_Category();

    public EClass getTraceableText();

    public EReference getTraceableText_DocumentationBlock();

    public EReference getTraceableText_Text();

    public EReference getTraceableText_VariationPoint();

    public EClass getTraceable();

    public EReference getTraceable_Traces();

    public RequirementstracingFactory getRequirementstracingFactory();

    public static interface Literals {
        public static final EClass STRUCTURED_REQ = eINSTANCE.getStructuredReq();
        public static final EReference STRUCTURED_REQ__DOCUMENTATION_BLOCK = eINSTANCE.getStructuredReq_DocumentationBlock();
        public static final EAttribute STRUCTURED_REQ__DATE = eINSTANCE.getStructuredReq_Date();
        public static final EAttribute STRUCTURED_REQ__ISSUED_BY = eINSTANCE.getStructuredReq_IssuedBy();
        public static final EAttribute STRUCTURED_REQ__TYPE = eINSTANCE.getStructuredReq_Type();
        public static final EAttribute STRUCTURED_REQ__IMPORTANCE = eINSTANCE.getStructuredReq_Importance();
        public static final EReference STRUCTURED_REQ__DESCRIPTION = eINSTANCE.getStructuredReq_Description();
        public static final EReference STRUCTURED_REQ__RATIONALE = eINSTANCE.getStructuredReq_Rationale();
        public static final EReference STRUCTURED_REQ__DEPENDENCIES = eINSTANCE.getStructuredReq_Dependencies();
        public static final EReference STRUCTURED_REQ__USE_CASE = eINSTANCE.getStructuredReq_UseCase();
        public static final EReference STRUCTURED_REQ__CONFLICTS = eINSTANCE.getStructuredReq_Conflicts();
        public static final EReference STRUCTURED_REQ__SUPPORTING_MATERIAL = eINSTANCE.getStructuredReq_SupportingMaterial();
        public static final EReference STRUCTURED_REQ__REMARK = eINSTANCE.getStructuredReq_Remark();
        public static final EReference STRUCTURED_REQ__VARIATION_POINT = eINSTANCE.getStructuredReq_VariationPoint();
        public static final EClass TRACE_REFERRABLE = eINSTANCE.getTraceReferrable();
        public static final EAttribute TRACE_REFERRABLE__CATEGORY = eINSTANCE.getTraceReferrable_Category();
        public static final EClass TRACEABLE_TEXT = eINSTANCE.getTraceableText();
        public static final EReference TRACEABLE_TEXT__DOCUMENTATION_BLOCK = eINSTANCE.getTraceableText_DocumentationBlock();
        public static final EReference TRACEABLE_TEXT__TEXT = eINSTANCE.getTraceableText_Text();
        public static final EReference TRACEABLE_TEXT__VARIATION_POINT = eINSTANCE.getTraceableText_VariationPoint();
        public static final EClass TRACEABLE = eINSTANCE.getTraceable();
        public static final EReference TRACEABLE__TRACES = eINSTANCE.getTraceable_Traces();
    }
}

