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
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.ColorT;
import com.etas.amd620.core.ComponentImplementation.ComplexImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComplexReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationFactory;
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
import com.etas.amd620.core.ComponentImplementation.impl.ColorTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ComplexImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ComplexReferenceImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ComponentImplementationTypeImpl;
import com.etas.amd620.core.ComponentImplementation.impl.DimensionalImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.DimensionalReferenceImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.DistributionImplementationTypeImpl;
import com.etas.amd620.core.ComponentImplementation.impl.DocumentRootImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ElementImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ElementImplementationTypeImpl;
import com.etas.amd620.core.ComponentImplementation.impl.FileReferenceTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.FormattedTextTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.GenericDataTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.IconTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ImplementationCastImplementationTypeImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ImplementationEntryTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ImplementationSetTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ImplementationSetTypeImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ImplementationVariantTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.IntervalTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ItemRefTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.LogicImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.MethodImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.NoteTypeImpl;
import com.etas.amd620.core.ComponentImplementation.impl.NotesTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.NumericImplementationBaseTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.NumericImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.OneDImplementationTypeImpl;
import com.etas.amd620.core.ComponentImplementation.impl.OptionTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.PointTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.PrimitiveImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ResourceImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ResourceImplementationTypeImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ScalarImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.SizeTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.TemplateImplementationTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.TimeStampTImpl;
import com.etas.amd620.core.ComponentImplementation.impl.TwoDImplementationTypeImpl;
import com.etas.amd620.core.ComponentImplementation.impl.ViewTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.util.Diagnostician;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

public class ComponentImplementationFactoryImpl
extends EFactoryImpl
implements ComponentImplementationFactory {
    public static ComponentImplementationFactory init() {
        try {
            ComponentImplementationFactory theComponentImplementationFactory = (ComponentImplementationFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.etas.com/ascet/amd/620/component_implementation");
            if (theComponentImplementationFactory != null) {
                return theComponentImplementationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ComponentImplementationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createColorT();
            }
            case 1: {
                return this.createComplexImplementationT();
            }
            case 2: {
                return this.createComplexReferenceImplementationT();
            }
            case 3: {
                return this.createComponentImplementationType();
            }
            case 4: {
                return this.createDimensionalImplementationT();
            }
            case 5: {
                return this.createDimensionalReferenceImplementationT();
            }
            case 6: {
                return this.createDistributionImplementationType();
            }
            case 7: {
                return this.createDocumentRoot();
            }
            case 8: {
                return this.createElementImplementationT();
            }
            case 9: {
                return this.createElementImplementationType();
            }
            case 10: {
                return this.createFileReferenceT();
            }
            case 11: {
                return this.createFormattedTextT();
            }
            case 12: {
                return this.createGenericDataT();
            }
            case 13: {
                return this.createIconT();
            }
            case 14: {
                return this.createImplementationCastImplementationType();
            }
            case 15: {
                return this.createImplementationEntryT();
            }
            case 16: {
                return this.createImplementationSetT();
            }
            case 17: {
                return this.createImplementationSetType();
            }
            case 18: {
                return this.createImplementationVariantT();
            }
            case 19: {
                return this.createIntervalT();
            }
            case 20: {
                return this.createItemRefT();
            }
            case 21: {
                return this.createLogicImplementationT();
            }
            case 22: {
                return this.createMethodImplementationT();
            }
            case 23: {
                return this.createNotesT();
            }
            case 24: {
                return this.createNoteType();
            }
            case 25: {
                return this.createNumericImplementationBaseT();
            }
            case 26: {
                return this.createNumericImplementationT();
            }
            case 27: {
                return this.createOneDImplementationType();
            }
            case 28: {
                return this.createOptionT();
            }
            case 29: {
                return this.createPointT();
            }
            case 30: {
                return this.createPrimitiveImplementationT();
            }
            case 31: {
                return this.createResourceImplementationT();
            }
            case 32: {
                return this.createResourceImplementationType();
            }
            case 33: {
                return this.createScalarImplementationT();
            }
            case 34: {
                return this.createSizeT();
            }
            case 35: {
                return this.createTemplateImplementationT();
            }
            case 36: {
                return this.createTimeStampT();
            }
            case 37: {
                return this.createTwoDImplementationType();
            }
            case 38: {
                return this.createViewType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 39: {
                return this.createCacheLockingTypeFromString(eDataType, initialValue);
            }
            case 40: {
                return this.createLimitOverflowTypeFromString(eDataType, initialValue);
            }
            case 41: {
                return this.createMasterTypeFromString(eDataType, initialValue);
            }
            case 42: {
                return this.createTypeTypeFromString(eDataType, initialValue);
            }
            case 43: {
                return this.createCacheLockingTypeObjectFromString(eDataType, initialValue);
            }
            case 44: {
                return this.createLimitOverflowTypeObjectFromString(eDataType, initialValue);
            }
            case 45: {
                return this.createMasterTypeObjectFromString(eDataType, initialValue);
            }
            case 46: {
                return this.createNumberOrFractionFromString(eDataType, initialValue);
            }
            case 47: {
                return this.createNumberOrFractionMember1FromString(eDataType, initialValue);
            }
            case 48: {
                return this.createNzqrFromString(eDataType, initialValue);
            }
            case 49: {
                return this.createNzqrMember2FromString(eDataType, initialValue);
            }
            case 50: {
                return this.createOIDFromString(eDataType, initialValue);
            }
            case 51: {
                return this.createTypeTypeObjectFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 39: {
                return this.convertCacheLockingTypeToString(eDataType, instanceValue);
            }
            case 40: {
                return this.convertLimitOverflowTypeToString(eDataType, instanceValue);
            }
            case 41: {
                return this.convertMasterTypeToString(eDataType, instanceValue);
            }
            case 42: {
                return this.convertTypeTypeToString(eDataType, instanceValue);
            }
            case 43: {
                return this.convertCacheLockingTypeObjectToString(eDataType, instanceValue);
            }
            case 44: {
                return this.convertLimitOverflowTypeObjectToString(eDataType, instanceValue);
            }
            case 45: {
                return this.convertMasterTypeObjectToString(eDataType, instanceValue);
            }
            case 46: {
                return this.convertNumberOrFractionToString(eDataType, instanceValue);
            }
            case 47: {
                return this.convertNumberOrFractionMember1ToString(eDataType, instanceValue);
            }
            case 48: {
                return this.convertNzqrToString(eDataType, instanceValue);
            }
            case 49: {
                return this.convertNzqrMember2ToString(eDataType, instanceValue);
            }
            case 50: {
                return this.convertOIDToString(eDataType, instanceValue);
            }
            case 51: {
                return this.convertTypeTypeObjectToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public ColorT createColorT() {
        ColorTImpl colorT = new ColorTImpl();
        return colorT;
    }

    @Override
    public ComplexImplementationT createComplexImplementationT() {
        ComplexImplementationTImpl complexImplementationT = new ComplexImplementationTImpl();
        return complexImplementationT;
    }

    @Override
    public ComplexReferenceImplementationT createComplexReferenceImplementationT() {
        ComplexReferenceImplementationTImpl complexReferenceImplementationT = new ComplexReferenceImplementationTImpl();
        return complexReferenceImplementationT;
    }

    @Override
    public ComponentImplementationType createComponentImplementationType() {
        ComponentImplementationTypeImpl componentImplementationType = new ComponentImplementationTypeImpl();
        return componentImplementationType;
    }

    @Override
    public DimensionalImplementationT createDimensionalImplementationT() {
        DimensionalImplementationTImpl dimensionalImplementationT = new DimensionalImplementationTImpl();
        return dimensionalImplementationT;
    }

    @Override
    public DimensionalReferenceImplementationT createDimensionalReferenceImplementationT() {
        DimensionalReferenceImplementationTImpl dimensionalReferenceImplementationT = new DimensionalReferenceImplementationTImpl();
        return dimensionalReferenceImplementationT;
    }

    @Override
    public DistributionImplementationType createDistributionImplementationType() {
        DistributionImplementationTypeImpl distributionImplementationType = new DistributionImplementationTypeImpl();
        return distributionImplementationType;
    }

    @Override
    public DocumentRoot createDocumentRoot() {
        DocumentRootImpl documentRoot = new DocumentRootImpl();
        return documentRoot;
    }

    @Override
    public ElementImplementationT createElementImplementationT() {
        ElementImplementationTImpl elementImplementationT = new ElementImplementationTImpl();
        return elementImplementationT;
    }

    @Override
    public ElementImplementationType createElementImplementationType() {
        ElementImplementationTypeImpl elementImplementationType = new ElementImplementationTypeImpl();
        return elementImplementationType;
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
    public ImplementationCastImplementationType createImplementationCastImplementationType() {
        ImplementationCastImplementationTypeImpl implementationCastImplementationType = new ImplementationCastImplementationTypeImpl();
        return implementationCastImplementationType;
    }

    @Override
    public ImplementationEntryT createImplementationEntryT() {
        ImplementationEntryTImpl implementationEntryT = new ImplementationEntryTImpl();
        return implementationEntryT;
    }

    @Override
    public ImplementationSetT createImplementationSetT() {
        ImplementationSetTImpl implementationSetT = new ImplementationSetTImpl();
        return implementationSetT;
    }

    @Override
    public ImplementationSetType createImplementationSetType() {
        ImplementationSetTypeImpl implementationSetType = new ImplementationSetTypeImpl();
        return implementationSetType;
    }

    @Override
    public ImplementationVariantT createImplementationVariantT() {
        ImplementationVariantTImpl implementationVariantT = new ImplementationVariantTImpl();
        return implementationVariantT;
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
    public LogicImplementationT createLogicImplementationT() {
        LogicImplementationTImpl logicImplementationT = new LogicImplementationTImpl();
        return logicImplementationT;
    }

    @Override
    public MethodImplementationT createMethodImplementationT() {
        MethodImplementationTImpl methodImplementationT = new MethodImplementationTImpl();
        return methodImplementationT;
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
    public NumericImplementationBaseT createNumericImplementationBaseT() {
        NumericImplementationBaseTImpl numericImplementationBaseT = new NumericImplementationBaseTImpl();
        return numericImplementationBaseT;
    }

    @Override
    public NumericImplementationT createNumericImplementationT() {
        NumericImplementationTImpl numericImplementationT = new NumericImplementationTImpl();
        return numericImplementationT;
    }

    @Override
    public OneDImplementationType createOneDImplementationType() {
        OneDImplementationTypeImpl oneDImplementationType = new OneDImplementationTypeImpl();
        return oneDImplementationType;
    }

    @Override
    public OptionT createOptionT() {
        OptionTImpl optionT = new OptionTImpl();
        return optionT;
    }

    @Override
    public PointT createPointT() {
        PointTImpl pointT = new PointTImpl();
        return pointT;
    }

    @Override
    public PrimitiveImplementationT createPrimitiveImplementationT() {
        PrimitiveImplementationTImpl primitiveImplementationT = new PrimitiveImplementationTImpl();
        return primitiveImplementationT;
    }

    @Override
    public ResourceImplementationT createResourceImplementationT() {
        ResourceImplementationTImpl resourceImplementationT = new ResourceImplementationTImpl();
        return resourceImplementationT;
    }

    @Override
    public ResourceImplementationType createResourceImplementationType() {
        ResourceImplementationTypeImpl resourceImplementationType = new ResourceImplementationTypeImpl();
        return resourceImplementationType;
    }

    @Override
    public ScalarImplementationT createScalarImplementationT() {
        ScalarImplementationTImpl scalarImplementationT = new ScalarImplementationTImpl();
        return scalarImplementationT;
    }

    @Override
    public SizeT createSizeT() {
        SizeTImpl sizeT = new SizeTImpl();
        return sizeT;
    }

    @Override
    public TemplateImplementationT createTemplateImplementationT() {
        TemplateImplementationTImpl templateImplementationT = new TemplateImplementationTImpl();
        return templateImplementationT;
    }

    @Override
    public TimeStampT createTimeStampT() {
        TimeStampTImpl timeStampT = new TimeStampTImpl();
        return timeStampT;
    }

    @Override
    public TwoDImplementationType createTwoDImplementationType() {
        TwoDImplementationTypeImpl twoDImplementationType = new TwoDImplementationTypeImpl();
        return twoDImplementationType;
    }

    @Override
    public ViewType createViewType() {
        ViewTypeImpl viewType = new ViewTypeImpl();
        return viewType;
    }

    public CacheLockingType createCacheLockingTypeFromString(EDataType eDataType, String initialValue) {
        CacheLockingType result = CacheLockingType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCacheLockingTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public LimitOverflowType createLimitOverflowTypeFromString(EDataType eDataType, String initialValue) {
        LimitOverflowType result = LimitOverflowType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertLimitOverflowTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public MasterType createMasterTypeFromString(EDataType eDataType, String initialValue) {
        MasterType result = MasterType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMasterTypeToString(EDataType eDataType, Object instanceValue) {
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

    public CacheLockingType createCacheLockingTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createCacheLockingTypeFromString((EDataType)ComponentImplementationPackage.Literals.CACHE_LOCKING_TYPE, initialValue);
    }

    public String convertCacheLockingTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertCacheLockingTypeToString((EDataType)ComponentImplementationPackage.Literals.CACHE_LOCKING_TYPE, instanceValue);
    }

    public LimitOverflowType createLimitOverflowTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createLimitOverflowTypeFromString((EDataType)ComponentImplementationPackage.Literals.LIMIT_OVERFLOW_TYPE, initialValue);
    }

    public String convertLimitOverflowTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertLimitOverflowTypeToString((EDataType)ComponentImplementationPackage.Literals.LIMIT_OVERFLOW_TYPE, instanceValue);
    }

    public MasterType createMasterTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createMasterTypeFromString((EDataType)ComponentImplementationPackage.Literals.MASTER_TYPE, initialValue);
    }

    public String convertMasterTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertMasterTypeToString((EDataType)ComponentImplementationPackage.Literals.MASTER_TYPE, instanceValue);
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
            result = this.createNumberOrFractionMember1FromString(ComponentImplementationPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, initialValue);
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
        if (ComponentImplementationPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(instanceValue)) {
            try {
                value = this.convertNumberOrFractionMember1ToString(ComponentImplementationPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, instanceValue);
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
            result = this.createNzqrMember2FromString(ComponentImplementationPackage.Literals.NZQR_MEMBER2, initialValue);
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
        if (ComponentImplementationPackage.Literals.NZQR_MEMBER2.isInstance(instanceValue)) {
            try {
                value = this.convertNzqrMember2ToString(ComponentImplementationPackage.Literals.NZQR_MEMBER2, instanceValue);
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
        return this.createTypeTypeFromString((EDataType)ComponentImplementationPackage.Literals.TYPE_TYPE, initialValue);
    }

    public String convertTypeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeTypeToString((EDataType)ComponentImplementationPackage.Literals.TYPE_TYPE, instanceValue);
    }

    @Override
    public ComponentImplementationPackage getComponentImplementationPackage() {
        return (ComponentImplementationPackage)this.getEPackage();
    }

    @Deprecated
    public static ComponentImplementationPackage getPackage() {
        return ComponentImplementationPackage.eINSTANCE;
    }
}

