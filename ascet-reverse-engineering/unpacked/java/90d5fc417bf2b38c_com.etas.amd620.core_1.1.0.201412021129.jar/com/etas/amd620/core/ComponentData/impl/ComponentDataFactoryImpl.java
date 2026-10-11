/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 *  org.eclipse.emf.ecore.util.Diagnostician
 *  org.eclipse.emf.ecore.xml.type.XMLTypeFactory
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 */
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ArrayT;
import com.etas.amd620.core.ComponentData.ColorT;
import com.etas.amd620.core.ComponentData.ComplexDataT;
import com.etas.amd620.core.ComponentData.ComponentDataFactory;
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
import com.etas.amd620.core.ComponentData.impl.ArrayTImpl;
import com.etas.amd620.core.ComponentData.impl.ColorTImpl;
import com.etas.amd620.core.ComponentData.impl.ComplexDataTImpl;
import com.etas.amd620.core.ComponentData.impl.ComponentDataTypeImpl;
import com.etas.amd620.core.ComponentData.impl.DataEntryTImpl;
import com.etas.amd620.core.ComponentData.impl.DataSetTImpl;
import com.etas.amd620.core.ComponentData.impl.DataVariantTImpl;
import com.etas.amd620.core.ComponentData.impl.DependencyTImpl;
import com.etas.amd620.core.ComponentData.impl.DimensionalDataTImpl;
import com.etas.amd620.core.ComponentData.impl.DimensionalTypeTImpl;
import com.etas.amd620.core.ComponentData.impl.DistributionInfoTImpl;
import com.etas.amd620.core.ComponentData.impl.DocumentRootImpl;
import com.etas.amd620.core.ComponentData.impl.EnumerationDataTImpl;
import com.etas.amd620.core.ComponentData.impl.FileReferenceTImpl;
import com.etas.amd620.core.ComponentData.impl.FormattedTextTImpl;
import com.etas.amd620.core.ComponentData.impl.GenericDataTImpl;
import com.etas.amd620.core.ComponentData.impl.IconTImpl;
import com.etas.amd620.core.ComponentData.impl.IntervalTImpl;
import com.etas.amd620.core.ComponentData.impl.ItemRefTImpl;
import com.etas.amd620.core.ComponentData.impl.LocalTypeImpl;
import com.etas.amd620.core.ComponentData.impl.LogicDataTImpl;
import com.etas.amd620.core.ComponentData.impl.MatrixTImpl;
import com.etas.amd620.core.ComponentData.impl.NoteTypeImpl;
import com.etas.amd620.core.ComponentData.impl.NotesTImpl;
import com.etas.amd620.core.ComponentData.impl.NumericDataTImpl;
import com.etas.amd620.core.ComponentData.impl.OneDTypeImpl;
import com.etas.amd620.core.ComponentData.impl.OptionTImpl;
import com.etas.amd620.core.ComponentData.impl.ParameterTypeImpl;
import com.etas.amd620.core.ComponentData.impl.PointTImpl;
import com.etas.amd620.core.ComponentData.impl.ReferenceDataTImpl;
import com.etas.amd620.core.ComponentData.impl.ScalarTypeTImpl;
import com.etas.amd620.core.ComponentData.impl.SizeTImpl;
import com.etas.amd620.core.ComponentData.impl.TimeStampTImpl;
import com.etas.amd620.core.ComponentData.impl.TwoDTypeImpl;
import com.etas.amd620.core.ComponentData.impl.ViewTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.util.Diagnostician;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

public class ComponentDataFactoryImpl
extends EFactoryImpl
implements ComponentDataFactory {
    public static ComponentDataFactory init() {
        try {
            ComponentDataFactory theComponentDataFactory = (ComponentDataFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.etas.com/ascet/amd/620/component_data");
            if (theComponentDataFactory != null) {
                return theComponentDataFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ComponentDataFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createArrayT();
            }
            case 1: {
                return this.createColorT();
            }
            case 2: {
                return this.createComplexDataT();
            }
            case 3: {
                return this.createComponentDataType();
            }
            case 4: {
                return this.createDataEntryT();
            }
            case 5: {
                return this.createDataSetT();
            }
            case 6: {
                return this.createDataVariantT();
            }
            case 7: {
                return this.createDependencyT();
            }
            case 8: {
                return this.createDimensionalDataT();
            }
            case 9: {
                return this.createDimensionalTypeT();
            }
            case 10: {
                return this.createDistributionInfoT();
            }
            case 11: {
                return this.createDocumentRoot();
            }
            case 12: {
                return this.createEnumerationDataT();
            }
            case 13: {
                return this.createFileReferenceT();
            }
            case 14: {
                return this.createFormattedTextT();
            }
            case 15: {
                return this.createGenericDataT();
            }
            case 16: {
                return this.createIconT();
            }
            case 17: {
                return this.createIntervalT();
            }
            case 18: {
                return this.createItemRefT();
            }
            case 19: {
                return this.createLocalType();
            }
            case 20: {
                return this.createLogicDataT();
            }
            case 21: {
                return this.createMatrixT();
            }
            case 22: {
                return this.createNotesT();
            }
            case 23: {
                return this.createNoteType();
            }
            case 24: {
                return this.createNumericDataT();
            }
            case 25: {
                return this.createOneDType();
            }
            case 26: {
                return this.createOptionT();
            }
            case 27: {
                return this.createParameterType();
            }
            case 28: {
                return this.createPointT();
            }
            case 29: {
                return this.createReferenceDataT();
            }
            case 30: {
                return this.createScalarTypeT();
            }
            case 31: {
                return this.createSizeT();
            }
            case 32: {
                return this.createTimeStampT();
            }
            case 33: {
                return this.createTwoDType();
            }
            case 34: {
                return this.createViewType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 35: {
                return this.createCurveKindTFromString(eDataType, initialValue);
            }
            case 36: {
                return this.createExtrapolationTypeFromString(eDataType, initialValue);
            }
            case 37: {
                return this.createTypeTypeFromString(eDataType, initialValue);
            }
            case 38: {
                return this.createCurveKindTObjectFromString(eDataType, initialValue);
            }
            case 39: {
                return this.createExtrapolationTypeObjectFromString(eDataType, initialValue);
            }
            case 40: {
                return this.createNumberOrFractionFromString(eDataType, initialValue);
            }
            case 41: {
                return this.createNumberOrFractionMember1FromString(eDataType, initialValue);
            }
            case 42: {
                return this.createNzqrFromString(eDataType, initialValue);
            }
            case 43: {
                return this.createNzqrMember2FromString(eDataType, initialValue);
            }
            case 44: {
                return this.createOIDFromString(eDataType, initialValue);
            }
            case 45: {
                return this.createTypeTypeObjectFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 35: {
                return this.convertCurveKindTToString(eDataType, instanceValue);
            }
            case 36: {
                return this.convertExtrapolationTypeToString(eDataType, instanceValue);
            }
            case 37: {
                return this.convertTypeTypeToString(eDataType, instanceValue);
            }
            case 38: {
                return this.convertCurveKindTObjectToString(eDataType, instanceValue);
            }
            case 39: {
                return this.convertExtrapolationTypeObjectToString(eDataType, instanceValue);
            }
            case 40: {
                return this.convertNumberOrFractionToString(eDataType, instanceValue);
            }
            case 41: {
                return this.convertNumberOrFractionMember1ToString(eDataType, instanceValue);
            }
            case 42: {
                return this.convertNzqrToString(eDataType, instanceValue);
            }
            case 43: {
                return this.convertNzqrMember2ToString(eDataType, instanceValue);
            }
            case 44: {
                return this.convertOIDToString(eDataType, instanceValue);
            }
            case 45: {
                return this.convertTypeTypeObjectToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public ArrayT createArrayT() {
        ArrayTImpl arrayT = new ArrayTImpl();
        return arrayT;
    }

    @Override
    public ColorT createColorT() {
        ColorTImpl colorT = new ColorTImpl();
        return colorT;
    }

    @Override
    public ComplexDataT createComplexDataT() {
        ComplexDataTImpl complexDataT = new ComplexDataTImpl();
        return complexDataT;
    }

    @Override
    public ComponentDataType createComponentDataType() {
        ComponentDataTypeImpl componentDataType = new ComponentDataTypeImpl();
        return componentDataType;
    }

    @Override
    public DataEntryT createDataEntryT() {
        DataEntryTImpl dataEntryT = new DataEntryTImpl();
        return dataEntryT;
    }

    @Override
    public DataSetT createDataSetT() {
        DataSetTImpl dataSetT = new DataSetTImpl();
        return dataSetT;
    }

    @Override
    public DataVariantT createDataVariantT() {
        DataVariantTImpl dataVariantT = new DataVariantTImpl();
        return dataVariantT;
    }

    @Override
    public DependencyT createDependencyT() {
        DependencyTImpl dependencyT = new DependencyTImpl();
        return dependencyT;
    }

    @Override
    public DimensionalDataT createDimensionalDataT() {
        DimensionalDataTImpl dimensionalDataT = new DimensionalDataTImpl();
        return dimensionalDataT;
    }

    @Override
    public DimensionalTypeT createDimensionalTypeT() {
        DimensionalTypeTImpl dimensionalTypeT = new DimensionalTypeTImpl();
        return dimensionalTypeT;
    }

    @Override
    public DistributionInfoT createDistributionInfoT() {
        DistributionInfoTImpl distributionInfoT = new DistributionInfoTImpl();
        return distributionInfoT;
    }

    @Override
    public DocumentRoot createDocumentRoot() {
        DocumentRootImpl documentRoot = new DocumentRootImpl();
        return documentRoot;
    }

    @Override
    public EnumerationDataT createEnumerationDataT() {
        EnumerationDataTImpl enumerationDataT = new EnumerationDataTImpl();
        return enumerationDataT;
    }

    @Override
    public FileReferenceT createFileReferenceT() {
        FileReferenceTImpl fileReferenceT = new FileReferenceTImpl();
        return fileReferenceT;
    }

    @Override
    public FormattedTextT createFormattedTextT() {
        FormattedTextTImpl formattedTextT = new FormattedTextTImpl();
        return formattedTextT;
    }

    @Override
    public GenericDataT createGenericDataT() {
        GenericDataTImpl genericDataT = new GenericDataTImpl();
        return genericDataT;
    }

    @Override
    public IconT createIconT() {
        IconTImpl iconT = new IconTImpl();
        return iconT;
    }

    @Override
    public IntervalT createIntervalT() {
        IntervalTImpl intervalT = new IntervalTImpl();
        return intervalT;
    }

    @Override
    public ItemRefT createItemRefT() {
        ItemRefTImpl itemRefT = new ItemRefTImpl();
        return itemRefT;
    }

    @Override
    public LocalType createLocalType() {
        LocalTypeImpl localType = new LocalTypeImpl();
        return localType;
    }

    @Override
    public LogicDataT createLogicDataT() {
        LogicDataTImpl logicDataT = new LogicDataTImpl();
        return logicDataT;
    }

    @Override
    public MatrixT createMatrixT() {
        MatrixTImpl matrixT = new MatrixTImpl();
        return matrixT;
    }

    @Override
    public NotesT createNotesT() {
        NotesTImpl notesT = new NotesTImpl();
        return notesT;
    }

    @Override
    public NoteType createNoteType() {
        NoteTypeImpl noteType = new NoteTypeImpl();
        return noteType;
    }

    @Override
    public NumericDataT createNumericDataT() {
        NumericDataTImpl numericDataT = new NumericDataTImpl();
        return numericDataT;
    }

    @Override
    public OneDType createOneDType() {
        OneDTypeImpl oneDType = new OneDTypeImpl();
        return oneDType;
    }

    @Override
    public OptionT createOptionT() {
        OptionTImpl optionT = new OptionTImpl();
        return optionT;
    }

    @Override
    public ParameterType createParameterType() {
        ParameterTypeImpl parameterType = new ParameterTypeImpl();
        return parameterType;
    }

    @Override
    public PointT createPointT() {
        PointTImpl pointT = new PointTImpl();
        return pointT;
    }

    @Override
    public ReferenceDataT createReferenceDataT() {
        ReferenceDataTImpl referenceDataT = new ReferenceDataTImpl();
        return referenceDataT;
    }

    @Override
    public ScalarTypeT createScalarTypeT() {
        ScalarTypeTImpl scalarTypeT = new ScalarTypeTImpl();
        return scalarTypeT;
    }

    @Override
    public SizeT createSizeT() {
        SizeTImpl sizeT = new SizeTImpl();
        return sizeT;
    }

    @Override
    public TimeStampT createTimeStampT() {
        TimeStampTImpl timeStampT = new TimeStampTImpl();
        return timeStampT;
    }

    @Override
    public TwoDType createTwoDType() {
        TwoDTypeImpl twoDType = new TwoDTypeImpl();
        return twoDType;
    }

    @Override
    public ViewType createViewType() {
        ViewTypeImpl viewType = new ViewTypeImpl();
        return viewType;
    }

    public CurveKindT createCurveKindTFromString(EDataType eDataType, String initialValue) {
        CurveKindT result = CurveKindT.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCurveKindTToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ExtrapolationType createExtrapolationTypeFromString(EDataType eDataType, String initialValue) {
        ExtrapolationType result = ExtrapolationType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertExtrapolationTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TypeType createTypeTypeFromString(EDataType eDataType, String initialValue) {
        TypeType result = TypeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTypeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CurveKindT createCurveKindTObjectFromString(EDataType eDataType, String initialValue) {
        return this.createCurveKindTFromString((EDataType)ComponentDataPackage.Literals.CURVE_KIND_T, initialValue);
    }

    public String convertCurveKindTObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertCurveKindTToString((EDataType)ComponentDataPackage.Literals.CURVE_KIND_T, instanceValue);
    }

    public ExtrapolationType createExtrapolationTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createExtrapolationTypeFromString((EDataType)ComponentDataPackage.Literals.EXTRAPOLATION_TYPE, initialValue);
    }

    public String convertExtrapolationTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertExtrapolationTypeToString((EDataType)ComponentDataPackage.Literals.EXTRAPOLATION_TYPE, instanceValue);
    }

    public Object createNumberOrFractionFromString(EDataType eDataType, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        Object result = null;
        RuntimeException exception = null;
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.DOUBLE, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = this.createNumberOrFractionMember1FromString(ComponentDataPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        if (result != null || exception == null) {
            return result;
        }
        throw exception;
    }

    public String convertNumberOrFractionToString(EDataType eDataType, Object instanceValue) {
        String value;
        if (instanceValue == null) {
            return null;
        }
        if (XMLTypePackage.Literals.DOUBLE.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.DOUBLE, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (ComponentDataPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(instanceValue)) {
            try {
                value = this.convertNumberOrFractionMember1ToString(ComponentDataPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        throw new IllegalArgumentException("Invalid value: '" + instanceValue + "' for datatype :" + eDataType.getName());
    }

    public String createNumberOrFractionMember1FromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertNumberOrFractionMember1ToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public Object createNzqrFromString(EDataType eDataType, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        Object result = null;
        RuntimeException exception = null;
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.DOUBLE, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.INT, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = this.createNzqrMember2FromString(ComponentDataPackage.Literals.NZQR_MEMBER2, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        if (result != null || exception == null) {
            return result;
        }
        throw exception;
    }

    public String convertNzqrToString(EDataType eDataType, Object instanceValue) {
        String value;
        if (instanceValue == null) {
            return null;
        }
        if (XMLTypePackage.Literals.DOUBLE.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.DOUBLE, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (XMLTypePackage.Literals.INT.isInstance(instanceValue)) {
            try {
                value = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.INT, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        if (ComponentDataPackage.Literals.NZQR_MEMBER2.isInstance(instanceValue)) {
            try {
                value = this.convertNzqrMember2ToString(ComponentDataPackage.Literals.NZQR_MEMBER2, instanceValue);
                if (value != null) {
                    return value;
                }
            }
            catch (Exception exception) {}
        }
        throw new IllegalArgumentException("Invalid value: '" + instanceValue + "' for datatype :" + eDataType.getName());
    }

    public String createNzqrMember2FromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertNzqrMember2ToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public String createOIDFromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertOIDToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public TypeType createTypeTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createTypeTypeFromString((EDataType)ComponentDataPackage.Literals.TYPE_TYPE, initialValue);
    }

    public String convertTypeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeTypeToString((EDataType)ComponentDataPackage.Literals.TYPE_TYPE, instanceValue);
    }

    @Override
    public ComponentDataPackage getComponentDataPackage() {
        return (ComponentDataPackage)this.getEPackage();
    }

    @Deprecated
    public static ComponentDataPackage getPackage() {
        return ComponentDataPackage.eINSTANCE;
    }
}

