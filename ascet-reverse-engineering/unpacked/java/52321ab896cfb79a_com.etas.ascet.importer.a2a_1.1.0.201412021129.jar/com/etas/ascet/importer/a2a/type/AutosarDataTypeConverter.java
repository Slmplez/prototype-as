/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar40.commonstructure.implementationdatatypes.ImplementationDataType
 *  autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement
 *  autosar40.swcomponent.datatype.computationmethod.Compu
 *  autosar40.swcomponent.datatype.computationmethod.CompuMethod
 *  autosar40.swcomponent.datatype.computationmethod.CompuScale
 *  autosar40.swcomponent.datatype.computationmethod.CompuScales
 *  autosar40.swcomponent.datatype.dataprototypes.ApplicationArrayElement
 *  autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement
 *  autosar40.swcomponent.datatype.datatypes.ApplicationArrayDataType
 *  autosar40.swcomponent.datatype.datatypes.ApplicationDataType
 *  autosar40.swcomponent.datatype.datatypes.ApplicationRecordDataType
 *  autosar40.swcomponent.datatype.datatypes.AutosarDataType
 *  com.etas.amd.core.type.AbstractAmdType
 *  com.etas.amd.core.type.AmdEnumType
 *  com.etas.amd.core.type.AmdLogicType
 *  com.etas.amd.core.type.AmdNumericType
 *  com.etas.amd.core.util.AbstractAmdItem
 *  com.etas.amd.core.util.AmdEnum
 *  com.etas.amd620.core.Formulas.FormulaComplexType
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales
 *  org.apache.commons.lang.StringUtils
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.ascet.importer.a2a.type;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.swcomponent.datatype.computationmethod.Compu;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import autosar40.swcomponent.datatype.computationmethod.CompuScale;
import autosar40.swcomponent.datatype.computationmethod.CompuScales;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationArrayElement;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.swcomponent.datatype.datatypes.ApplicationArrayDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationRecordDataType;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import com.etas.amd.core.type.AbstractAmdType;
import com.etas.amd.core.type.AmdEnumType;
import com.etas.amd.core.type.AmdLogicType;
import com.etas.amd.core.type.AmdNumericType;
import com.etas.amd.core.util.AbstractAmdItem;
import com.etas.amd.core.util.AmdEnum;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import com.etas.ascet.importer.a2a.logger.Logger;
import com.etas.ascet.importer.a2a.type.AutosarArrayTypeConverter;
import com.etas.ascet.importer.a2a.type.PlatformTypesUtil;
import com.etas.ascet.importer.a2a.type.TypeLimit;
import com.etas.ascet.importer.a2a.util.AutosarScoping;
import com.etas.ascet.importer.a2a.util.CompuScaleUtil;
import com.etas.ascet.importer.a2a.util.ConverterContext;
import com.etas.ascet.importer.a2a.util.SwDataDefPropsConditionalUtil;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales;
import java.math.BigInteger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang.StringUtils;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.EList;

public class AutosarDataTypeConverter {
    public static final String AR_CAT_BOOLEAN = "BOOLEAN";
    public static final String AR_CAT_STRUCTURE = "STRUCTURE";
    public static final String AR_CAT_ARRAY = "ARRAY";
    public static final String AR_CAT_TYPE_REFERENCE = "TYPE_REFERENCE";
    public static final String AR_CAT_VALUE = "VALUE";
    private AutosarDataType type;
    private final ConverterContext ctx;

    public AutosarDataTypeConverter(AutosarDataType type, ConverterContext ctx) {
        this.type = type;
        this.ctx = ctx;
    }

    public String getTypeRef() {
        if (!this.isEnumType()) {
            return AutosarScoping.getARPath((GIdentifiable)this.type);
        }
        ImplementationDataType implType = this.getImplType();
        if (implType == null) {
            return AutosarScoping.getARPath((GIdentifiable)this.type);
        }
        return AutosarScoping.getARPath((GIdentifiable)implType);
    }

    public boolean isBooleanType() {
        if (this.type instanceof ApplicationDataType) {
            return AR_CAT_BOOLEAN.equals(this.type.getCategory());
        }
        if (this.type instanceof ImplementationDataType) {
            String arPath = AutosarScoping.getARPath((GIdentifiable)this.type);
            String ascetImplType = PlatformTypesUtil.getAscetImplType(arPath);
            return PlatformTypesUtil.isBooleanType(ascetImplType);
        }
        return false;
    }

    public boolean isNumericType() {
        String category = this.type.getCategory();
        if (this.type instanceof ImplementationDataType) {
            if ((AR_CAT_VALUE.equals(category) || AR_CAT_TYPE_REFERENCE.equals(category)) && !this.hasTexttable(this.type)) {
                return true;
            }
        } else if (AR_CAT_VALUE.equals(category)) {
            return !this.hasTexttable(this.type);
        }
        return false;
    }

    public boolean isEnumType() {
        String category = this.type.getCategory();
        if (this.type instanceof ImplementationDataType) {
            if ((AR_CAT_VALUE.equals(category) || AR_CAT_TYPE_REFERENCE.equals(category)) && this.hasTexttable(this.type)) {
                return true;
            }
        } else if (AR_CAT_VALUE.equals(category)) {
            return this.hasTexttable(this.type);
        }
        return false;
    }

    public boolean isRecordType() {
        return AR_CAT_STRUCTURE.equals(this.type.getCategory());
    }

    public boolean isArrayType() {
        return AR_CAT_ARRAY.equals(this.type.getCategory());
    }

    public String getArraySize() {
        if (this.type instanceof ApplicationArrayDataType) {
            ApplicationArrayElement arrayElem = ((ApplicationArrayDataType)this.type).getElement();
            return arrayElem.getMaxNumberOfElements().getMixedText();
        }
        ImplementationDataType implType = (ImplementationDataType)this.type;
        ImplementationDataTypeElement arrayElem = (ImplementationDataTypeElement)implType.getSubElements().get(0);
        return arrayElem.getArraySize().getMixedText();
    }

    public AutosarArrayTypeConverter getArrayBaseType() {
        if (this.type instanceof ApplicationArrayDataType) {
            ApplicationArrayElement arrayElem = ((ApplicationArrayDataType)this.type).getElement();
            return new AutosarArrayTypeConverter((AutosarDataType)arrayElem.getType(), this.ctx);
        }
        ImplementationDataType implType = (ImplementationDataType)this.type;
        ImplementationDataTypeElement arrayElem = (ImplementationDataTypeElement)implType.getSubElements().get(0);
        return new AutosarArrayTypeConverter(SwDataDefPropsConditionalUtil.getImplType(arrayElem), this.ctx);
    }

    public AbstractAmdType getAmdImplementationType() {
        if (this.type instanceof ImplementationDataType) {
            return this.getAmdTypeMappingForImpl(this.type, (ImplementationDataType)this.type);
        }
        for (String mappingName : this.ctx.getMappingNames()) {
            ImplementationDataType implType = this.getArImplType(this.type, mappingName);
            if (implType == null) continue;
            return this.getAmdTypeMappingForImpl(this.type, implType);
        }
        return AmdNumericType.createRealSingleType();
    }

    public String getEnumLabel(String valueStr) {
        Assert.isTrue((boolean)this.isEnumType());
        CompuMethod compuMethod = SwDataDefPropsConditionalUtil.getCompuMethodOfType(this.type);
        Compu compuInternalToPhys = compuMethod.getCompuInternalToPhys();
        if (compuInternalToPhys == null) {
            throw new IllegalStateException("connected compu method doesn't look like a TEXTTABLE");
        }
        CompuScales compuScales = (CompuScales)compuInternalToPhys.getCompuContent();
        return CompuScaleUtil.getEnumLabel((GCompuScales)compuScales, valueStr, this.ctx.getLogger());
    }

    public void convertToEnum() {
        if (!this.isEnumType()) {
            return;
        }
        CompuMethod compuMethod = SwDataDefPropsConditionalUtil.getCompuMethodOfType(this.type);
        Compu compuInternalToPhys = compuMethod.getCompuInternalToPhys();
        CompuScales compuScales = (CompuScales)compuInternalToPhys.getCompuContent();
        if (compuScales.getCompuScales().isEmpty()) {
            return;
        }
        this.ctx.getLogger().info("processing CompuMethod as candidate for an enumeration [" + AutosarScoping.getARPath((GIdentifiable)this.type) + "]");
        Map<Long, String> sortedCompuScales = this.getNumberToEnumMapping(this.type, compuScales);
        if (!this.ctx.getLogger().hasErrors()) {
            ImplementationDataType implType = this.getImplType();
            AmdEnum amdEnumType = implType == null ? new AmdEnum(this.type.getShortName(), this.type.getUuid(), AutosarScoping.getNameSpace((GIdentifiable)this.type)) : new AmdEnum(implType.getShortName(), implType.getUuid(), AutosarScoping.getNameSpace((GIdentifiable)implType));
            for (Long i : sortedCompuScales.keySet()) {
                amdEnumType.addEnumerator(BigInteger.valueOf(i), sortedCompuScales.get(i));
            }
            this.ctx.getAmdCollection().put(this.getTypeRef(), (AbstractAmdItem)amdEnumType);
        } else {
            this.ctx.getLogger().warn("type " + AutosarScoping.getARPath((GIdentifiable)this.type) + " was not converted");
        }
    }

    private boolean hasTexttable(AutosarDataType type) {
        CompuMethod compuMethod = SwDataDefPropsConditionalUtil.getCompuMethodOfType(type);
        if (compuMethod == null) {
            return false;
        }
        String cmCategory = compuMethod.getCategory();
        return cmCategory.equalsIgnoreCase("TEXTTABLE");
    }

    private boolean hasLinearOrRatFuncCompuMethod(AutosarDataType type) {
        String cmCategory;
        CompuMethod compuMethod = SwDataDefPropsConditionalUtil.getCompuMethodOfType(type);
        return compuMethod != null && ((cmCategory = compuMethod.getCategory()).equalsIgnoreCase("LINEAR") || cmCategory.equalsIgnoreCase("RATFUNC"));
    }

    private ImplementationDataType getArImplType(AutosarDataType type, String aswcContext) {
        if (type instanceof ApplicationDataType) {
            return this.ctx.getMappingTable().getImplType(aswcContext, (ApplicationDataType)type);
        }
        return (ImplementationDataType)type;
    }

    private AbstractAmdType getAmdTypeMappingForImpl(AutosarDataType type, ImplementationDataType implType) {
        ImplementationDataType resolvedImplType = this.resolveIfTypeReference(implType);
        String arPath = AutosarScoping.getARPath((GIdentifiable)resolvedImplType);
        String ascetImplType = PlatformTypesUtil.getAscetImplType(arPath);
        if (ascetImplType == null) {
            this.ctx.getLogger().reportNotPlatfromType(arPath);
            return this.getAmdTypeFromApplicationType(type);
        }
        if (PlatformTypesUtil.isBooleanType(ascetImplType)) {
            return new AmdLogicType();
        }
        if (PlatformTypesUtil.isContinousType(ascetImplType)) {
            return this.getAmdTypeFromPlatformContinousType(type, ascetImplType);
        }
        if (PlatformTypesUtil.isDiscreteType(ascetImplType)) {
            return this.getAmdTypeFromPlatformDiscreteType(type, ascetImplType);
        }
        throw new IllegalStateException("malformed type definition found " + AutosarScoping.getARPath((GIdentifiable)type));
    }

    private AbstractAmdType getAmdTypeFromPlatformDiscreteType(AutosarDataType type, String ascetImplType) {
        if (this.hasTexttable(type)) {
            return new AmdEnumType(AutosarScoping.getARPath((GIdentifiable)type));
        }
        TypeLimit typeLimit = SwDataDefPropsConditionalUtil.getLimit(type, this.ctx.getLogger());
        if (this.hasLinearOrRatFuncCompuMethod(type)) {
            String formula = SwDataDefPropsConditionalUtil.getCompuMethodOfType(type).getShortName();
            return AmdNumericType.createFixPointType((String)ascetImplType, (String)typeLimit.getLower(), (String)typeLimit.getUpper(), (FormulaComplexType)this.ctx.getAmdFormula(formula));
        }
        try {
            return AmdNumericType.createDiscreteType((String)ascetImplType, (String)typeLimit.getLower(), (String)typeLimit.getUpper());
        }
        catch (NumberFormatException ex) {
            this.ctx.getLogger().reportInvalidLimitValue(AutosarScoping.getARPath((GIdentifiable)type), typeLimit.getLower());
            this.ctx.getLogger().info(ex.getMessage());
            return AmdNumericType.createSDiscreteType((String)ascetImplType, (String)"0", (String)typeLimit.getUpper());
        }
    }

    private AbstractAmdType getAmdTypeFromPlatformContinousType(AutosarDataType type, String ascetImplType) {
        TypeLimit typeLimit = SwDataDefPropsConditionalUtil.getLimit(type, this.ctx.getLogger());
        if (typeLimit != null) {
            return AmdNumericType.createRealType((String)ascetImplType, (String)typeLimit.getLower(), (String)typeLimit.getUpper());
        }
        return AmdNumericType.createRealSingleType();
    }

    private AbstractAmdType getAmdTypeFromApplicationType(AutosarDataType type) {
        if (this.hasTexttable(type)) {
            return new AmdEnumType(AutosarScoping.getARPath((GIdentifiable)type));
        }
        TypeLimit typeLimit = SwDataDefPropsConditionalUtil.getLimit(type, this.ctx.getLogger());
        if (typeLimit != null) {
            return AmdNumericType.createRealSingleType((String)typeLimit.getLower(), (String)typeLimit.getUpper());
        }
        return AmdNumericType.createRealSingleType();
    }

    private ImplementationDataType resolveIfTypeReference(ImplementationDataType implType) {
        if (implType.getCategory().equals(AR_CAT_TYPE_REFERENCE)) {
            try {
                return SwDataDefPropsConditionalUtil.getImplType((AutosarDataType)implType);
            }
            catch (IllegalStateException e) {
                this.ctx.getLogger().reportInvalidTypereference(AutosarScoping.getARPath((GIdentifiable)implType));
                throw new IllegalStateException("malformed type reference", e);
            }
        }
        return implType;
    }

    private ImplementationDataType getImplType() {
        Iterator<String> iterator = this.ctx.getMappingNames().iterator();
        if (iterator.hasNext()) {
            String mappingName = iterator.next();
            return this.getArImplType(this.type, mappingName);
        }
        return null;
    }

    private Map<Long, String> getNumberToEnumMapping(AutosarDataType arType, CompuScales compuScales) {
        HashMap<Long, String> sortedCompuScales = new HashMap<Long, String>();
        Logger logger = this.ctx.getLogger();
        for (CompuScale cs : compuScales.getCompuScales()) {
            long intVal = CompuScaleUtil.getEnumValue((GCompuScale)cs, logger);
            String enumLabel = CompuScaleUtil.getEnumLabel((GCompuScale)cs);
            if (StringUtils.isEmpty((String)enumLabel)) {
                String intValAsString = Long.toString(intVal);
                logger.reportInvalidEnumLabel(arType.getShortName(), intValAsString);
                sortedCompuScales.put(intVal, "_" + intValAsString);
                continue;
            }
            sortedCompuScales.put(intVal, enumLabel);
        }
        return sortedCompuScales;
    }

    public List<ApplicationRecordElement> getRecordElements() {
        Assert.isTrue((boolean)this.isRecordType());
        if (this.type instanceof ApplicationRecordDataType) {
            EList recElements = ((ApplicationRecordDataType)this.type).getElements();
            return recElements;
        }
        return Collections.emptyList();
    }
}

