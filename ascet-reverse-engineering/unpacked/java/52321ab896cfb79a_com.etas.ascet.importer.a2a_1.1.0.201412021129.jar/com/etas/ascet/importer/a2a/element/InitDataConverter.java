/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar40.commonstructure.constants.ArrayValueSpecification
 *  autosar40.commonstructure.constants.ConstantReference
 *  autosar40.commonstructure.constants.NumericalValueSpecification
 *  autosar40.commonstructure.constants.RecordValueSpecification
 *  autosar40.commonstructure.constants.ValueSpecification
 *  autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement
 *  com.etas.amd.core.IArrayElementAttributes
 *  com.etas.amd.core.init.AbstractAmdInitValue
 *  com.etas.amd.core.init.AmdArrayInitValue
 *  com.etas.amd.core.init.AmdCompositeInitValue
 *  com.etas.amd.core.init.AmdEnumInitValue
 *  com.etas.amd.core.init.AmdLogicInitValue
 *  com.etas.amd.core.init.AmdNumericInitValue
 *  com.etas.amd.core.util.AbstractAmdComponent
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.ascet.importer.a2a.element;

import autosar40.commonstructure.constants.ArrayValueSpecification;
import autosar40.commonstructure.constants.ConstantReference;
import autosar40.commonstructure.constants.NumericalValueSpecification;
import autosar40.commonstructure.constants.RecordValueSpecification;
import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import com.etas.amd.core.IArrayElementAttributes;
import com.etas.amd.core.init.AbstractAmdInitValue;
import com.etas.amd.core.init.AmdArrayInitValue;
import com.etas.amd.core.init.AmdCompositeInitValue;
import com.etas.amd.core.init.AmdEnumInitValue;
import com.etas.amd.core.init.AmdLogicInitValue;
import com.etas.amd.core.init.AmdNumericInitValue;
import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.ascet.importer.a2a.element.CompositeElementAttributesImpl;
import com.etas.ascet.importer.a2a.element.ElementAttributesImpl;
import com.etas.ascet.importer.a2a.util.ConverterContext;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.EList;

public class InitDataConverter {
    public static AbstractAmdInitValue getInitValue(ElementAttributesImpl element, ValueSpecification initValue, String dataSetName, ConverterContext ctx) {
        if (element.isNumericType()) {
            return new AmdNumericInitValue(InitDataConverter.getNumericValue(initValue));
        }
        if (element.isBooleanType()) {
            try {
                return new AmdLogicInitValue(InitDataConverter.getNumericValue(initValue));
            }
            catch (Exception ex) {
                throw new IllegalStateException(ex.getMessage());
            }
        }
        if (element.isEnumType()) {
            String enumLabel = element.getEnumLabel(InitDataConverter.getNumericValue(initValue));
            if (enumLabel != null && !enumLabel.isEmpty()) {
                return new AmdEnumInitValue(enumLabel);
            }
            throw new IllegalStateException("cannot convert " + InitDataConverter.getNumericValue(initValue) + " to enumeration " + element.getTypeRef());
        }
        if (element.isArrayType()) {
            Assert.isTrue((boolean)(initValue instanceof ArrayValueSpecification));
            ArrayValueSpecification arValue = (ArrayValueSpecification)initValue;
            EList elements = arValue.getElements();
            AmdArrayInitValue arrayValue = new AmdArrayInitValue(elements.size());
            IArrayElementAttributes arrayElement = element.getArrayElement();
            try {
                for (ValueSpecification valueSpecification : elements) {
                    arrayValue.addInit(InitDataConverter.convertInitValue(arrayElement, valueSpecification));
                }
                return arrayValue;
            }
            catch (Exception e) {
                throw new IllegalStateException("invalid init value for an array " + e.getMessage());
            }
        }
        if (element.isRecordType()) {
            Assert.isTrue((boolean)(initValue instanceof RecordValueSpecification));
            RecordValueSpecification recValue = (RecordValueSpecification)initValue;
            AbstractAmdComponent amdRecord = (AbstractAmdComponent)ctx.getAmdCollection().get(element.getTypeRef());
            int i = 0;
            EList fields = recValue.getFields();
            for (ApplicationRecordElement recElem : element.getRecordElements()) {
                CompositeElementAttributesImpl compElement = new CompositeElementAttributesImpl(recElem, ctx);
                AbstractAmdInitValue amdInitValue = InitDataConverter.getInitValue(compElement, (ValueSpecification)fields.get(i), dataSetName, ctx);
                if (amdInitValue != null) {
                    amdInitValue.addDataSet(amdRecord, dataSetName, recElem.getShortName());
                }
                ++i;
            }
            AmdCompositeInitValue recInit = new AmdCompositeInitValue();
            return recInit;
        }
        return null;
    }

    private static AbstractAmdInitValue convertInitValue(IArrayElementAttributes elem, ValueSpecification initValue) {
        try {
            if (elem.isBooleanType()) {
                return new AmdLogicInitValue(InitDataConverter.getNumericValue(initValue));
            }
            if (elem.isNumericType()) {
                return new AmdNumericInitValue(InitDataConverter.getNumericValue(initValue));
            }
        }
        catch (Exception ex) {
            throw new IllegalStateException(ex.getMessage());
        }
        return null;
    }

    private static String getNumericValue(ValueSpecification initValue) {
        ConstantReference constSpec;
        ValueSpecification valueSpec;
        if (initValue instanceof NumericalValueSpecification) {
            NumericalValueSpecification numVal = (NumericalValueSpecification)initValue;
            return numVal.getValue().getMixedText();
        }
        if (initValue instanceof ConstantReference && (valueSpec = (constSpec = (ConstantReference)initValue).getConstant().getValueSpec()) instanceof NumericalValueSpecification) {
            NumericalValueSpecification numValue = (NumericalValueSpecification)valueSpec;
            return numValue.getValue().getMixedText();
        }
        throw new IllegalStateException("cannot retrieve init value of " + initValue.getShortLabel());
    }
}

