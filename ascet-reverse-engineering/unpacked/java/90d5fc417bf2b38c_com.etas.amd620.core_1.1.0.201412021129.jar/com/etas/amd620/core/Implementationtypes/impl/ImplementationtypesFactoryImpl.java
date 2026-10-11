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
package com.etas.amd620.core.Implementationtypes.impl;

import com.etas.amd620.core.Implementationtypes.ColorT;
import com.etas.amd620.core.Implementationtypes.DocumentRoot;
import com.etas.amd620.core.Implementationtypes.FileReferenceT;
import com.etas.amd620.core.Implementationtypes.FormattedTextT;
import com.etas.amd620.core.Implementationtypes.GenericDataT;
import com.etas.amd620.core.Implementationtypes.IconT;
import com.etas.amd620.core.Implementationtypes.ImplementationTypeType;
import com.etas.amd620.core.Implementationtypes.ImplementationTypesType;
import com.etas.amd620.core.Implementationtypes.ImplementationtypesFactory;
import com.etas.amd620.core.Implementationtypes.ImplementationtypesPackage;
import com.etas.amd620.core.Implementationtypes.IntervalT;
import com.etas.amd620.core.Implementationtypes.ItemRefT;
import com.etas.amd620.core.Implementationtypes.NoteType;
import com.etas.amd620.core.Implementationtypes.NotesT;
import com.etas.amd620.core.Implementationtypes.OptionT;
import com.etas.amd620.core.Implementationtypes.PointT;
import com.etas.amd620.core.Implementationtypes.SizeT;
import com.etas.amd620.core.Implementationtypes.TimeStampT;
import com.etas.amd620.core.Implementationtypes.TypeType;
import com.etas.amd620.core.Implementationtypes.ViewType;
import com.etas.amd620.core.Implementationtypes.impl.ColorTImpl;
import com.etas.amd620.core.Implementationtypes.impl.DocumentRootImpl;
import com.etas.amd620.core.Implementationtypes.impl.FileReferenceTImpl;
import com.etas.amd620.core.Implementationtypes.impl.FormattedTextTImpl;
import com.etas.amd620.core.Implementationtypes.impl.GenericDataTImpl;
import com.etas.amd620.core.Implementationtypes.impl.IconTImpl;
import com.etas.amd620.core.Implementationtypes.impl.ImplementationTypeTypeImpl;
import com.etas.amd620.core.Implementationtypes.impl.ImplementationTypesTypeImpl;
import com.etas.amd620.core.Implementationtypes.impl.IntervalTImpl;
import com.etas.amd620.core.Implementationtypes.impl.ItemRefTImpl;
import com.etas.amd620.core.Implementationtypes.impl.NoteTypeImpl;
import com.etas.amd620.core.Implementationtypes.impl.NotesTImpl;
import com.etas.amd620.core.Implementationtypes.impl.OptionTImpl;
import com.etas.amd620.core.Implementationtypes.impl.PointTImpl;
import com.etas.amd620.core.Implementationtypes.impl.SizeTImpl;
import com.etas.amd620.core.Implementationtypes.impl.TimeStampTImpl;
import com.etas.amd620.core.Implementationtypes.impl.ViewTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.util.Diagnostician;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

public class ImplementationtypesFactoryImpl
extends EFactoryImpl
implements ImplementationtypesFactory {
    public static ImplementationtypesFactory init() {
        try {
            ImplementationtypesFactory theImplementationtypesFactory = (ImplementationtypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.etas.com/ascet/amd/620/implementationtypes");
            if (theImplementationtypesFactory != null) {
                return theImplementationtypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ImplementationtypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createColorT();
            }
            case 1: {
                return this.createDocumentRoot();
            }
            case 2: {
                return this.createFileReferenceT();
            }
            case 3: {
                return this.createFormattedTextT();
            }
            case 4: {
                return this.createGenericDataT();
            }
            case 5: {
                return this.createIconT();
            }
            case 6: {
                return this.createImplementationTypesType();
            }
            case 7: {
                return this.createImplementationTypeType();
            }
            case 8: {
                return this.createIntervalT();
            }
            case 9: {
                return this.createItemRefT();
            }
            case 10: {
                return this.createNotesT();
            }
            case 11: {
                return this.createNoteType();
            }
            case 12: {
                return this.createOptionT();
            }
            case 13: {
                return this.createPointT();
            }
            case 14: {
                return this.createSizeT();
            }
            case 15: {
                return this.createTimeStampT();
            }
            case 16: {
                return this.createViewType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 17: {
                return this.createTypeTypeFromString(eDataType, initialValue);
            }
            case 18: {
                return this.createNumberOrFractionFromString(eDataType, initialValue);
            }
            case 19: {
                return this.createNumberOrFractionMember1FromString(eDataType, initialValue);
            }
            case 20: {
                return this.createNzqrFromString(eDataType, initialValue);
            }
            case 21: {
                return this.createNzqrMember2FromString(eDataType, initialValue);
            }
            case 22: {
                return this.createOIDFromString(eDataType, initialValue);
            }
            case 23: {
                return this.createTypeTypeObjectFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 17: {
                return this.convertTypeTypeToString(eDataType, instanceValue);
            }
            case 18: {
                return this.convertNumberOrFractionToString(eDataType, instanceValue);
            }
            case 19: {
                return this.convertNumberOrFractionMember1ToString(eDataType, instanceValue);
            }
            case 20: {
                return this.convertNzqrToString(eDataType, instanceValue);
            }
            case 21: {
                return this.convertNzqrMember2ToString(eDataType, instanceValue);
            }
            case 22: {
                return this.convertOIDToString(eDataType, instanceValue);
            }
            case 23: {
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
    public DocumentRoot createDocumentRoot() {
        DocumentRootImpl documentRoot = new DocumentRootImpl();
        return documentRoot;
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
    public ImplementationTypesType createImplementationTypesType() {
        ImplementationTypesTypeImpl implementationTypesType = new ImplementationTypesTypeImpl();
        return implementationTypesType;
    }

    @Override
    public ImplementationTypeType createImplementationTypeType() {
        ImplementationTypeTypeImpl implementationTypeType = new ImplementationTypeTypeImpl();
        return implementationTypeType;
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
    public ViewType createViewType() {
        ViewTypeImpl viewType = new ViewTypeImpl();
        return viewType;
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
            result = this.createNumberOrFractionMember1FromString(ImplementationtypesPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, initialValue);
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
        if (ImplementationtypesPackage.Literals.NUMBER_OR_FRACTION_MEMBER1.isInstance(instanceValue)) {
            try {
                value = this.convertNumberOrFractionMember1ToString(ImplementationtypesPackage.Literals.NUMBER_OR_FRACTION_MEMBER1, instanceValue);
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
            result = this.createNzqrMember2FromString(ImplementationtypesPackage.Literals.NZQR_MEMBER2, initialValue);
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
        if (ImplementationtypesPackage.Literals.NZQR_MEMBER2.isInstance(instanceValue)) {
            try {
                value = this.convertNzqrMember2ToString(ImplementationtypesPackage.Literals.NZQR_MEMBER2, instanceValue);
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
        return this.createTypeTypeFromString((EDataType)ImplementationtypesPackage.Literals.TYPE_TYPE, initialValue);
    }

    public String convertTypeTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertTypeTypeToString((EDataType)ImplementationtypesPackage.Literals.TYPE_TYPE, instanceValue);
    }

    @Override
    public ImplementationtypesPackage getImplementationtypesPackage() {
        return (ImplementationtypesPackage)this.getEPackage();
    }

    @Deprecated
    public static ImplementationtypesPackage getPackage() {
        return ImplementationtypesPackage.eINSTANCE;
    }
}

