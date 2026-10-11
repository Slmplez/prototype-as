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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.ChapterEnumBreak;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.KeepWithPreviousEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.PaginationandviewFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.PaginationandviewPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class PaginationandviewFactoryImpl
extends EFactoryImpl
implements PaginationandviewFactory {
    public static PaginationandviewFactory init() {
        try {
            PaginationandviewFactory thePaginationandviewFactory = (PaginationandviewFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/pav");
            if (thePaginationandviewFactory != null) {
                return thePaginationandviewFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new PaginationandviewFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.createChapterEnumBreakFromString(eDataType, initialValue);
            }
            case 3: {
                return this.createKeepWithPreviousEnumFromString(eDataType, initialValue);
            }
            case 4: {
                return this.createViewTokensFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.convertChapterEnumBreakToString(eDataType, instanceValue);
            }
            case 3: {
                return this.convertKeepWithPreviousEnumToString(eDataType, instanceValue);
            }
            case 4: {
                return this.convertViewTokensToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ChapterEnumBreak createChapterEnumBreakFromString(EDataType eDataType, String initialValue) {
        ChapterEnumBreak result = ChapterEnumBreak.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertChapterEnumBreakToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public KeepWithPreviousEnum createKeepWithPreviousEnumFromString(EDataType eDataType, String initialValue) {
        KeepWithPreviousEnum result = KeepWithPreviousEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertKeepWithPreviousEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public String createViewTokensFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertViewTokensToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public PaginationandviewPackage getPaginationandviewPackage() {
        return (PaginationandviewPackage)this.getEPackage();
    }

    @Deprecated
    public static PaginationandviewPackage getPackage() {
        return PaginationandviewPackage.eINSTANCE;
    }
}

