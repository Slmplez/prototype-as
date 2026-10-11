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
package com.etas.amd620.core.Formulas.util;

import com.etas.amd620.core.Formulas.ColorT;
import com.etas.amd620.core.Formulas.DocumentRoot;
import com.etas.amd620.core.Formulas.FileReferenceT;
import com.etas.amd620.core.Formulas.FormattedTextT;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import com.etas.amd620.core.Formulas.FormulasPackage;
import com.etas.amd620.core.Formulas.FormulasType;
import com.etas.amd620.core.Formulas.GenericDataT;
import com.etas.amd620.core.Formulas.IconT;
import com.etas.amd620.core.Formulas.IntervalT;
import com.etas.amd620.core.Formulas.ItemRefT;
import com.etas.amd620.core.Formulas.NoteType;
import com.etas.amd620.core.Formulas.NotesT;
import com.etas.amd620.core.Formulas.OptionT;
import com.etas.amd620.core.Formulas.ParameterType;
import com.etas.amd620.core.Formulas.PointT;
import com.etas.amd620.core.Formulas.SizeT;
import com.etas.amd620.core.Formulas.TimeStampT;
import com.etas.amd620.core.Formulas.TypeType;
import com.etas.amd620.core.Formulas.ViewType;
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

public class FormulasValidator
extends EObjectValidator {
    public static final FormulasValidator INSTANCE = new FormulasValidator();
    public static final String DIAGNOSTIC_SOURCE = "com.etas.amd620.core.Formulas";
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 0;
    protected static final int DIAGNOSTIC_CODE_COUNT = 0;
    protected XMLTypeValidator xmlTypeValidator = XMLTypeValidator.INSTANCE;
    public static final EValidator.PatternMatcher[][] NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*.?\\d*/\\d*\\.?\\d*")}};
    public static final EValidator.PatternMatcher[][] NZQR_MEMBER2__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"-?\\d*/\\d*")}};
    public static final EValidator.PatternMatcher[][] OID__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher((String)"(_040|_07v)\\w{26}|_sm")}};

    protected EPackage getEPackage() {
        return FormulasPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateColorT((ColorT)value, diagnostics, context);
            }
            case 1: {
                return this.validateDocumentRoot((DocumentRoot)value, diagnostics, context);
            }
            case 2: {
                return this.validateFileReferenceT((FileReferenceT)value, diagnostics, context);
            }
            case 3: {
                return this.validateFormattedTextT((FormattedTextT)value, diagnostics, context);
            }
            case 4: {
                return this.validateFormulaComplexType((FormulaComplexType)value, diagnostics, context);
            }
            case 5: {
                return this.validateFormulasType((FormulasType)value, diagnostics, context);
            }
            case 6: {
                return this.validateGenericDataT((GenericDataT)value, diagnostics, context);
            }
            case 7: {
                return this.validateIconT((IconT)value, diagnostics, context);
            }
            case 8: {
                return this.validateIntervalT((IntervalT)value, diagnostics, context);
            }
            case 9: {
                return this.validateItemRefT((ItemRefT)value, diagnostics, context);
            }
            case 10: {
                return this.validateNotesT((NotesT)value, diagnostics, context);
            }
            case 11: {
                return this.validateNoteType((NoteType)value, diagnostics, context);
            }
            case 12: {
                return this.validateOptionT((OptionT)value, diagnostics, context);
            }
            case 13: {
                return this.validateParameterType((ParameterType)value, diagnostics, context);
            }
            case 14: {
                return this.validatePointT((PointT)value, diagnostics, context);
            }
            case 15: {
                return this.validateSizeT((SizeT)value, diagnostics, context);
            }
            case 16: {
                return this.validateTimeStampT((TimeStampT)value, diagnostics, context);
            }
            case 17: {
                return this.validateViewType((ViewType)value, diagnostics, context);
            }
            case 18: {
                return this.validateTypeType((TypeType)((Object)value), diagnostics, context);
            }
            case 19: {
                return this.validateNumberOrFraction(value, diagnostics, context);
            }
            case 20: {
                return this.validateNumberOrFractionMember1((String)value, diagnostics, context);
            }
            case 21: {
                return this.validateNzqr(value, diagnostics, context);
            }
            case 22: {
                return this.validateNzqrMember2((String)value, diagnostics, context);
            }
            case 23: {
                return this.validateOID((String)value, diagnostics, context);
            }
            case 24: {
                return this.validateTypeTypeObject((TypeType)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateColorT(ColorT colorT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(colorT, diagnostics, context);
    }

    public boolean validateDocumentRoot(DocumentRoot documentRoot, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(documentRoot, diagnostics, context);
    }

    public boolean validateFileReferenceT(FileReferenceT fileReferenceT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(fileReferenceT, diagnostics, context);
    }

    public boolean validateFormattedTextT(FormattedTextT formattedTextT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(formattedTextT, diagnostics, context);
    }

    public boolean validateFormulaComplexType(FormulaComplexType formulaComplexType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(formulaComplexType, diagnostics, context);
    }

    public boolean validateFormulasType(FormulasType formulasType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(formulasType, diagnostics, context);
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

    public boolean validateNotesT(NotesT notesT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(notesT, diagnostics, context);
    }

    public boolean validateNoteType(NoteType noteType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(noteType, diagnostics, context);
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

    public boolean validateSizeT(SizeT sizeT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(sizeT, diagnostics, context);
    }

    public boolean validateTimeStampT(TimeStampT timeStampT, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(timeStampT, diagnostics, context);
    }

    public boolean validateViewType(ViewType viewType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(viewType, diagnostics, context);
    }

    public boolean validateTypeType(TypeType typeType, DiagnosticChain diagnostics, Map<Object, Object> context) {
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
            if (FormulasPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, (DiagnosticChain)tempDiagnostics, context)) {
                return true;
            }
            for (Diagnostic diagnostic : tempDiagnostics.getChildren()) {
                diagnostics.add(diagnostic);
            }
        } else {
            if (XMLTypePackage.Literals.DOUBLE.isInstance(numberOrFraction) && this.xmlTypeValidator.validateDouble(((Double)numberOrFraction).doubleValue(), null, context)) {
                return true;
            }
            if (FormulasPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(numberOrFraction) && this.validateNumberOrFractionMember1((String)numberOrFraction, null, context)) {
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
        return this.validatePattern(FormulasPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, numberOrFractionMember1, NUMBER_OR_FRACTION_MEMBER1__PATTERN__VALUES, diagnostics, context);
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
            if (FormulasPackage.Literals.NZQR_MEMBER2.isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, (DiagnosticChain)tempDiagnostics, context)) {
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
            if (FormulasPackage.Literals.NZQR_MEMBER2.isInstance(nzqr) && this.validateNzqrMember2((String)nzqr, null, context)) {
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
        return this.validatePattern(FormulasPackage.Literals.NZQR_MEMBER2, nzqrMember2, NZQR_MEMBER2__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateOID(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateOID_Pattern(oid, diagnostics, context);
        return result;
    }

    public boolean validateOID_Pattern(String oid, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(FormulasPackage.Literals.OID, oid, OID__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateTypeTypeObject(TypeType typeTypeObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return super.getResourceLocator();
    }
}

