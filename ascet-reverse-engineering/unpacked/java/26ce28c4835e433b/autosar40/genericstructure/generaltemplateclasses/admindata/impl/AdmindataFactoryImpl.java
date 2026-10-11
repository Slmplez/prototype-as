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
package autosar40.genericstructure.generaltemplateclasses.admindata.impl;

import autosar40.genericstructure.generaltemplateclasses.admindata.AdminData;
import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataFactory;
import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataPackage;
import autosar40.genericstructure.generaltemplateclasses.admindata.DocRevision;
import autosar40.genericstructure.generaltemplateclasses.admindata.Modification;
import autosar40.genericstructure.generaltemplateclasses.admindata.ModificationTypeEnum;
import autosar40.genericstructure.generaltemplateclasses.admindata.impl.AdminDataImpl;
import autosar40.genericstructure.generaltemplateclasses.admindata.impl.DocRevisionImpl;
import autosar40.genericstructure.generaltemplateclasses.admindata.impl.ModificationImpl;
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
            AdmindataFactory theAdmindataFactory = (AdmindataFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ad");
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
                return this.createDocRevision();
            }
            case 1: {
                return this.createModification();
            }
            case 2: {
                return this.createAdminData();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.createModificationTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.convertModificationTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public DocRevision createDocRevision() {
        DocRevisionImpl docRevision = new DocRevisionImpl();
        return docRevision;
    }

    public Modification createModification() {
        ModificationImpl modification = new ModificationImpl();
        return modification;
    }

    public AdminData createAdminData() {
        AdminDataImpl adminData = new AdminDataImpl();
        return adminData;
    }

    public ModificationTypeEnum createModificationTypeEnumFromString(EDataType eDataType, String initialValue) {
        ModificationTypeEnum result = ModificationTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertModificationTypeEnumToString(EDataType eDataType, Object instanceValue) {
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

