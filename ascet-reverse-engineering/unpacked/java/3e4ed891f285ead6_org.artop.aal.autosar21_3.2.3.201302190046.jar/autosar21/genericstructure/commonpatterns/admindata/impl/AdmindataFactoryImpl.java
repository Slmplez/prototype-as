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
package autosar21.genericstructure.commonpatterns.admindata.impl;

import autosar21.genericstructure.commonpatterns.admindata.AdminData;
import autosar21.genericstructure.commonpatterns.admindata.AdmindataFactory;
import autosar21.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar21.genericstructure.commonpatterns.admindata.CompanyRevisionInfo;
import autosar21.genericstructure.commonpatterns.admindata.CompanySpecificInfo;
import autosar21.genericstructure.commonpatterns.admindata.DocRevision;
import autosar21.genericstructure.commonpatterns.admindata.Modification;
import autosar21.genericstructure.commonpatterns.admindata.TypeEnum;
import autosar21.genericstructure.commonpatterns.admindata.impl.AdminDataImpl;
import autosar21.genericstructure.commonpatterns.admindata.impl.CompanyRevisionInfoImpl;
import autosar21.genericstructure.commonpatterns.admindata.impl.CompanySpecificInfoImpl;
import autosar21.genericstructure.commonpatterns.admindata.impl.DocRevisionImpl;
import autosar21.genericstructure.commonpatterns.admindata.impl.ModificationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class AdmindataFactoryImpl
extends EFactoryImpl
implements AdmindataFactory {
    public static AdmindataFactory init() {
        try {
            AdmindataFactory theAdmindataFactory = (AdmindataFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/gs/cp/ad");
            if (theAdmindataFactory != null) {
                return theAdmindataFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new AdmindataFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAdminData();
            }
            case 1: {
                return this.createDocRevision();
            }
            case 2: {
                return this.createModification();
            }
            case 3: {
                return this.createCompanyRevisionInfo();
            }
            case 4: {
                return this.createCompanySpecificInfo();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.createTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.convertTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public AdminData createAdminData() {
        AdminDataImpl adminData = new AdminDataImpl();
        return adminData;
    }

    public DocRevision createDocRevision() {
        DocRevisionImpl docRevision = new DocRevisionImpl();
        return docRevision;
    }

    public Modification createModification() {
        ModificationImpl modification = new ModificationImpl();
        return modification;
    }

    public CompanyRevisionInfo createCompanyRevisionInfo() {
        CompanyRevisionInfoImpl companyRevisionInfo = new CompanyRevisionInfoImpl();
        return companyRevisionInfo;
    }

    public CompanySpecificInfo createCompanySpecificInfo() {
        CompanySpecificInfoImpl companySpecificInfo = new CompanySpecificInfoImpl();
        return companySpecificInfo;
    }

    public TypeEnum createTypeEnumFromString(EDataType eDataType, String initialValue) {
        TypeEnum result = TypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public AdmindataPackage getAdmindataPackage() {
        return (AdmindataPackage)this.getEPackage();
    }

    @Deprecated
    public static AdmindataPackage getPackage() {
        return AdmindataPackage.eINSTANCE;
    }
}

