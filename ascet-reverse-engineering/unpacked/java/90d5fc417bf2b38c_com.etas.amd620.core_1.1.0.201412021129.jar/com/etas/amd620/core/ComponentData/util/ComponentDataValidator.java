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
package com.etas.amd620.core.ComponentData.util;

import com.etas.amd620.core.ComponentData.ArrayT;
import com.etas.amd620.core.ComponentData.ColorT;
import com.etas.amd620.core.ComponentData.ComplexDataT;
import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.ComponentDataType;
import com.etas.amd620.core.ComponentData.CurveKindT;
import com.etas.amd620.core.ComponentData.DataEntryT;
import com.etas.amd620.core.ComponentData.DataSetT;
import com.etas.amd620.core.ComponentData.DataVariantT;
import com.etas.amd620.core.ComponentData.DependencyT;
import com.etas.amd620.core.ComponentData.DimensionalDataT;
import com.etas.amd620.core.ComponentData.DimensionalTypeT;
import com.etas.amd620.core.ComponentData.DistributionInfoT;
import com.etas.amd620.core.ComponentData.DocumentRoot;
import com.etas.amd620.core.ComponentData.EnumerationDataT;
import com.etas.amd620.core.ComponentData.ExtrapolationType;
import com.etas.amd620.core.ComponentData.FileReferenceT;
import com.etas.amd620.core.ComponentData.FormattedTextT;
import com.etas.amd620.core.ComponentData.GenericDataT;
import com.etas.amd620.core.ComponentData.IconT;
import com.etas.amd620.core.ComponentData.IntervalT;
import com.etas.amd620.core.ComponentData.ItemRefT;
import com.etas.amd620.core.ComponentData.LocalType;
import com.etas.amd620.core.ComponentData.LogicDataT;
import com.etas.amd620.core.ComponentData.MatrixT;
import com.etas.amd620.core.ComponentData.NoteType;
import com.etas.amd620.core.ComponentData.NotesT;
import com.etas.amd620.core.ComponentData.NumericDataT;
import com.etas.amd620.core.ComponentData.OneDType;
import com.etas.amd620.core.ComponentData.OptionT;
import com.etas.amd620.core.ComponentData.ParameterType;
import com.etas.amd620.core.ComponentData.PointT;
import com.etas.amd620.core.ComponentData.ReferenceDataT;
import com.etas.amd620.core.ComponentData.ScalarTypeT;
import com.etas.amd620.core.ComponentData.SizeT;
import com.etas.amd620.core.ComponentData.TimeStampT;
import com.etas.amd620.core.ComponentData.TwoDType;
import com.etas.amd620.core.ComponentData.TypeType;
import com.etas.amd620.core.ComponentData.ViewType;
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

public class ComponentDataValidator
extends EObjectValidator {
    public static final ComponentDataValidator INSTANCE = new ComponentDataValidator();
    public static final String DIAGNOSTIC_SOURCE = "com.etas.amd620.core.ComponentData";
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 0;
    protected static final int DIAGNOSTIC_CODE_COUNT = 0;
    protected XMLTypeValidator xmlTypeValidator = XMLTypeValidator.INSTANCE;
    public static final EValidator.PatternMatcher[][] NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*.?\\d*/\\d*\\.?\\d*")}};
    public static final EValidator.PatternMatcher[][] NZQR_MEMBER2__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*/\\d*")}};
    public static final EValidator.PatternMatcher[][] OID__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"(_040|_07v)\\w{26}|_sm")}};

    protected EPackage getEPackage() {
        return ComponentDataPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateArrayT((ArrayT)value, diagnostics, context);
            }
            case 1: {
                return this.validateColorT((ColorT)value, diagnostics, context);
            }
            case 2: {
                return this.validateComplexDataT((ComplexDataT)value, diagnostics, context);
            }
            case 3: {
                return this.validateComponentDataType((ComponentDataType)value, diagnostics, context);
            }
            case 4: {
                return this.validateDataEntryT((DataEntryT)value, diagnostics, context);
            }
            case 5: {
                return this.validateDataSetT((DataSetT)value, diagnostics, context);
            }
            case 6: {
                return this.validateDataVariantT((DataVariantT)value, diagnostics, context);
            }
            case 7: {
                return this.validateDependencyT((DependencyT)value, diagnostics, context);
            }
            case 8: {
                return this.validateDimensionalDataT((DimensionalDataT)value, diagnostics, context);
            }
            case 9: {
                return this.validateDimensionalTypeT((DimensionalTypeT)value, diagnostics, context);
            }
            case 10: {
                return this.validateDistributionInfoT((DistributionInfoT)value, diagnostics, context);
            }
            case 11: {
                return this.validateDocumentRoot((DocumentRoot)value, diagnostics, context);
            }
            case 12: {
                return this.validateEnumerationDataT((EnumerationDataT)value, diagnostics, context);
            }
            case 13: {
                return this.validateFileReferenceT((FileReferenceT)value, diagnostics, context);
            }
            case 14: {
                return this.validateFormattedTextT((FormattedTextT)value, diagnostics, context);
            }
            case 15: {
                return this.validateGenericDataT((GenericDataT)value, diagnostics, context);
            }
            case 16: {
                return this.validateIconT((IconT)value, diagnostics, context);
            }
            case 17: {
                return this.validateIntervalT((IntervalT)value, diagnostics, context);
            }
            case 18: {
                return this.validateItemRefT((ItemRefT)value, diagnostics, context);
            }
            case 19: {
                return this.validateLocalType((LocalType)value, diagnostics, context);
            }
            case 20: {
                return this.validateLogicDataT((LogicDataT)value, diagnostics, context);
            }
            case 21: {
                return this.validateMatrixT((MatrixT)value, diagnostics, context);
            }
            case 22: {
                return this.validateNotesT((NotesT)value, diagnostics, context);
            }
            case 23: {
                return this.validateNoteType((NoteType)value, diagnostics, context);
            }
            case 24: {
                return this.validateNumericDataT((NumericDataT)value, diagnostics, context);
            }
            case 25: {
                return this.validateOneDType((OneDType)value, diagnostics, context);
            }
            case 26: {
                return this.validateOptionT((OptionT)value, diagnostics, context);
            }
            case 27: {
                return this.validateParameterType((ParameterType)value, diagnostics, context);
            }
            case 28: {
                return this.validatePointT((PointT)value, diagnostics, context);
            }
            case 29: {
                return this.validateReferenceDataT((ReferenceDataT)value, diagnostics, context);
            }
            case 30: {
                return this.validateScalarTypeT((ScalarTypeT)value, diagnostics, context);
            }
            case 31: {
                return this.validateSizeT((SizeT)value, diagnostics, context);
            }
            case 32: {
                return this.validateTimeStampT((TimeStampT)value, diagnostics, context);
            }
            case 33: {
                return this.validateTwoDType((TwoDType)value, diagnostics, context);
            }
            case 34: {
                return this.validateViewType((ViewType)value, diagnostics, context);
            }
            case 35: {
                return this.validateCurveKindT((CurveKindT)((Object)value), diagnostics, context);
            }
            case 36: {
                return this.validateExtrapolationType((ExtrapolationType)((Object)value), diagnostics, context);
            }
            case 37: {
                return this.validateTypeType((TypeType)((Object)value), diagnostics, context);
            }
            case 38: {
                return this.validateCurveKindTObject((CurveKindT)((Object)value), diagnostics, context);
            }
            case 39: {
                return this.validateExtrapolationTypeObject((ExtrapolationType)((Object)value), diagnostics, context);
            }
            case 40: {
                return this.validateNumberOrFraction(value, diagnostics, context);
            }
            case 41: {
                return this.validateNumberOrFractionMember1((String)value, diagnostics, context);
            }
            case 42: {
                return this.validateNzqr(value, diagnostics, context);
            }
            case 43: {
                return this.validateNzqrMember2((String)value, diagnostics, context);
            }
            case 44: {
                return this.validateOID((String)value, diagnostics, context);
            }
            case 45: {
                return this.validateTypeTypeObject((TypeType)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateArrayT(ArrayT arrayT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(arrayT, diagnostics, context);
    }

    public boolean validateColorT(ColorT colorT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(colorT, diagnostics, context);
    }

    public boolean validateComplexDataT(ComplexDataT complexDataT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(complexDataT, diagnostics, context);
    }

    public boolean validateComponentDataType(ComponentDataType componentDataType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(componentDataType, diagnostics, context);
    }

    public boolean validateDataEntryT(DataEntryT dataEntryT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dataEntryT, diagnostics, context);
    }

    public boolean validateDataSetT(DataSetT dataSetT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dataSetT, diagnostics, context);
    }

    public boolean validateDataVariantT(DataVariantT dataVariantT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dataVariantT, diagnostics, context);
    }

    public boolean validateDependencyT(DependencyT dependencyT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dependencyT, diagnostics, context);
    }

    public boolean validateDimensionalDataT(DimensionalDataT dimensionalDataT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dimensionalDataT, diagnostics, context);
    }

    public boolean validateDimensionalTypeT(DimensionalTypeT dimensionalTypeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dimensionalTypeT, diagnostics, context);
    }

    public boolean validateDistributionInfoT(DistributionInfoT distributionInfoT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(distributionInfoT, diagnostics, context);
    }

    public boolean validateDocumentRoot(DocumentRoot documentRoot, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(documentRoot, diagnostics, context);
    }

    public boolean validateEnumerationDataT(EnumerationDataT enumerationDataT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(enumerationDataT, diagnostics, context);
    }

    public boolean validateFileReferenceT(FileReferenceT fileReferenceT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(fileReferenceT, diagnostics, context);
    }

    public boolean validateFormattedTextT(FormattedTextT formattedTextT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(formattedTextT, diagnostics, context);
    }

    public boolean validateGenericDataT(GenericDataT genericDataT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(genericDataT, diagnostics, context);
    }

    public boolean validateIconT(IconT iconT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(iconT, diagnostics, context);
    }

    public boolean validateIntervalT(IntervalT intervalT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(intervalT, diagnostics, context);
    }

    public boolean validateItemRefT(ItemRefT itemRefT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(itemRefT, diagnostics, context);
    }

    public boolean validateLocalType(LocalType localType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(localType, diagnostics, context);
    }

    public boolean validateLogicDataT(LogicDataT logicDataT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(logicDataT, diagnostics, context);
    }

    public boolean validateMatrixT(MatrixT matrixT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(matrixT, diagnostics, context);
    }

    public boolean validateNotesT(NotesT notesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(notesT, diagnostics, context);
    }

    public boolean validateNoteType(NoteType noteType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(noteType, diagnostics, context);
    }

    public boolean validateNumericDataT(NumericDataT numericDataT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(numericDataT, diagnostics, context);
    }

    public boolean validateOneDType(OneDType oneDType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(oneDType, diagnostics, context);
    }

    public boolean validateOptionT(OptionT optionT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(optionT, diagnostics, context);
    }

    public boolean validateParameterType(ParameterType parameterType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(parameterType, diagnostics, context);
    }

    public boolean validatePointT(PointT pointT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(pointT, diagnostics, context);
    }

    public boolean validateReferenceDataT(ReferenceDataT referenceDataT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(referenceDataT, diagnostics, context);
    }

    public boolean validateScalarTypeT(ScalarTypeT scalarTypeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(scalarTypeT, diagnostics, context);
    }

    public boolean validateSizeT(SizeT sizeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(sizeT, diagnostics, context);
    }

    public boolean validateTimeStampT(TimeStampT timeStampT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(timeStampT, diagnostics, context);
    }

    public boolean validateTwoDType(TwoDType twoDType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(twoDType, diagnostics, context);
    }

    public boolean validateViewType(ViewType viewType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(viewType, diagnostics, context);
    }

    public boolean validateCurveKindT(CurveKindT curveKindT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateExtrapolationType(ExtrapolationType extrapolationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeType(TypeType typeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateCurveKindTObject(CurveKindT curveKindTObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateExtrapolationTypeObject(ExtrapolationType extrapolationTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
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
            if (ComponentDataPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            for (Diagnostic diagnostic : tempDiagnostics.getChildren()) {
                diagnostics.add(diagnostic);
            }
        } else {
            if (XMLTypePackage.Literals.DOUBLE.isInstance(numberOrFraction) && this.xmlTypeValidator.validateDouble(((Double)numberOrFraction).doubleValue(), null, context)) {
                return true;
            }
            if (ComponentDataPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, null, context)) {
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
        return this.validatePattern(ComponentDataPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, numberOrFractionMember1, NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES, diagnostics, context);
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
            if (ComponentDataPackage.Literals.NZQR_MEMBER2.isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, (DiagnosticChain)tempDiagnostics, context)) {
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
            if (ComponentDataPackage.Literals.NZQR_MEMBER2.isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, null, context)) {
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
        return this.validatePattern(ComponentDataPackage.Literals.NZQR_MEMBER2, nzqrMember2, NZQR_MEMBER2__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateOID(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateOID_Pattern(oid, diagnostics, context);
        return result;
    }

    public boolean validateOID_Pattern(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(ComponentDataPackage.Literals.OID, oid, OID__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateTypeTypeObject(TypeType typeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return super.getResourceLocator();
    }
}

