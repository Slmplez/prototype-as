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
 */
package autosar40.commonstructure.filter.impl;

import autosar40.commonstructure.filter.DataFilter;
import autosar40.commonstructure.filter.DataFilterTypeEnum;
import autosar40.commonstructure.filter.FilterFactory;
import autosar40.commonstructure.filter.FilterPackage;
import autosar40.commonstructure.filter.impl.DataFilterImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class FilterFactoryImpl
extends EFactoryImpl
implements FilterFactory {
    public static FilterFactory init() {
        try {
            FilterFactory theFilterFactory = (FilterFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/f");
            if (theFilterFactory != null) {
                return theFilterFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new FilterFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createDataFilter();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createDataFilterTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertDataFilterTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public DataFilter createDataFilter() {
        DataFilterImpl dataFilter = new DataFilterImpl();
        return dataFilter;
    }

    public DataFilterTypeEnum createDataFilterTypeEnumFromString(EDataType eDataType, String initialValue) {
        DataFilterTypeEnum result = DataFilterTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDataFilterTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public FilterPackage getFilterPackage() {
        return (FilterPackage)this.getEPackage();
    }

    @Deprecated
    public static FilterPackage getPackage() {
        return FilterPackage.eINSTANCE;
    }
}

