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
package com.etas.amd620.core.ComponentImplementation.util;

import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.ColorT;
import com.etas.amd620.core.ComponentImplementation.ComplexImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComplexReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationType;
import com.etas.amd620.core.ComponentImplementation.DimensionalImplementationT;
import com.etas.amd620.core.ComponentImplementation.DimensionalReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.DistributionImplementationType;
import com.etas.amd620.core.ComponentImplementation.DocumentRoot;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationT;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationType;
import com.etas.amd620.core.ComponentImplementation.FileReferenceT;
import com.etas.amd620.core.ComponentImplementation.FormattedTextT;
import com.etas.amd620.core.ComponentImplementation.GenericDataT;
import com.etas.amd620.core.ComponentImplementation.IconT;
import com.etas.amd620.core.ComponentImplementation.ImplementationCastImplementationType;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentImplementation.ImplementationSetT;
import com.etas.amd620.core.ComponentImplementation.ImplementationSetType;
import com.etas.amd620.core.ComponentImplementation.ImplementationVariantT;
import com.etas.amd620.core.ComponentImplementation.IntervalT;
import com.etas.amd620.core.ComponentImplementation.ItemRefT;
import com.etas.amd620.core.ComponentImplementation.LimitOverflowType;
import com.etas.amd620.core.ComponentImplementation.LogicImplementationT;
import com.etas.amd620.core.ComponentImplementation.MasterType;
import com.etas.amd620.core.ComponentImplementation.MethodImplementationT;
import com.etas.amd620.core.ComponentImplementation.NoteType;
import com.etas.amd620.core.ComponentImplementation.NotesT;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationBaseT;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationT;
import com.etas.amd620.core.ComponentImplementation.OneDImplementationType;
import com.etas.amd620.core.ComponentImplementation.OptionT;
import com.etas.amd620.core.ComponentImplementation.PointT;
import com.etas.amd620.core.ComponentImplementation.PrimitiveImplementationT;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationType;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentImplementation.SizeT;
import com.etas.amd620.core.ComponentImplementation.TemplateImplementationT;
import com.etas.amd620.core.ComponentImplementation.TimeStampT;
import com.etas.amd620.core.ComponentImplementation.TwoDImplementationType;
import com.etas.amd620.core.ComponentImplementation.TypeType;
import com.etas.amd620.core.ComponentImplementation.ViewType;
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

public class ComponentImplementationValidator
extends EObjectValidator {
    public static final ComponentImplementationValidator INSTANCE = new ComponentImplementationValidator();
    public static final String DIAGNOSTIC_SOURCE = "com.etas.amd620.core.ComponentImplementation";
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 0;
    protected static final int DIAGNOSTIC_CODE_COUNT = 0;
    protected XMLTypeValidator xmlTypeValidator = XMLTypeValidator.INSTANCE;
    public static final EValidator.PatternMatcher[][] NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*.?\\d*/\\d*\\.?\\d*")}};
    public static final EValidator.PatternMatcher[][] NZQR_MEMBER2__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*/\\d*")}};
    public static final EValidator.PatternMatcher[][] OID__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"(_040|_07v)\\w{26}|_sm")}};

    protected EPackage getEPackage() {
        return ComponentImplementationPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateColorT((ColorT)value, diagnostics, context);
            }
            case 1: {
                return this.validateComplexImplementationT((ComplexImplementationT)value, diagnostics, context);
            }
            case 2: {
                return this.validateComplexReferenceImplementationT((ComplexReferenceImplementationT)value, diagnostics, context);
            }
            case 3: {
                return this.validateComponentImplementationType((ComponentImplementationType)value, diagnostics, context);
            }
            case 4: {
                return this.validateDimensionalImplementationT((DimensionalImplementationT)value, diagnostics, context);
            }
            case 5: {
                return this.validateDimensionalReferenceImplementationT((DimensionalReferenceImplementationT)value, diagnostics, context);
            }
            case 6: {
                return this.validateDistributionImplementationType((DistributionImplementationType)value, diagnostics, context);
            }
            case 7: {
                return this.validateDocumentRoot((DocumentRoot)value, diagnostics, context);
            }
            case 8: {
                return this.validateElementImplementationT((ElementImplementationT)value, diagnostics, context);
            }
            case 9: {
                return this.validateElementImplementationType((ElementImplementationType)value, diagnostics, context);
            }
            case 10: {
                return this.validateFileReferenceT((FileReferenceT)value, diagnostics, context);
            }
            case 11: {
                return this.validateFormattedTextT((FormattedTextT)value, diagnostics, context);
            }
            case 12: {
                return this.validateGenericDataT((GenericDataT)value, diagnostics, context);
            }
            case 13: {
                return this.validateIconT((IconT)value, diagnostics, context);
            }
            case 14: {
                return this.validateImplementationCastImplementationType((ImplementationCastImplementationType)value, diagnostics, context);
            }
            case 15: {
                return this.validateImplementationEntryT((ImplementationEntryT)value, diagnostics, context);
            }
            case 16: {
                return this.validateImplementationSetT((ImplementationSetT)value, diagnostics, context);
            }
            case 17: {
                return this.validateImplementationSetType((ImplementationSetType)value, diagnostics, context);
            }
            case 18: {
                return this.validateImplementationVariantT((ImplementationVariantT)value, diagnostics, context);
            }
            case 19: {
                return this.validateIntervalT((IntervalT)value, diagnostics, context);
            }
            case 20: {
                return this.validateItemRefT((ItemRefT)value, diagnostics, context);
            }
            case 21: {
                return this.validateLogicImplementationT((LogicImplementationT)value, diagnostics, context);
            }
            case 22: {
                return this.validateMethodImplementationT((MethodImplementationT)value, diagnostics, context);
            }
            case 23: {
                return this.validateNotesT((NotesT)value, diagnostics, context);
            }
            case 24: {
                return this.validateNoteType((NoteType)value, diagnostics, context);
            }
            case 25: {
                return this.validateNumericImplementationBaseT((NumericImplementationBaseT)value, diagnostics, context);
            }
            case 26: {
                return this.validateNumericImplementationT((NumericImplementationT)value, diagnostics, context);
            }
            case 27: {
                return this.validateOneDImplementationType((OneDImplementationType)value, diagnostics, context);
            }
            case 28: {
                return this.validateOptionT((OptionT)value, diagnostics, context);
            }
            case 29: {
                return this.validatePointT((PointT)value, diagnostics, context);
            }
            case 30: {
                return this.validatePrimitiveImplementationT((PrimitiveImplementationT)value, diagnostics, context);
            }
            case 31: {
                return this.validateResourceImplementationT((ResourceImplementationT)value, diagnostics, context);
            }
            case 32: {
                return this.validateResourceImplementationType((ResourceImplementationType)value, diagnostics, context);
            }
            case 33: {
                return this.validateScalarImplementationT((ScalarImplementationT)value, diagnostics, context);
            }
            case 34: {
                return this.validateSizeT((SizeT)value, diagnostics, context);
            }
            case 35: {
                return this.validateTemplateImplementationT((TemplateImplementationT)value, diagnostics, context);
            }
            case 36: {
                return this.validateTimeStampT((TimeStampT)value, diagnostics, context);
            }
            case 37: {
                return this.validateTwoDImplementationType((TwoDImplementationType)value, diagnostics, context);
            }
            case 38: {
                return this.validateViewType((ViewType)value, diagnostics, context);
            }
            case 39: {
                return this.validateCacheLockingType((CacheLockingType)((Object)value), diagnostics, context);
            }
            case 40: {
                return this.validateLimitOverflowType((LimitOverflowType)((Object)value), diagnostics, context);
            }
            case 41: {
                return this.validateMasterType((MasterType)((Object)value), diagnostics, context);
            }
            case 42: {
                return this.validateTypeType((TypeType)((Object)value), diagnostics, context);
            }
            case 43: {
                return this.validateCacheLockingTypeObject((CacheLockingType)((Object)value), diagnostics, context);
            }
            case 44: {
                return this.validateLimitOverflowTypeObject((LimitOverflowType)((Object)value), diagnostics, context);
            }
            case 45: {
                return this.validateMasterTypeObject((MasterType)((Object)value), diagnostics, context);
            }
            case 46: {
                return this.validateNumberOrFraction(value, diagnostics, context);
            }
            case 47: {
                return this.validateNumberOrFractionMember1((String)value, diagnostics, context);
            }
            case 48: {
                return this.validateNzqr(value, diagnostics, context);
            }
            case 49: {
                return this.validateNzqrMember2((String)value, diagnostics, context);
            }
            case 50: {
                return this.validateOID((String)value, diagnostics, context);
            }
            case 51: {
                return this.validateTypeTypeObject((TypeType)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateColorT(ColorT colorT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(colorT, diagnostics, context);
    }

    public boolean validateComplexImplementationT(ComplexImplementationT complexImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(complexImplementationT, diagnostics, context);
    }

    public boolean validateComplexReferenceImplementationT(ComplexReferenceImplementationT complexReferenceImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(complexReferenceImplementationT, diagnostics, context);
    }

    public boolean validateComponentImplementationType(ComponentImplementationType componentImplementationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(componentImplementationType, diagnostics, context);
    }

    public boolean validateDimensionalImplementationT(DimensionalImplementationT dimensionalImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dimensionalImplementationT, diagnostics, context);
    }

    public boolean validateDimensionalReferenceImplementationT(DimensionalReferenceImplementationT dimensionalReferenceImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(dimensionalReferenceImplementationT, diagnostics, context);
    }

    public boolean validateDistributionImplementationType(DistributionImplementationType distributionImplementationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(distributionImplementationType, diagnostics, context);
    }

    public boolean validateDocumentRoot(DocumentRoot documentRoot, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(documentRoot, diagnostics, context);
    }

    public boolean validateElementImplementationT(ElementImplementationT elementImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(elementImplementationT, diagnostics, context);
    }

    public boolean validateElementImplementationType(ElementImplementationType elementImplementationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(elementImplementationType, diagnostics, context);
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

    public boolean validateImplementationCastImplementationType(ImplementationCastImplementationType implementationCastImplementationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(implementationCastImplementationType, diagnostics, context);
    }

    public boolean validateImplementationEntryT(ImplementationEntryT implementationEntryT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(implementationEntryT, diagnostics, context);
    }

    public boolean validateImplementationSetT(ImplementationSetT implementationSetT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(implementationSetT, diagnostics, context);
    }

    public boolean validateImplementationSetType(ImplementationSetType implementationSetType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(implementationSetType, diagnostics, context);
    }

    public boolean validateImplementationVariantT(ImplementationVariantT implementationVariantT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(implementationVariantT, diagnostics, context);
    }

    public boolean validateIntervalT(IntervalT intervalT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(intervalT, diagnostics, context);
    }

    public boolean validateItemRefT(ItemRefT itemRefT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(itemRefT, diagnostics, context);
    }

    public boolean validateLogicImplementationT(LogicImplementationT logicImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(logicImplementationT, diagnostics, context);
    }

    public boolean validateMethodImplementationT(MethodImplementationT methodImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(methodImplementationT, diagnostics, context);
    }

    public boolean validateNotesT(NotesT notesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(notesT, diagnostics, context);
    }

    public boolean validateNoteType(NoteType noteType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(noteType, diagnostics, context);
    }

    public boolean validateNumericImplementationBaseT(NumericImplementationBaseT numericImplementationBaseT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(numericImplementationBaseT, diagnostics, context);
    }

    public boolean validateNumericImplementationT(NumericImplementationT numericImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(numericImplementationT, diagnostics, context);
    }

    public boolean validateOneDImplementationType(OneDImplementationType oneDImplementationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(oneDImplementationType, diagnostics, context);
    }

    public boolean validateOptionT(OptionT optionT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(optionT, diagnostics, context);
    }

    public boolean validatePointT(PointT pointT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(pointT, diagnostics, context);
    }

    public boolean validatePrimitiveImplementationT(PrimitiveImplementationT primitiveImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(primitiveImplementationT, diagnostics, context);
    }

    public boolean validateResourceImplementationT(ResourceImplementationT resourceImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(resourceImplementationT, diagnostics, context);
    }

    public boolean validateResourceImplementationType(ResourceImplementationType resourceImplementationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(resourceImplementationType, diagnostics, context);
    }

    public boolean validateScalarImplementationT(ScalarImplementationT scalarImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(scalarImplementationT, diagnostics, context);
    }

    public boolean validateSizeT(SizeT sizeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(sizeT, diagnostics, context);
    }

    public boolean validateTemplateImplementationT(TemplateImplementationT templateImplementationT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(templateImplementationT, diagnostics, context);
    }

    public boolean validateTimeStampT(TimeStampT timeStampT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(timeStampT, diagnostics, context);
    }

    public boolean validateTwoDImplementationType(TwoDImplementationType twoDImplementationType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(twoDImplementationType, diagnostics, context);
    }

    public boolean validateViewType(ViewType viewType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(viewType, diagnostics, context);
    }

    public boolean validateCacheLockingType(CacheLockingType cacheLockingType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateLimitOverflowType(LimitOverflowType limitOverflowType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateMasterType(MasterType masterType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTypeType(TypeType typeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateCacheLockingTypeObject(CacheLockingType cacheLockingTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateLimitOverflowTypeObject(LimitOverflowType limitOverflowTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateMasterTypeObject(MasterType masterTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
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
            if (ComponentImplementationPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            for (Diagnostic diagnostic : tempDiagnostics.getChildren()) {
                diagnostics.add(diagnostic);
            }
        } else {
            if (XMLTypePackage.Literals.DOUBLE.isInstance(numberOrFraction) && this.xmlTypeValidator.validateDouble(((Double)numberOrFraction).doubleValue(), null, context)) {
                return true;
            }
            if (ComponentImplementationPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, null, context)) {
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
        return this.validatePattern(ComponentImplementationPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, numberOrFractionMember1, NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES, diagnostics, context);
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
            if (ComponentImplementationPackage.Literals.NZQR_MEMBER2.isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, (DiagnosticChain)tempDiagnostics, context)) {
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
            if (ComponentImplementationPackage.Literals.NZQR_MEMBER2.isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, null, context)) {
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
        return this.validatePattern(ComponentImplementationPackage.Literals.NZQR_MEMBER2, nzqrMember2, NZQR_MEMBER2__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateOID(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateOID_Pattern(oid, diagnostics, context);
        return result;
    }

    public boolean validateOID_Pattern(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(ComponentImplementationPackage.Literals.OID, oid, OID__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateTypeTypeObject(TypeType typeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return super.getResourceLocator();
    }
}

