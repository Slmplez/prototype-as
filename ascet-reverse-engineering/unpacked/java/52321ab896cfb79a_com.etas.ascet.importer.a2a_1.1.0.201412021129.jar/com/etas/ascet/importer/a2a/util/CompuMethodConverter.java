/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar21.swcomponent.datatype.computationmethod.CompuNominatorDenominator
 *  autosar21.swcomponent.datatype.computationmethod.CompuScaleRationalFormula
 *  autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData3
 *  autosar3x.swcomponent.datatype.computationmethod.CompuNominatorDenominator
 *  autosar3x.swcomponent.datatype.computationmethod.CompuScaleRationalFormula
 *  autosar3x.swcomponent.datatype.units.Unit
 *  autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames
 *  autosar40.genericstructure.varianthandling.NumericalValueVariationPoint
 *  autosar40.swcomponent.datatype.computationmethod.CompuNominatorDenominator
 *  autosar40.swcomponent.datatype.computationmethod.CompuScaleRationalFormula
 *  autosar40.swcomponent.datatype.units.Unit
 *  com.etas.amd.core.util.AmdFormulaFactory
 *  com.etas.amd620.core.Formulas.FormulaComplexType
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuNominatorDenominator
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleContents
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleRationalFormula
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales
 *  gautosar.gswcomponents.gdatatype.gunits.GUnit
 *  org.apache.commons.lang.StringUtils
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.ascet.importer.a2a.util;

import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData3;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.swcomponent.datatype.computationmethod.CompuNominatorDenominator;
import autosar40.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import autosar40.swcomponent.datatype.units.Unit;
import com.etas.amd.core.util.AmdFormulaFactory;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import com.etas.ascet.importer.a2a.config.IConfig;
import com.etas.ascet.importer.a2a.logger.Logger;
import com.etas.ascet.importer.a2a.util.AutosarScoping;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuNominatorDenominator;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleRationalFormula;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;
import org.apache.commons.lang.StringUtils;
import org.eclipse.emf.common.util.EList;

public class CompuMethodConverter {
    public static final String CM_TEXTTABLE = "TEXTTABLE";
    public static final String CM_IDENTITY = "IDENTICAL";
    public static final String CM_LINEAR = "LINEAR";
    public static final String CM_RATFUNC = "RATFUNC";
    private final GCompuMethod compuMethod;
    private final IConfig config;

    public CompuMethodConverter(GCompuMethod elem, IConfig config) {
        this.compuMethod = elem;
        this.config = config;
    }

    public FormulaComplexType convertToAmdFormula(Logger lg) {
        GCompu compuPhysToInternal = this.compuMethod.gGetCompuPhysToInternal();
        String category = this.compuMethod.gGetCategory();
        if (StringUtils.equals((String)category, (String)CM_TEXTTABLE)) {
            return null;
        }
        if (compuPhysToInternal == null && this.compuMethod.gGetCompuInternalToPhys() == null) {
            if (!StringUtils.equals((String)category, (String)CM_IDENTITY)) {
                lg.reportDubiousCategory(this.compuMethod.gGetShortName(), category, CM_IDENTITY);
            }
            return AmdFormulaFactory.createIdentFormula((String)this.compuMethod.gGetShortName(), (String)this.getUnitName(), (String)this.getUnitRef());
        }
        if (compuPhysToInternal != null) {
            GCompuContent compuContent = compuPhysToInternal.gGetCompuContent();
            EList compuScales = ((GCompuScales)compuContent).gGetCompuScales();
            if (compuScales != null && compuScales.size() == 1) {
                return this.convertFormula((EList<GCompuScale>)compuScales, lg);
            }
            lg.reportNotConvertCompuMethod(this.compuMethod.gGetShortName(), "not supported compu method definition (no COMPU-SCALES defined)");
        } else {
            lg.reportNotConvertCompuMethod(this.compuMethod.gGetShortName(), "not supported compu method definition (expected is COMPU-PHYS-TO-INTERNAL)");
        }
        return null;
    }

    private FormulaComplexType convertFormula(EList<GCompuScale> compuScales, Logger lg) {
        GCompuScale compuScale = (GCompuScale)compuScales.get(0);
        GCompuScaleContents scaleContents = compuScale.gGetCompuScaleContents();
        if (scaleContents instanceof GCompuScaleConstantContents) {
            lg.reportNotConvertCompuMethod(this.compuMethod.gGetShortName(), "CompuMethod with constant scales not supported yet, please use rational function of order 0");
            return null;
        }
        if (this.isRational(scaleContents)) {
            GCompuNominatorDenominator denominator;
            GCompuRationalCoeffs rationalCoeffs = ((GCompuScaleRationalFormula)scaleContents).gGetCompuRationalCoeffs();
            GCompuNominatorDenominator numerator = rationalCoeffs.gGetCompuNumerator();
            if (this.isMoebiousCandidate(numerator, denominator = rationalCoeffs.gGetCompuDenominator())) {
                return this.convertToMoebius(numerator, denominator, lg);
            }
            if (this.isLinearCandidate(numerator, denominator, lg)) {
                return this.convertToLinear(numerator, lg);
            }
            return this.convertToMoebius(numerator, denominator, lg);
        }
        return null;
    }

    private boolean isRational(GCompuScaleContents scaleContents) {
        return scaleContents instanceof CompuScaleRationalFormula || scaleContents instanceof autosar3x.swcomponent.datatype.computationmethod.CompuScaleRationalFormula || scaleContents instanceof autosar21.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
    }

    private boolean isMoebiousCandidate(GCompuNominatorDenominator numerator, GCompuNominatorDenominator denominator) {
        return this.getNominatorDenominatorSize(denominator) == 2 && this.getNominatorDenominatorSize(numerator) <= 2;
    }

    private boolean isLinearCandidate(GCompuNominatorDenominator numerator, GCompuNominatorDenominator denominator, Logger lg) {
        return this.getNominatorDenominatorSize(denominator) == 1 && this.getNominatorDenominatorSize(numerator) <= 2 && this.isLinearCoeff(denominator, lg) != false;
    }

    private FormulaComplexType convertToLinear(GCompuNominatorDenominator numerator, Logger lg) {
        String name = this.compuMethod.gGetShortName();
        String category = this.compuMethod.gGetCategory();
        if (!StringUtils.equals((String)category, (String)CM_LINEAR)) {
            lg.reportDubiousCategory(name, category, CM_LINEAR);
        }
        try {
            String n0 = this.getCoeffs(numerator, 0);
            String n1 = this.getCoeffs(numerator, 1);
            return AmdFormulaFactory.createLinearFormula((String)name, (String)this.getUnitName(), (String)this.getUnitRef(), (String)n0, (String)n1);
        }
        catch (Exception e) {
            lg.reportNotConvertCompuMethod(name, e.getMessage());
            return null;
        }
    }

    private Boolean isLinearCoeff(GCompuNominatorDenominator denominator, Logger lg) {
        String n0;
        block3: {
            try {
                n0 = this.getCoeffs(denominator, 0);
                if (!StringUtils.isEmpty((String)n0)) break block3;
                lg.reportNotConvertCompuMethod(this.compuMethod.gGetShortName(), "Invalid empty denominator.");
                return null;
            }
            catch (Exception exception) {
                return false;
            }
        }
        Float parsedVal = Float.valueOf(Float.parseFloat(n0));
        return parsedVal.equals(Float.valueOf(1.0f));
    }

    private FormulaComplexType convertToMoebius(GCompuNominatorDenominator numerator, GCompuNominatorDenominator denominator, Logger lg) {
        String name = this.compuMethod.gGetShortName();
        try {
            String n0 = this.getCoeffs(numerator, 0);
            String n1 = this.getCoeffs(numerator, 1);
            String d0 = this.getCoeffs(denominator, 0);
            String d1 = "0";
            if (this.getNominatorDenominatorSize(denominator) > 1) {
                d1 = this.getCoeffs(denominator, 1);
            }
            return AmdFormulaFactory.createMoebiusFormula((String)name, (String)this.getUnitName(), (String)this.getUnitRef(), (String)n0, (String)n1, (String)d0, (String)d1);
        }
        catch (Exception e) {
            lg.reportNotConvertCompuMethod(name, e.getMessage());
            return null;
        }
    }

    private int getNominatorDenominatorSize(GCompuNominatorDenominator denominator) {
        if (denominator instanceof CompuNominatorDenominator) {
            return ((CompuNominatorDenominator)denominator).getVs().size();
        }
        if (denominator instanceof autosar3x.swcomponent.datatype.computationmethod.CompuNominatorDenominator) {
            return ((autosar3x.swcomponent.datatype.computationmethod.CompuNominatorDenominator)denominator).getVs().size();
        }
        return ((autosar21.swcomponent.datatype.computationmethod.CompuNominatorDenominator)denominator).getVs().size();
    }

    private String getCoeffs(GCompuNominatorDenominator nd, int idx) throws Exception {
        if (this.getNominatorDenominatorSize(nd) <= idx) {
            return "0";
        }
        if (nd instanceof CompuNominatorDenominator) {
            NumericalValueVariationPoint numericalValueVPoint = (NumericalValueVariationPoint)((CompuNominatorDenominator)nd).getVs().get(idx);
            String text = numericalValueVPoint.getMixedText();
            if (StringUtils.isEmpty((String)text)) {
                throw new Exception("Nominator/Denominator has doubious coeffecients");
            }
            return text;
        }
        if (nd instanceof autosar3x.swcomponent.datatype.computationmethod.CompuNominatorDenominator) {
            return (String)((autosar3x.swcomponent.datatype.computationmethod.CompuNominatorDenominator)nd).getVs().get(idx);
        }
        return (String)((autosar21.swcomponent.datatype.computationmethod.CompuNominatorDenominator)nd).getVs().get(idx);
    }

    private String getUnitName() {
        String name;
        SlData3 displayName;
        GUnit unit = this.compuMethod.gGetUnit();
        if (unit == null) {
            return "";
        }
        if (unit instanceof Unit) {
            String name2;
            SingleLanguageUnitNames displayName2 = ((Unit)unit).getDisplayName();
            if (displayName2 != null && !StringUtils.isEmpty((String)(name2 = displayName2.getMixedText()))) {
                return name2;
            }
        } else if (unit instanceof autosar3x.swcomponent.datatype.units.Unit && (displayName = ((autosar3x.swcomponent.datatype.units.Unit)unit).getDisplayName()) != null && !StringUtils.isEmpty((String)(name = displayName.getMixedText()))) {
            return name;
        }
        return unit.gGetShortName();
    }

    private String getUnitRef() {
        if (this.config.isNameSpaceRequired()) {
            GUnit gGetUnit = this.compuMethod.gGetUnit();
            if (gGetUnit == null) {
                return "";
            }
            return AutosarScoping.getARPath((GIdentifiable)gGetUnit);
        }
        return "";
    }
}

